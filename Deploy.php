<?php
/**
 * Created by PhpStorm.
 * User: henno
 * Date: 11.08.15
 * Time: 13:59
 */

define('BUF_SIZ', 1024);        # max buffer size
define('FD_WRITE', 0);        # stdin
define('FD_READ', 1);        # stdout
define('FD_ERR', 2);        # stderr

class Deploy
{
    private $project_members;

    function __construct($conf)
    {
        // Convert emoji from \x escape sequence to quoted printable, adding a non-breaking space at the end
        $emoji = isset($conf->emoji) ? str_replace('\x', '=', $conf->emoji) . "=C2=A0" : '';

        // For execute()
        $this->project_members = $conf->project_members;

        //$this->remove_previous_uploads_folder_backup($conf->project_name);
        //$this->backup_uploads_folder($conf->project_folder, $conf->project_name);
        //$this->delete_old_project_folder($conf->project_folder); //TODO:USE it
        if (file_exists($conf->project_folder)) {
            $this->checkout_project($conf->project_folder);
        } else {
            $this->clone_project($conf->project_folder);
        }
        //$this->recreate_uploads($conf->project_name, $conf->project_folder);
        //$this->modify_config_php($conf->config_folder, $conf->db_host, $conf->db_user, $conf->db_pass, $conf->db_base);
        $this->send_notification_email($emoji, $conf->project_folder, $conf->project_name, $conf->project_members, $conf->admin_email, $conf->changelog_link);

    }

    private function remove_previous_uploads_folder_backup($project_name)
    {
        echo "Checking if /tmp/deployments/$project_name/uploads exists. ";
        if (file_exists("/tmp/deployments/$project_name/uploads")) {
            echo "It does. ";
            $this->execute("Removing previous uploads folder backup /tmp/deployments/$project_name/uploads", "rm -rf /tmp/deployments/$project_name/uploads");
        } else {
            echo "It doesn't.";
        }
    }

    private function execute($msg, $cmd = null)
    {

        $cmd = empty($cmd) ? $msg : $cmd;
        echo "\n$msg...\n $cmd\n";
        $exit_code = $this->proc_exec($cmd);

        if ($exit_code > 0) {

            $br = '<br><br>';
            $data = '';
            $from = 'valdur.kana@ikt.khk.ee'; // sender
            $headers = "From: " . $from . "\r\n";
            $headers .= "MIME-Version: 1.0" . "\r\n";
            $headers .= "Content-type:text/html;charset=utf-8" . "\r\n";
            $subject = 'Deploy feilis';

            // Get commit metadata from POST body
            if ($payload = $this->get_payload()) {
                $data = print_r($payload, 1);
            }

            // Compose message body
            $body = "Feilinud etapp: $msg $br Feilinud käsurida: $br" . nl2br(ob_get_contents()) . "$br $data";
            $body = wordwrap($body, 70);
/*
            // send mail
            foreach ($this->project_members as $email) {
                mail($email, $subject, $body, $headers);
            }
 */
            exit("$msg failed. Aborting.");
        }
    }

    private function proc_exec($cmd)
    {
        $stderr = '';
        $first_exitcode = 0;
        $descriptor_spec = array(
            0 => array("pipe", "r"),
            1 => array("pipe", "w"),
            2 => array("pipe", "w")
        );

        $ptr = proc_open($cmd, $descriptor_spec, $pipes, NULL, $_ENV);
        if (!is_resource($ptr))
            return false;

        while (($stdout = fgets($pipes[FD_READ], BUF_SIZ)) != NULL
            || ($stderr = fgets($pipes[FD_ERR], BUF_SIZ)) != NULL) {
            if (!isset($flag)) {
                $p_status = proc_get_status($ptr);
                $first_exitcode = $p_status["exitcode"];
                $flag = true;
            }
            if (strlen($stdout))
                echo $stdout;
            if (strlen($stderr))
                echo $stderr;
        }

        foreach ($pipes as $pipe)
            fclose($pipe);

        /* Get the expected *exit* code to return the value */
        $p_status = proc_get_status($ptr);
        if (!strlen($p_status["exitcode"]) || $p_status["running"]) {
            /* we can trust the ret val of proc_close() */
            if ($p_status["running"])
                proc_terminate($ptr);
            $ret = proc_close($ptr);
        } else {
            if ((($first_exitcode + 256) % 256) == 255
                && (($p_status["exitcode"] + 256) % 256) != 255
            )
                $ret = $p_status["exitcode"];
            elseif (!strlen($first_exitcode))
                $ret = $p_status["exitcode"];
            elseif ((($first_exitcode + 256) % 256) != 255)
                $ret = $first_exitcode;
            else
                $ret = 0; /* we "deduce" an EXIT_SUCCESS ;) */
            proc_close($ptr);
        }

        return ($ret + 256) % 256;
    }

    private function get_payload()
    {

        // Read POST request body
        $input_stream = file_get_contents('php://input');

        // Assume it is JSON-encoded data and return it
        return json_decode($input_stream);

    }

    private function backup_uploads_folder($project_folder, $project_name)
    {
        if (file_exists("$project_folder/uploads")) {
            $this->execute("Copying uploads folder $project_folder/uploads to /tmp/deployments/$project_name/uploads",
                "mkdir -p /tmp/deployments/$project_name && cp -r $project_folder/uploads /tmp/deployments/$project_name");
        }
    }

    private function delete_old_project_folder($project_folder)
    {
        if (file_exists($project_folder)) {
            $this->execute("Deleting old project dir $project_folder", "rm -fr $project_folder");
        }
    }

    function clone_project($git_url, $pf)
    {
        $this->execute('Cloning project from Github', "git clone --depth=2 $git_url $pf");
    }

    function checkout_project($pf)
    {
        $this->execute('Checkouting project', "cd $pf && git checkout .");
    }

    function recreate_uploads($project_name, $project_folder)
    {
        echo "Checking if /tmp/deployments/$project_name/uploads exists. ";
        if (file_exists("/tmp/deployments/$project_name/uploads")) {
            echo "It does. ";
            $this->execute("Recreating uploads folder",
                "mkdir -p $project_folder/uploads 2>&1 >/dev/null");

            $this->execute("Restoring uploads from /tmp/deployments/$project_name/uploads to $project_name/uploads",
                "cp -r /tmp/deployments/$project_name/uploads/* $project_folder/uploads/");
        } else {
            echo "It doesn't. Skipping recreate uploads folder procedure.";
        }
    }

    function modify_config_php($config_folder, $db_host, $db_user, $db_pass, $db_base)
    {
        $this->execute('Making a copy of config.sample.php to config.php', "cp $config_folder/config.sample.php $config_folder/config.php");
        $this->execute('Replacing DATABASE_HOSTNAME in config.php', "sed \"s/'DATABASE_HOSTNAME', 'root'/'DATABASE_HOSTNAME', '$db_host'/g\" -i $config_folder/config.php");
        $this->execute('Replacing DATABASE_USERNAME in config.php', "sed \"s/'DATABASE_USERNAME', 'root'/'DATABASE_USERNAME', '$db_user'/g\" -i $config_folder/config.php");
        $this->execute('Replacing DATABASE_PASSWORD in config.php', "sed \"s/'DATABASE_PASSWORD', '[^']*'/'DATABASE_PASSWORD', '$db_pass'/g\" -i $config_folder/config.php");
        $this->execute('Replacing DATABASE_DATABASE in config.php', "sed \"s/'DATABASE_DATABASE', PROJECT_NAME/'DATABASE_DATABASE', '$db_base'/g\" -i $config_folder/config.php");
        echo "\n\n";
    }

    function send_notification_email($emoji, $pf, $project_name, $project_members, $admin_email, $changelog_link)
    {

        // Create a new (nested) output buffer
        ob_start();

        // Get last commit data
        $this->execute("Project: $project_name", "cd $pf && git log -1 2>&1");

        // Get commit metadata from POST body
        $payload = $this->get_payload();

        // If it exists, extract branch name and if it is master, send emails to project members
        if (!empty($payload) or true) {

            // Capture output into $output
            $output = trim(ob_get_flush());

            // Remove unnecessary stuff
            $output = preg_replace('/^\n/m', "\n", $output);
            $output = preg_replace('/\.\.\.\n/m', "\n", $output);
            $output = preg_replace('/cd .*\n/m', '', $output);
            $output = preg_replace('/^ commit .*\n/m', '', $output);
            $output = preg_replace('/ 2015 \+0300/m', '', $output);

            // Add a link to project at the end
            $output .= "\n $changelog_link";

            // Get branch name
            $branch_name = isset($payload->push->changes[0]->new->name) ? $payload->push->changes[0]->new->name : 'master';

            // Send emails if branch is master
            if ($branch_name == 'master') {

                foreach ($project_members as $email) {

                    $subject = "=?UTF-8?Q?$emoji";
                    $subject .= quoted_printable_encode("Projektist $project_name laaditi üles uus versioon") . "?=";

                    $headers = "From: $admin_email\r\n";
                    $headers .= "Reply-To: $admin_email\r\n";
                    $headers .= "X-Mailer: PHP/" . phpversion();
/*
                    mail($email, $subject, $output, $headers, "-f$admin_email");
 */
                }
            }
        }
    }
}

