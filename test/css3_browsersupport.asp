
<!DOCTYPE html>
<html lang="en-US">
<head>

<title>CSS3 Reference</title>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="Keywords" content="HTML,CSS,JavaScript,SQL,PHP,jQuery,ASP,XML,DOM,Web development,W3C,tutorials,programming,training,learning,quiz,primer,lessons,references,examples,source code,colors,demos,tips">
<meta name="Description" content="Well organized and easy to understand Web bulding tutorials with lots of examples of how to use HTML, CSS, JavaScript, SQL, PHP, and XML.">
<link rel="icon" href="/favicon.ico" type="image/x-icon">
<link rel="stylesheet" href="/lib/w3.css">

<script>
(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
})(window,document,'script','//www.google-analytics.com/analytics.js','ga');
ga('create', 'UA-3855518-1', 'auto');
ga('require', 'displayfeatures');
ga('send', 'pageview');
</script>

<script type='text/javascript'>
var googletag = googletag || {};
googletag.cmd = googletag.cmd || [];
(function() {
var gads = document.createElement('script');
gads.async = true;
gads.type = 'text/javascript';
var useSSL = 'https:' == document.location.protocol;
gads.src = (useSSL ? 'https:' : 'http:') + 
'//www.googletagservices.com/tag/js/gpt.js';
var node = document.getElementsByTagName('script')[0];
node.parentNode.insertBefore(gads, node);
})();
</script>

<script type='text/javascript'>
// GPT slots
var gptAdSlots = [];
googletag.cmd.push(function() {
var leaderMapping = googletag.sizeMapping().
// Mobile ad
addSize([0, 0], [320, 50]). 
// Vertical Tablet ad
addSize([480, 0], [468, 60]). 
// Horizontal Tablet
addSize([700, 0], [728, 90]).
// Desktop and bigger ad
addSize([1200, 0], [728, 90]).build();   
gptAdSlots[0] = googletag.defineSlot('/16833175/MainLeaderboard', [728, 90], 'div-gpt-ad-1422003450156-2').   
defineSizeMapping(leaderMapping).addService(googletag.pubads());
var skyMapping = googletag.sizeMapping().
// Mobile ad
addSize([0, 0], [320, 50]). 
// Tablet ad
addSize([975, 0], [120, 600]). 
// Desktop
addSize([1100, 0], [160, 600]).   
// Large Desktop
addSize([1675, 0], [[160, 600], [300, 600]]).build();   
gptAdSlots[1] = googletag.defineSlot('/16833175/WideSkyScraper', [[160, 600], [300, 600]], 'div-gpt-ad-1422003450156-5').
defineSizeMapping(skyMapping).addService(googletag.pubads());
var bmrMapping = googletag.sizeMapping().
// Smaller
addSize([0, 0], [300, 250]).    
// Large Desktop
addSize([1200, 0], [[300, 250], [728, 280]]).build();
gptAdSlots[2] = googletag.defineSlot('/16833175/BottomMediumRectangle', [[300, 250], [728, 280]], 'div-gpt-ad-1422003450156-0').
defineSizeMapping(bmrMapping).setCollapseEmptyDiv(true).addService(googletag.pubads());
gptAdSlots[3] = googletag.defineSlot('/16833175/RightBottomMediumRectangle', [300, 250], 'div-gpt-ad-1422003450156-3').addService(googletag.pubads());
googletag.pubads().setTargeting("content","cssref");
googletag.enableServices();
});
</script>
<link rel="stylesheet" type="text/css" href="/stdtheme.css" />
<style>
table.bsReference td {
vertical-align:middle;
background-position:center;
background-repeat:no-repeat;
text-align:right;
font-size:10px;
}

table.bsReference td.bsProperty {
white-space:nowrap;
text-align:left;
font-size:14px;
}
table.bsReference .bsIE			{width:100px;background-image:url('/images/compatible_ie2020.gif');}
table.bsReference .bsFirefox	{width:100px;background-image:url('/images/compatible_firefox2020.gif')}
table.bsReference .bsChrome		{width:100px;background-image:url('/images/compatible_chrome2020.gif');}
table.bsReference .bsSafari		{width:100px;background-image:url('/images/compatible_safari2020.gif');}
table.bsReference .bsOpera		{width:100px;background-image:url('/images/compatible_opera2020.gif')}
table.bsReference .bsNoIE		{width:100px;}
table.bsReference .bsNoFirefox	{width:100px;}
table.bsReference .bsNoChrome	{width:100px;}
table.bsReference .bsNoSafari	{width:100px;}
table.bsReference .bsNoOpera	{width:100px;}
table.bsReference .bsPreIE		{width:100px;background-image:url('/images/precompatible_ie5920.gif');}
table.bsReference .bsPreFirefox	{width:100px;background-image:url('/images/precompatible_firefox5920.gif');}
table.bsReference .bsPreChrome	{width:100px;background-image:url('/images/precompatible_chrome5920.gif');}
table.bsReference .bsPreSafari	{width:100px;background-image:url('/images/precompatible_safari5920.gif');}
table.bsReference .bsPreOpera	{width:100px;background-image:url('/images/precompatible_opera5920.gif');}
table.bsReference .bsPreXVOpera	{width:100px;background-image:url('/images/precompatible_xv_opera5920.gif');}
table.bsReference td.bsExp		{width:400px;text-align:left;font-size:12px;}
table.bsReference td.bsExp span	{font-family:courier new;white-space:nowrap;font-size:13px;}
table.bsReference td.bsExpIcon	{width:50px;}
</style>
</head>
<body>
<div class='w3-container top'>
<a href='http://www.w3schools.com'><img src='/images/w3schools.png' alt='W3Schools.com' class='img-responsive'></a>
<div class='w3-right toptext w3-wide'>THE WORLD'S LARGEST WEB DEVELOPER SITE</div></div>
<div class='w3-topnav w3-card-2 w3-slim topnav' id='topnav'>
<div style='overflow:auto;'>
<div style='float:left;width:50%;overflow:hidden;height:44px'>
<a href='javascript:void(0);' class='topnav-localicons w3-hide-large w3-left' onclick='open_menu()' title='Menu'>&#9776;</a>
<a href='/default.asp' class='topnav-icons fa fa-home w3-left' title='Home'></a>
<a href='/html/default.asp' class='w3-hide-small' title='HTML Tutorial'>HTML</a><a href='/css/default.asp' class='w3-hide-small' title='CSS Tutorial'>CSS</a><a href='/js/default.asp' class='w3-hide-small' title='JavaScript Tutorial'>JAVASCRIPT</a><a href='/sql/default.asp' class='w3-hide-small' title='SQL Tutorial'>SQL</a><a href='/php/default.asp' class='w3-hide-small' title='PHP Tutorial'>PHP</a><a href='/bootstrap/default.asp' class='w3-hide-small' title='Bootstrap Tutorial'>BOOTSTRAP</a><a href='/jquery/default.asp' class='w3-hide-small' title='jQuery Tutorial'>JQUERY</a><a href='/angular/default.asp' class='w3-hide-small' title='Angular Tutorial'>ANGULAR</a><a href='/xml/default.asp' class='w3-hide-small' title='XML Tutorial'>XML</a></div>
<div style='float:right;width:110px;overflow:hidden;height:44px;'>
<a href='javascript:void(0);' class='topnav-icons fa fa-search w3-right' onclick='w3_open_nav("search")' title='Search W3Schools'></a>
<a href='javascript:void(0);' class='topnav-icons fa fa-globe w3-right' onclick='openGoogleTranslate();w3_open_nav("translate")' title='Translate W3Schools'></a></div>
<div class='w3-hide-small' style='float:right;width:30%;overflow:hidden;height:44px;'>
<a id='topnavbtn_tutorials' href='javascript:void(0);' onclick='w3_open_nav("tutorials")' title='Tutorials'>TUTORIALS <i class='fa fa-caret-down'></i><i class='fa fa-caret-up' style='display:none'></i></a><a id='topnavbtn_references' href='javascript:void(0);' onclick='w3_open_nav("references")' title='References'>REFERENCES <i class='fa fa-caret-down'></i><i class='fa fa-caret-up' style='display:none'></i></a><a id='topnavbtn_examples' href='javascript:void(0);' onclick='w3_open_nav("examples")' title='Examples'>EXAMPLES <i class='fa fa-caret-down'></i><i class='fa fa-caret-up' style='display:none'></i></a><a href='/forum/default.asp'>FORUM</a></div></div>
<div id='nav_tutorials' class='w3-dropnav w3-light-grey w3-card-2 w3-center'></div>
<div id='nav_references' class='w3-dropnav w3-light-grey w3-card-2 w3-center'></div>
<div id='nav_examples' class='w3-dropnav w3-light-grey w3-card-2 w3-center'></div>
<div id='nav_translate' class='w3-dropnav w3-light-grey w3-card-2 w3-center'></div>
<div id='nav_search' class='w3-dropnav w3-light-grey w3-card-2 w3-center'></div></div>
<div class='w3-row w3-light-grey' id='belowtopnav'>
<div class='w3-col l2 m12 w3-slim' id='sidemenu'>
<div class='w3-light-grey' id='sidemenuinner'>
<a href='javascript:void(0)' onclick='close_menu()' class='w3-closebtn w3-hide-large w3-large' style='padding:3px 12px;'>&times;</a>
<h2 class="left"><span class="left_h2">CSS</span> Reference</h2>
<a target="_top" href="default.asp">CSS Reference</a>
<a target="_top" href="css_selectors.asp">CSS Selectors</a>
<a target="_top" href="css_ref_aural.asp">CSS Reference Aural</a>
<a target="_top" href="css_websafe_fonts.asp">CSS Web Safe Fonts</a>
<a target="_top" href="css_animatable.asp">CSS Animatable</a>
<a target="_top" href="css_units.asp">CSS Units</a>
<a target="_top" href="css_pxtoemconversion.asp">CSS PX-EM Converter</a>
<a target="_top" href="css_colors.asp">CSS Colors</a>
<a target="_top" href="css_colors_legal.asp">CSS Color Values</a>
<a target="_top" href="css_colornames.asp">CSS Color Names</a>
<a target="_top" href="css_colorsfull.asp">CSS Color HEX</a>
<a target="_top" href="css_colors_group.asp">CSS Color Groups</a>
<a target="_top" href="css3_browsersupport.asp">CSS3 Browser Support</a>
<br>

<div class="notranslate">

<h2 class="left"><span class="left_h2">CSS</span> Properties</h2>
<a target="_top" href="css3_pr_align-content.asp">align-content</a>
<a target="_top" href="css3_pr_align-items.asp">align-items</a>
<a target="_top" href="css3_pr_align-self.asp">align-self</a>
<a target="_top" href="css3_pr_all.asp">all</a>
<a target="_top" href="css3_pr_animation.asp">animation</a>
<a target="_top" href="css3_pr_animation-delay.asp">animation-delay</a>
<a target="_top" href="css3_pr_animation-direction.asp">animation-direction</a>
<a target="_top" href="css3_pr_animation-duration.asp">animation-duration</a>
<a target="_top" href="css3_pr_animation-fill-mode.asp">animation-fill-mode</a>
<a target="_top" href="css3_pr_animation-iteration-count.asp">animation-iteration-count</a>
<a target="_top" href="css3_pr_animation-name.asp">animation-name</a>
<a target="_top" href="css3_pr_animation-play-state.asp">animation-play-state</a>
<a target="_top" href="css3_pr_animation-timing-function.asp">animation-timing-function</a>

<a target="_top" href="css3_pr_backface-visibility.asp">backface-visibility</a>
<a target="_top" href="css3_pr_background.asp">background</a>
<a target="_top" href="pr_background-attachment.asp">background-attachment</a>
<a target="_top" href="pr_background-blend-mode.asp">background-blend-mode</a>
<a target="_top" href="css3_pr_background-clip.asp">background-clip</a>
<a target="_top" href="pr_background-color.asp">background-color</a>
<a target="_top" href="pr_background-image.asp">background-image</a>
<a target="_top" href="css3_pr_background-origin.asp">background-origin</a>
<a target="_top" href="pr_background-position.asp">background-position</a>
<a target="_top" href="pr_background-repeat.asp">background-repeat</a>
<a target="_top" href="css3_pr_background-size.asp">background-size</a>		
<a target="_top" href="pr_border.asp">border</a>
<a target="_top" href="pr_border-bottom.asp">border-bottom</a>
<a target="_top" href="pr_border-bottom_color.asp">border-bottom-color</a>
<a target="_top" href="css3_pr_border-bottom-left-radius.asp">border-bottom-left-radius</a>
<a target="_top" href="css3_pr_border-bottom-right-radius.asp">border-bottom-right-radius</a>		
<a target="_top" href="pr_border-bottom_style.asp">border-bottom-style</a>
<a target="_top" href="pr_border-bottom_width.asp">border-bottom-width</a>
<a target="_top" href="pr_border-collapse.asp">border-collapse</a>
<a target="_top" href="pr_border-color.asp">border-color</a>
<a target="_top" href="css3_pr_border-image.asp">border-image</a>		
<a target="_top" href="css3_pr_border-image-outset.asp">border-image-outset</a>		
<a target="_top" href="css3_pr_border-image-repeat.asp">border-image-repeat</a>				
<a target="_top" href="css3_pr_border-image-slice.asp">border-image-slice</a>				
<a target="_top" href="css3_pr_border-image-source.asp">border-image-source</a>				
<a target="_top" href="css3_pr_border-image-width.asp">border-image-width</a>				
<a target="_top" href="pr_border-left.asp">border-left</a>
<a target="_top" href="pr_border-left_color.asp">border-left-color</a>
<a target="_top" href="pr_border-left_style.asp">border-left-style</a>
<a target="_top" href="pr_border-left_width.asp">border-left-width</a>
<a target="_top" href="css3_pr_border-radius.asp">border-radius</a>				
<a target="_top" href="pr_border-right.asp">border-right</a>
<a target="_top" href="pr_border-right_color.asp">border-right-color</a>
<a target="_top" href="pr_border-right_style.asp">border-right-style</a>
<a target="_top" href="pr_border-right_width.asp">border-right-width</a>
<a target="_top" href="pr_border-spacing.asp">border-spacing</a>		
<a target="_top" href="pr_border-style.asp">border-style</a>
<a target="_top" href="pr_border-top.asp">border-top</a>
<a target="_top" href="pr_border-top_color.asp">border-top-color</a>
<a target="_top" href="css3_pr_border-top-left-radius.asp">border-top-left-radius</a>				
<a target="_top" href="css3_pr_border-top-right-radius.asp">border-top-right-radius</a>
<a target="_top" href="pr_border-top_style.asp">border-top-style</a>
<a target="_top" href="pr_border-top_width.asp">border-top-width</a>
<a target="_top" href="pr_border-width.asp">border-width</a>
<a target="_top" href="pr_pos_bottom.asp">bottom</a>
<a target="_top" href="css3_pr_box-shadow.asp">box-shadow</a>				
<a target="_top" href="css3_pr_box-sizing.asp">box-sizing</a>				

<a target="_top" href="pr_tab_caption-side.asp">caption-side</a>
<a target="_top" href="pr_class_clear.asp">clear</a>
<a target="_top" href="pr_pos_clip.asp">clip</a>
<a target="_top" href="pr_text_color.asp">color</a>
<a target="_top" href="css3_pr_column-count.asp">column-count</a>
<a target="_top" href="css3_pr_column-fill.asp">column-fill</a>
<a target="_top" href="css3_pr_column-gap.asp">column-gap</a>
<a target="_top" href="css3_pr_column-rule.asp">column-rule</a>
<a target="_top" href="css3_pr_column-rule-color.asp">column-rule-color</a>
<a target="_top" href="css3_pr_column-rule-style.asp">column-rule-style</a>
<a target="_top" href="css3_pr_column-rule-width.asp">column-rule-width</a>
<a target="_top" href="css3_pr_column-span.asp">column-span</a>
<a target="_top" href="css3_pr_column-width.asp">column-width</a>
<a target="_top" href="css3_pr_columns.asp">columns</a>
<a target="_top" href="pr_gen_content.asp">content</a>
<a target="_top" href="pr_gen_counter-increment.asp">counter-increment</a>
<a target="_top" href="pr_gen_counter-reset.asp">counter-reset</a>
<a target="_top" href="pr_class_cursor.asp">cursor</a>

<a target="_top" href="pr_text_direction.asp">direction</a>
<a target="_top" href="pr_class_display.asp">display</a>
<a target="_top" href="pr_tab_empty-cells.asp">empty-cells</a>
<a target="_top" href="css3_pr_filter.asp">filter</a>
<a target="_top" href="css3_pr_flex.asp">flex</a>
<a target="_top" href="css3_pr_flex-basis.asp">flex-basis</a>
<a target="_top" href="css3_pr_flex-direction.asp">flex-direction</a>
<a target="_top" href="css3_pr_flex-flow.asp">flex-flow</a>
<a target="_top" href="css3_pr_flex-grow.asp">flex-grow</a>
<a target="_top" href="css3_pr_flex-shrink.asp">flex-shrink</a>
<a target="_top" href="css3_pr_flex-wrap.asp">flex-wrap</a>
<a target="_top" href="pr_class_float.asp">float</a>
<a target="_top" href="pr_font_font.asp">font</a>
<a target="_top" href="css3_pr_font-face_rule.asp">@font-face</a>	
<a target="_top" href="pr_font_font-family.asp">font-family</a>
<a target="_top" href="pr_font_font-size.asp">font-size</a>
<a target="_top" href="css3_pr_font-size-adjust.asp">font-size-adjust</a>		
<a target="_top" href="css3_pr_font-stretch.asp">font-stretch</a>	
<a target="_top" href="pr_font_font-style.asp">font-style</a>
<a target="_top" href="pr_font_font-variant.asp">font-variant</a>
<a target="_top" href="pr_font_weight.asp">font-weight</a>
<a target="_top" href="css3_pr_hanging-punctuation.asp">hanging-punctuation</a>
<a target="_top" href="pr_dim_height.asp">height</a>
<a target="_top" href="css3_pr_justify-content.asp">justify-content</a>
<a target="_top" href="css3_pr_animation-keyframes.asp">@keyframes</a>
<a target="_top" href="pr_pos_left.asp">left</a>
<a target="_top" href="pr_text_letter-spacing.asp">letter-spacing</a>

<a target="_top" href="pr_dim_line-height.asp">line-height</a>
<a target="_top" href="pr_list-style.asp">list-style</a>
<a target="_top" href="pr_list-style-image.asp">list-style-image</a>
<a target="_top" href="pr_list-style-position.asp">list-style-position</a>
<a target="_top" href="pr_list-style-type.asp">list-style-type</a>

<a target="_top" href="pr_margin.asp">margin</a>
<a target="_top" href="pr_margin-bottom.asp">margin-bottom</a>
<a target="_top" href="pr_margin-left.asp">margin-left</a>
<a target="_top" href="pr_margin-right.asp">margin-right</a>
<a target="_top" href="pr_margin-top.asp">margin-top</a>
<a target="_top" href="pr_dim_max-height.asp">max-height</a>
<a target="_top" href="pr_dim_max-width.asp">max-width</a>
<a target="_top" href="css3_pr_mediaquery.asp">@media</a>
<a target="_top" href="pr_dim_min-height.asp">min-height</a>
<a target="_top" href="pr_dim_min-width.asp">min-width</a>

<a target="_top" href="css3_pr_nav-down.asp">nav-down</a>					
<a target="_top" href="css3_pr_nav-index.asp">nav-index</a>					
<a target="_top" href="css3_pr_nav-left.asp">nav-left</a>					
<a target="_top" href="css3_pr_nav-right.asp">nav-right</a>					
<a target="_top" href="css3_pr_nav-up.asp">nav-up</a>									

<a target="_top" href="css3_pr_opacity.asp">opacity</a>	
<a target="_top" href="css3_pr_order.asp">order</a>	
<a target="_top" href="pr_outline.asp">outline</a>
<a target="_top" href="pr_outline-color.asp">outline-color</a>
<a target="_top" href="css3_pr_outline-offset.asp">outline-offset</a>		
<a target="_top" href="pr_outline-style.asp">outline-style</a>
<a target="_top" href="pr_outline-width.asp">outline-width</a>
<a target="_top" href="pr_pos_overflow.asp">overflow</a>
<a target="_top" href="css3_pr_overflow-x.asp">overflow-x</a>		
<a target="_top" href="css3_pr_overflow-y.asp">overflow-y</a>			

<a target="_top" href="pr_padding.asp">padding</a>
<a target="_top" href="pr_padding-bottom.asp">padding-bottom</a>
<a target="_top" href="pr_padding-left.asp">padding-left</a>
<a target="_top" href="pr_padding-right.asp">padding-right</a>
<a target="_top" href="pr_padding-top.asp">padding-top</a>
<a target="_top" href="pr_print_pageba.asp">page-break-after</a>
<a target="_top" href="pr_print_pagebb.asp">page-break-before</a>
<a target="_top" href="pr_print_pagebi.asp">page-break-inside</a>
<a target="_top" href="css3_pr_perspective.asp">perspective</a>
<a target="_top" href="css3_pr_perspective-origin.asp">perspective-origin</a>
<a target="_top" href="pr_class_position.asp">position</a>
<a target="_top" href="pr_gen_quotes.asp">quotes</a>

<a target="_top" href="css3_pr_resize.asp">resize</a>			
<a target="_top" href="pr_pos_right.asp">right</a>

<a target="_top" href="css3_pr_tab-size.asp">tab-size</a>
<a target="_top" href="pr_tab_table-layout.asp">table-layout</a>
<a target="_top" href="pr_text_text-align.asp">text-align</a>
<a target="_top" href="css3_pr_text-align-last.asp">text-align-last</a>
<a target="_top" href="pr_text_text-decoration.asp">text-decoration</a>
<a target="_top" href="css3_pr_text-decoration-color.asp">text-decoration-color</a>
<a target="_top" href="css3_pr_text-decoration-line.asp">text-decoration-line</a>
<a target="_top" href="css3_pr_text-decoration-style.asp">text-decoration-style</a>
<a target="_top" href="pr_text_text-indent.asp">text-indent</a>
<a target="_top" href="css3_pr_text-justify.asp">text-justify</a>
<a target="_top" href="css3_pr_text-overflow.asp">text-overflow</a>		
<a target="_top" href="css3_pr_text-shadow.asp">text-shadow</a>	
<a target="_top" href="pr_text_text-transform.asp">text-transform</a>
<a target="_top" href="pr_pos_top.asp">top</a>

<a target="_top" href="css3_pr_transform.asp">transform</a>
<a target="_top" href="css3_pr_transform-origin.asp">transform-origin</a>
<a target="_top" href="css3_pr_transform-style.asp">transform-style</a>
<a target="_top" href="css3_pr_transition.asp">transition</a>
<a target="_top" href="css3_pr_transition-delay.asp">transition-delay</a>
<a target="_top" href="css3_pr_transition-duration.asp">transition-duration</a>
<a target="_top" href="css3_pr_transition-property.asp">transition-property</a>
<a target="_top" href="css3_pr_transition-timing-function.asp">transition-timing-function</a>

<a target="_top" href="pr_text_unicode-bidi.asp">unicode-bidi</a>	

<a target="_top" href="pr_pos_vertical-align.asp">vertical-align</a>
<a target="_top" href="pr_class_visibility.asp">visibility</a>

<a target="_top" href="pr_text_white-space.asp">white-space</a>
<a target="_top" href="pr_dim_width.asp">width</a>
<a target="_top" href="css3_pr_word-break.asp">word-break</a>		
<a target="_top" href="pr_text_word-spacing.asp">word-spacing</a>
<a target="_top" href="css3_pr_word-wrap.asp">word-wrap</a>		

<a target="_top" href="pr_pos_z-index.asp">z-index</a>
<br>
<br>

</div></div>&nbsp;</div>
<div class='w3-col l10 m12'>
<div class='w3-row w3-white'>
<div class='w3-col l10 m12' id='main'>
<div id='mainLeaderboard' style='overflow:hidden;'>
<!-- MainLeaderboard-->
<div id='div-gpt-ad-1422003450156-2'>
<script type='text/javascript'>googletag.cmd.push(function() { googletag.display('div-gpt-ad-1422003450156-2'); });</script>
</div></div>
<h1>CSS3 <span class="color_h1">Browser Support Reference</span></h1>
<div class="chapter">
<div class="prev"><a class="chapter" href="css_colors_group.asp">&laquo; Previous</a></div>
<div class="next"><a class="chapter" href="css3_pr_align-content.asp">Next &raquo;</a></div>
</div>
<hr>
<p class="intro"><img style="float:left;margin-right:6px" alt="Note" src="/images/icon_small_star.gif"> 
W3Schools' Browser support reference is tested regularly with all major browsers.</p>
<hr>

<h2>CSS3 Browser support</h2>
<p>The table below lists all CSS3 properties and their browser support:</p>

<div class="table-responsive">
<table class="w3-table-all bsReference">
	<tr>
	<th>Property</th>
    <th style="text-align:center;font-size:12px;">IE</th>
    <th style="text-align:center;font-size:12px;">Firefox</th>
    <th style="text-align:center;font-size:12px;">Chrome</th>
    <th style="text-align:center;font-size:12px;">Safari</th>
    <th style="text-align:center;font-size:12px;">Opera</th>
 	</tr>
	<tr>
    <td class="bsProperty"><a href="css3_pr_align-content.asp">align-content</a></td>
    <td class="bsIE">11</td>
    <td class="bsFirefox">28</td>
    <td class="bsChrome">21</td>
    <td class="bsSafari">9</td>
    <td class="bsOpera">12.1</td>
  	</tr>
	<tr>
    <td class="bsProperty"><a href="css3_pr_align-items.asp">align-items</a></td>
    <td class="bsIE">11</td>
    <td class="bsFirefox">20</td>
    <td class="bsChrome">21</td>
    <td class="bsSafari">9</td>
    <td class="bsOpera">12.1</td>
  	</tr>
	<tr>
    <td class="bsProperty"><a href="css3_pr_align-self.asp">align-self</a></td>
    <td class="bsIE">11</td>
    <td class="bsFirefox">20</td>
    <td class="bsChrome">21</td>
    <td class="bsSafari">9</td>
    <td class="bsOpera">12.1</td>
  	</tr>
	<tr>
    <td class="bsProperty"><a href="css3_pr_animation-keyframes.asp">@keyframes</a></td>
    <td class="bsIE">10</td>
    <td class="bsFirefox">16</td>
    <td class="bsChrome">43</td>
    <td class="bsSafari">9</td>
    <td class="bsOpera">30</td>
  	</tr>
	<tr>
    <td class="bsProperty"><a href="css3_pr_animation.asp">animation</a></td>
    <td class="bsIE">10</td>
    <td class="bsFirefox">16</td>
    <td class="bsChrome">43</td>
    <td class="bsSafari">9</td>
    <td class="bsOpera">30</td>
  	</tr>
	<tr>
    <td class="bsProperty"><a href="css3_pr_animation-name.asp">animation-name</a></td>
    <td class="bsIE">10</td>
    <td class="bsFirefox">16</td>
    <td class="bsChrome">43</td>
    <td class="bsSafari">9</td>
    <td class="bsOpera">30</td>
  	</tr>
	<tr>
    <td class="bsProperty"><a href="css3_pr_animation-duration.asp">animation-duration</a></td>
    <td class="bsIE">10</td>
    <td class="bsFirefox">16</td>
    <td class="bsChrome">43</td>
    <td class="bsSafari">9</td>
    <td class="bsOpera">30</td>
  	</tr>
	<tr>
    <td class="bsProperty"><a href="css3_pr_animation-timing-function.asp">animation-timing-function</a></td>
    <td class="bsIE">10</td>
    <td class="bsFirefox">16</td>
    <td class="bsChrome">43</td>
    <td class="bsSafari">9</td>
    <td class="bsOpera">30</td>
  	</tr>
	<tr>
    <td class="bsProperty"><a href="css3_pr_animation-delay.asp">animation-delay</a></td>
    <td class="bsIE">10</td>
    <td class="bsFirefox">16</td>
    <td class="bsChrome">43</td>
    <td class="bsSafari">9</td>
    <td class="bsOpera">30</td>
  	</tr>
	<tr>
    <td class="bsProperty"><a href="css3_pr_animation-iteration-count.asp">animation-iteration-count</a></td>
    <td class="bsIE">10</td>
    <td class="bsFirefox">16</td>
    <td class="bsChrome">43</td>
    <td class="bsSafari">9</td>
    <td class="bsOpera">30</td>
  	</tr>
	<tr>
    <td class="bsProperty"><a href="css3_pr_animation-direction.asp">animation-direction</a></td>
    <td class="bsIE">10</td>
    <td class="bsFirefox">16</td>
    <td class="bsChrome">43</td>
    <td class="bsSafari">9</td>
    <td class="bsOpera">30</td>
  	</tr>
	<tr>
    <td class="bsProperty"><a href="css3_pr_animation-play-state.asp">animation-play-state</a></td>
    <td class="bsIE">10</td>
    <td class="bsFirefox">16</td>
    <td class="bsChrome">43</td>
    <td class="bsSafari">9</td>
    <td class="bsOpera">30</td>
  	</tr>
	<tr>
    <td class="bsProperty"><a href="css3_pr_backface-visibility.asp">backface-visibility</a></td>
    <td class="bsPreIE">10</td>
    <td class="bsFirefox">16</td>
    <td class="bsChrome">36</td>
    <td class="bsSafari">9</td>
    <td class="bsOpera">23&nbsp;</td>
  	</tr>
  <tr>
    <td class="bsProperty"><a href="css3_pr_background-clip.asp">background-clip</a></td>
    <td class="bsIE">9</td>
    <td class="bsFirefox">4</td>
    <td class="bsChrome">4</td>
    <td class="bsSafari">3</td>
    <td class="bsOpera">10.5</td>
  </tr>
  <tr>
    <td class="bsProperty"><a href="css3_pr_background-origin.asp">background-origin</a></td>
    <td class="bsIE">9</td>
    <td class="bsFirefox">4</td>
    <td class="bsChrome">4</td>
    <td class="bsSafari">3</td>
    <td class="bsOpera">10.5</td>
  </tr>
  <tr>
    <td class="bsProperty"><a href="css3_pr_background-size.asp">background-size</a></td>
    <td class="bsIE">9</td>
    <td class="bsFirefox">4</td>
    <td class="bsChrome">4</td>
    <td class="bsSafari">4.1</td>
    <td class="bsOpera">10</td>
  </tr>
  <tr>
    <td class="bsProperty"><a href="css3_pr_border-bottom-left-radius.asp">border-bottom-left-radius</a></td>
    <td class="bsIE">9</td>
    <td class="bsFirefox">4</td>
    <td class="bsChrome">5</td>
    <td class="bsSafari">5</td>
    <td class="bsOpera">10.5</td>
  </tr>
  <tr>
    <td class="bsProperty" style="height: 22px"><a href="css3_pr_border-bottom-right-radius.asp">border-bottom-right-radius</a></td>
    <td class="bsIE" style="height: 22px">9</td>
    <td class="bsFirefox" style="height: 22px">4</td>
    <td class="bsChrome" style="height: 22px">5</td>
    <td class="bsSafari" style="height: 22px">5</td>
    <td class="bsOpera" style="height: 22px">10.5</td>
  </tr>
  <tr>
    <td class="bsProperty"><a href="css3_pr_border-image.asp">border-image</a></td>
    <td class="bsIE">11</td>
    <td class="bsFirefox">15</td>
    <td class="bsChrome">16</td>
    <td class="bsSafari">6</td>
    <td class="bsOpera">15</td>
  </tr>
  <tr>
    <td class="bsProperty"><a href="css3_pr_border-image-outset.asp">border-image-outset</a></td>
    <td class="bsIE">11</td>
    <td class="bsFirefox">15</td>
    <td class="bsChrome">15</td>
    <td class="bsSafari">6</td>
    <td class="bsOpera">15</td>
  </tr>
  <tr>
    <td class="bsProperty"><a href="css3_pr_border-image-repeat.asp">border-image-repeat</a></td>
    <td class="bsIE">11</td>
    <td class="bsFirefox">15</td>
    <td class="bsChrome">15</td>
    <td class="bsSafari">6</td>
    <td class="bsOpera">15</td>
  </tr>
  <tr>
    <td class="bsProperty"><a href="css3_pr_border-image-slice.asp">border-image-slice</a></td>
    <td class="bsIE">11</td>
    <td class="bsFirefox">15</td>
    <td class="bsChrome">15</td>
    <td class="bsSafari">6</td>
    <td class="bsOpera">15</td>
  </tr>
  <tr>
    <td class="bsProperty"><a href="css3_pr_border-image-source.asp">border-image-source</a></td>
    <td class="bsIE">11</td>
    <td class="bsFirefox">15</td>
    <td class="bsChrome">15</td>
    <td class="bsSafari">6</td>
    <td class="bsOpera">15</td>
  </tr>
  <tr>
    <td class="bsProperty"><a href="css3_pr_border-image-width.asp">border-image-width</a></td>
    <td class="bsIE">11</td>
    <td class="bsFirefox">13</td>
    <td class="bsChrome">15</td>
    <td class="bsSafari">6</td>
    <td class="bsOpera">15</td>
  </tr>
  <tr>
    <td class="bsProperty"><a href="css3_pr_border-radius.asp">border-radius</a></td>
    <td class="bsIE">9</td>
    <td class="bsFirefox">4</td>
    <td class="bsChrome">5</td>
    <td class="bsSafari">5</td>
    <td class="bsOpera">10.5</td>
  </tr>
  <tr>
    <td class="bsProperty"><a href="css3_pr_border-top-left-radius.asp">border-top-left-radius</a></td>
    <td class="bsIE">9</td>
    <td class="bsFirefox">4</td>
    <td class="bsChrome">5</td>
    <td class="bsSafari">5</td>
    <td class="bsOpera">10.5</td>
  </tr>
  <tr>
    <td class="bsProperty"><a href="css3_pr_border-top-right-radius.asp">border-top-right-radius</a></td>
    <td class="bsIE">9</td>
    <td class="bsFirefox">4</td>
    <td class="bsChrome">5</td>
    <td class="bsSafari">5</td>
    <td class="bsOpera">10.5</td>
  </tr>
  <tr>
    <td class="bsProperty">box-decoration-break</td>
    <td class="bsNoIE"></td>
    <td class="bsNoFirefox"></td>
    <td class="bsNoChrome"></td>
    <td class="bsNoSafari"></td>
    <td class="bsNoOpera"></td>
  </tr>
  	<tr>
    <td class="bsProperty"><a href="css3_pr_box-shadow.asp">box-shadow</a></td>
    <td class="bsIE">9</td>
    <td class="bsFirefox">4</td>
    <td class="bsChrome">10</td>
    <td class="bsSafari">5.1</td>
    <td class="bsOpera">10.5</td>
  	</tr>
	<tr>
    <td class="bsProperty"><a href="css3_pr_box-sizing.asp">box-sizing</a></td>
    <td class="bsIE">8</td>
    <td class="bsFirefox">29</td>
    <td class="bsChrome">10&nbsp;</td>
    <td class="bsSafari">5.1</td>
    <td class="bsOpera">9.5</td>
  	</tr>
	<tr>
    <td class="bsProperty">break-after</td>
    <td class="bsIE">10</td>
    <td class="bsNoFirefox"></td>
    <td class="bsNoChrome"></td>
    <td class="bsNoSafari"></td>
    <td class="bsOpera">11.1</td>
  	</tr>
	<tr>
    <td class="bsProperty">break-before</td>
    <td class="bsIE">10</td>
    <td class="bsNoFirefox"></td>
    <td class="bsNoChrome"></td>
    <td class="bsNoSafari"></td>
    <td class="bsOpera">11.1</td>
  	</tr>
	<tr>
    <td class="bsProperty">break-inside</td>
    <td class="bsNoIE"></td>
    <td class="bsNoFirefox"></td>
    <td class="bsNoChrome"></td>
    <td class="bsNoSafari"></td>
    <td class="bsNoOpera"></td>
  	</tr>
    <tr>
    <td class="bsProperty"><a href="css3_pr_column-count.asp">column-count</a></td>
    <td class="bsIE">10</td>
    <td class="bsPreFirefox">2</td>
    <td class="bsPreChrome">4</td>
    <td class="bsPreSafari">3</td>
    <td class="bsPreOpera">15</td>
  	</tr>
	<tr>
    <td class="bsProperty"><a href="css3_pr_column-fill.asp">column-fill</a></td>
    <td class="bsNoIE"></td>
    <td class="bsPreFirefox">13</td>
    <td class="bsNoChrome"></td>
    <td class="bsNoSafari"></td>
    <td class="bsNoOpera"></td>
  	</tr>
	<tr>
    <td class="bsProperty"><a href="css3_pr_column-gap.asp">column-gap</a></td>
    <td class="bsIE">10</td>
    <td class="bsPreFirefox">2</td>
    <td class="bsPreChrome">4</td>
    <td class="bsPreSafari">3</td>
    <td class="bsPreOpera">15</td>
  	</tr>
	<tr>
    <td class="bsProperty"><a href="css3_pr_column-rule.asp">column-rule</a></td>
    <td class="bsIE">10</td>
    <td class="bsPreFirefox">2</td>
    <td class="bsPreChrome">4</td>
    <td class="bsPreSafari">3</td>
    <td class="bsPreOpera">15</td>
  	</tr>
	<tr>
    <td class="bsProperty"><a href="css3_pr_column-rule-color.asp">column-rule-color</a></td>
    <td class="bsIE">10</td>
    <td class="bsPreFirefox">2</td>
    <td class="bsPreChrome">4</td>
    <td class="bsPreSafari">3</td>
    <td class="bsPreOpera">15</td>
  	</tr>
	<tr>
    <td class="bsProperty"><a href="css3_pr_column-rule-style.asp">column-rule-style</a></td>
    <td class="bsIE">10</td>
    <td class="bsPreFirefox">2</td>
    <td class="bsPreChrome">4</td>
    <td class="bsPreSafari">3</td>
    <td class="bsPreOpera">15</td>
  	</tr>
	<tr>
    <td class="bsProperty"><a href="css3_pr_column-rule-width.asp">column-rule-width</a></td>
    <td class="bsIE">10</td>
    <td class="bsPreFirefox">2</td>
    <td class="bsPreChrome">4</td>
    <td class="bsPreSafari"></td>
    <td class="bsPreOpera">15</td>
  	</tr>
	<tr>
    <td class="bsProperty"><a href="css3_pr_column-span.asp">column-span</a></td>
    <td class="bsIE">10</td>
    <td class="bsNoFirefox"></td>
    <td class="bsPreChrome">4</td>
    <td class="bsPreSafari"></td>
    <td class="bsPreOpera">15</td>  	
    </tr>
	<tr>
    <td class="bsProperty"><a href="css3_pr_column-width.asp">column-width</a></td>
    <td class="bsIE">10</td>
    <td class="bsPreFirefox">2</td>
    <td class="bsPreChrome">4</td>
    <td class="bsPreSafari">3</td>
    <td class="bsPreOpera">15</td>
  	</tr>
	<tr>
    <td class="bsProperty"><a href="css3_pr_columns.asp">columns</a></td>
    <td class="bsIE">10</td>
    <td class="bsPreFirefox">9</td>
    <td class="bsPreChrome">4</td>
    <td class="bsPreSafari">3</td>
    <td class="bsPreOpera">15</td>
  	</tr>
	<tr>
    <td class="bsProperty"><a href="css3_pr_filter.asp">filter</a></td>
    <td class="bsNoIE"></td>
    <td class="bsFirefox">35</td>
    <td class="bsPreChrome">18</td>
    <td class="bsPreSafari">6</td>
    <td class="bsPreOpera">15</td>
  	</tr>
	<tr>
    <td class="bsProperty">fit</td>
    <td class="bsNoIE"></td>
    <td class="bsNoFirefox"></td>
    <td class="bsNoChrome"></td>
    <td class="bsNoSafari"></td>
    <td class="bsNoOpera"></td>
  	</tr>
	<tr>
    <td class="bsProperty"><a href="css3_pr_flex.asp">flex</a></td>
    <td class="bsIE">11</td>
    <td class="bsFirefox">28</td>
    <td class="bsChrome">29</td>
    <td class="bsSafari">9</td>
    <td class="bsOpera">17</td>
  	</tr>
	<tr>
    <td class="bsProperty"><a href="css3_pr_flex-basis.asp">flex-basis</a></td>
    <td class="bsIE">11</td>
    <td class="bsFirefox">28</td>
    <td class="bsChrome">29</td>
    <td class="bsSafari">9</td>
    <td class="bsOpera">17</td>
  	</tr>
	<tr>
    <td class="bsProperty"><a href="css3_pr_flex-direction.asp">flex-direction</a></td>
    <td class="bsIE">11</td>
    <td class="bsFirefox">28</td>
    <td class="bsChrome">29</td>
    <td class="bsSafari">9</td>
    <td class="bsOpera">17</td>
  	</tr>
	<tr>
    <td class="bsProperty"><a href="css3_pr_flex-flow.asp">flex-flow</a></td>
    <td class="bsIE">11</td>
    <td class="bsFirefox">28</td>
    <td class="bsChrome">29</td>
    <td class="bsSafari">9</td>
    <td class="bsOpera">17</td>
  	</tr>
	<tr>
    <td class="bsProperty"><a href="css3_pr_flex-grow.asp">flex-grow</a></td>
    <td class="bsIE">11</td>
    <td class="bsFirefox">28</td>
    <td class="bsChrome">29</td>
    <td class="bsSafari">9</td>
    <td class="bsOpera">17</td>
  	</tr>
	<tr>
    <td class="bsProperty"><a href="css3_pr_flex-shrink.asp">flex-shrink</a></td>
    <td class="bsIE">11</td>
    <td class="bsFirefox">28</td>
    <td class="bsChrome">29</td>
    <td class="bsSafari">9</td>
    <td class="bsOpera">17</td>
  	</tr>
	<tr>
    <td class="bsProperty"><a href="css3_pr_flex-wrap.asp">flex-wrap</a></td>
    <td class="bsIE">11</td>
    <td class="bsFirefox">28</td>
    <td class="bsChrome">29</td>
    <td class="bsSafari">9</td>
    <td class="bsOpera">17</td>
  	</tr>
	<tr>
    <td class="bsProperty"><a href="css3_pr_font-face_rule.asp">@font-face</a></td>
    <td class="bsIE">9</td>
    <td class="bsFirefox">3.6</td>
    <td class="bsChrome">4</td>
    <td class="bsSafari">3</td>
    <td class="bsOpera">10</td>
  	</tr>
	<tr>
    <td class="bsProperty">@font-feature-values</td>
    <td class="bsNoIE"></td>
    <td class="bsNoFirefox"></td>
    <td class="bsNoChrome"></td>
    <td class="bsNoSafari"></td>
    <td class="bsNoOpera"></td>
  	</tr>
	<tr>
    <td class="bsProperty">font-feature-settings</td>
    <td class="bsIE">10</td>
    <td class="bsFirefox">34</td>
    <td class="bsPreChrome">16</td>
    <td class="bsNoSafari"></td>
    <td class="bsPreOpera">25</td>
  	</tr>
	<tr>
    <td class="bsProperty">font-kerning</td>
    <td class="bsNoIE"></td>
    <td class="bsNoFirefox"></td>
    <td class="bsNoChrome"></td>
    <td class="bsNoSafari"></td>
    <td class="bsNoOpera"></td>
  	</tr>
	<tr>
    <td class="bsProperty">font-language-override</td>
    <td class="bsNoIE"></td>
    <td class="bsNoFirefox"></td>
    <td class="bsNoChrome"></td>
    <td class="bsNoSafari"></td>
    <td class="bsNoOpera"></td>
  	</tr>
	<tr>
    <td class="bsProperty"><a href="css3_pr_font-size-adjust.asp">font-size-adjust</a></td>
    <td class="bsNoIE"></td>
    <td class="bsFirefox">3</td>
    <td class="bsNoChrome"></td>
    <td class="bsNoSafari"></td>
    <td class="bsNoOpera"></td>
  	</tr>
	<tr>
    <td class="bsProperty"><a href="css3_pr_font-stretch.asp">font-stretch</a></td>
    <td class="bsNoIE"></td>
    <td class="bsNoFirefox"></td>
    <td class="bsNoChrome"></td>
    <td class="bsNoSafari"></td>
    <td class="bsNoOpera"></td>
  	</tr>
	<tr>
    <td class="bsProperty">font-synthesis</td>
    <td class="bsNoIE"></td>
    <td class="bsNoFirefox"></td>
    <td class="bsNoChrome"></td>
    <td class="bsNoSafari"></td>
    <td class="bsNoOpera"></td>
  	</tr>
	<tr>
    <td class="bsProperty">font-variant</td>
    <td class="bsNoIE">&nbsp;</td>
    <td class="bsNoFirefox">&nbsp;</td>
    <td class="bsNoChrome">&nbsp;</td>
    <td class="bsNoSafari">&nbsp;</td>
    <td class="bsNoOpera">&nbsp;</td>
  	</tr>
	<tr>
    <td class="bsProperty">font-variant-alternates</td>
    <td class="bsNoIE"></td>
    <td class="bsNoFirefox"></td>
    <td class="bsNoChrome"></td>
    <td class="bsNoSafari"></td>
    <td class="bsNoOpera"></td>
  	</tr>
	<tr>
    <td class="bsProperty">font-variant-caps</td>
    <td class="bsNoIE"></td>
    <td class="bsNoFirefox"></td>
    <td class="bsNoChrome"></td>
    <td class="bsNoSafari"></td>
    <td class="bsNoOpera"></td>
  	</tr>
	<tr>
    <td class="bsProperty">font-variant-east-asian</td>
    <td class="bsNoIE"></td>
    <td class="bsNoFirefox"></td>
    <td class="bsNoChrome"></td>
    <td class="bsNoSafari"></td>
    <td class="bsNoOpera"></td>
  	</tr>
	<tr>
    <td class="bsProperty">font-variant-ligatures</td>
    <td class="bsNoIE"></td>
    <td class="bsNoFirefox"></td>
    <td class="bsNoChrome"></td>
    <td class="bsNoSafari"></td>
    <td class="bsNoOpera"></td>
  	</tr>
	<tr>
    <td class="bsProperty">font-variant-numeric</td>
    <td class="bsNoIE"></td>
    <td class="bsNoFirefox"></td>
    <td class="bsNoChrome"></td>
    <td class="bsNoSafari"></td>
    <td class="bsNoOpera"></td>
  	</tr>
	<tr>
    <td class="bsProperty">font-variant-position</td>
    <td class="bsNoIE"></td>
    <td class="bsNoFirefox"></td>
    <td class="bsNoChrome"></td>
    <td class="bsNoSafari"></td>
    <td class="bsNoOpera"></td>
  	</tr>
	<tr>
    <td class="bsProperty"><a href="css3_pr_hanging-punctuation.asp">hanging-punctuation</a></td>
    <td class="bsNoIE"></td>
    <td class="bsNoFirefox"></td>
    <td class="bsNoChrome"></td>
    <td class="bsNoSafari"></td>
    <td class="bsNoOpera"></td>
  	</tr>
	<tr>
    <td class="bsProperty">hyphens</td>
    <td class="bsPreIE">10</td>
    <td class="bsPreFirefox">6</td>
    <td class="bsPreChrome">13</td>
    <td class="bsPreSafari">5.1</td>
    <td class="bsNoOpera"></td>
  	</tr>
	<tr>
    <td class="bsProperty">image-orientation</td>
    <td class="bsNoIE"></td>
    <td class="bsFirefox">26</td>
    <td class="bsNoChrome"></td>
    <td class="bsNoSafari"></td>
    <td class="bsNoOpera"></td>
  	</tr>
	<tr>
    <td class="bsProperty">image-rendering</td>
    <td class="bsNoIE"></td>
    <td class="bsPreFirefox"></td>
    <td class="bsChrome"></td>
    <td class="bsNoSafari"></td>
    <td class="bsOpera">11.6</td>
  	</tr>
	<tr>
    <td class="bsProperty">image-resolution</td>
    <td class="bsNoIE"></td>
    <td class="bsNoFirefox"></td>
    <td class="bsNoChrome"></td>
    <td class="bsNoSafari"></td>
    <td class="bsNoOpera"></td>
  	</tr>
	<tr>
    <td class="bsProperty"><a href="css3_pr_justify-content.asp">justify-content</a></td>
    <td class="bsIE">11</td>
    <td class="bsFirefox">28</td>
    <td class="bsChrome">29</td>
    <td class="bsSafari">9</td>
    <td class="bsOpera">17</td>
  	</tr>	
	<tr>
    <td class="bsProperty">line-break</td>
    <td class="bsNoIE"></td>
    <td class="bsNoFirefox"></td>
    <td class="bsNoChrome"></td>
    <td class="bsNoSafari"></td>
    <td class="bsNoOpera"></td>
  	</tr>
	<tr>
    <td class="bsProperty">mark</td>
    <td class="bsNoIE"></td>
    <td class="bsNoFirefox"></td>
    <td class="bsNoChrome"></td>
    <td class="bsNoSafari"></td>
    <td class="bsNoOpera"></td>
  	</tr>
	<tr>
    <td class="bsProperty">mark-after</td>
    <td class="bsNoIE"></td>
    <td class="bsNoFirefox"></td>
    <td class="bsNoChrome"></td>
    <td class="bsNoSafari"></td>
    <td class="bsNoOpera"></td>
  	</tr>
	<tr>
    <td class="bsProperty">mark-before</td>
    <td class="bsNoIE"></td>
    <td class="bsNoFirefox"></td>
    <td class="bsNoChrome"></td>
    <td class="bsNoSafari"></td>
    <td class="bsNoOpera"></td>
  	</tr>
	<tr>
    <td class="bsProperty">marks</td>
    <td class="bsNoIE"></td>
    <td class="bsNoFirefox"></td>
    <td class="bsNoChrome"></td>
    <td class="bsNoSafari"></td>
    <td class="bsNoOpera"></td>
  	</tr>
	<tr>
    <td class="bsProperty">marquee-direction</td>
    <td class="bsNoIE"></td>
    <td class="bsNoFirefox"></td>
    <td class="bsPreChrome"></td>
    <td class="bsPreSafari"></td>
    <td class="bsNoOpera"></td>
  	</tr>
	<tr>
    <td class="bsProperty">marquee-play-count</td>
    <td class="bsNoIE"></td>
    <td class="bsNoFirefox"></td>
    <td class="bsPreChrome"></td>
    <td class="bsPreSafari"></td>
    <td class="bsNoOpera"></td>
  	</tr>
	<tr>
    <td class="bsProperty">marquee-speed</td>
    <td class="bsNoIE"></td>
    <td class="bsNoFirefox"></td>
    <td class="bsPreChrome"></td>
    <td class="bsPreSafari"></td>
    <td class="bsNoOpera"></td>
  	</tr>
	<tr>
    <td class="bsProperty">marquee-style</td>
    <td class="bsNoIE"></td>
    <td class="bsNoFirefox"></td>
    <td class="bsPreChrome"></td>
    <td class="bsPreSafari"></td>
    <td class="bsNoOpera"></td>
  	</tr>
	<tr>
    <td class="bsProperty"><a href="css3_pr_nav-down.asp">nav-down</a></td>
    <td class="bsNoIE"></td>
    <td class="bsNoFirefox"></td>
    <td class="bsNoChrome"></td>
    <td class="bsNoSafari"></td>
    <td class="bsOpera">11.5</td>
  	</tr>
	<tr>
    <td class="bsProperty"><a href="css3_pr_nav-index.asp">nav-index</a></td>
    <td class="bsNoIE"></td>
    <td class="bsNoFirefox"></td>
    <td class="bsNoChrome"></td>
    <td class="bsNoSafari"></td>
    <td class="bsOpera">11.5</td>
  	</tr>
	<tr>
    <td class="bsProperty"><a href="css3_pr_nav-left.asp">nav-left</a></td>
    <td class="bsNoIE"></td>
    <td class="bsNoFirefox"></td>
    <td class="bsNoChrome"></td>
    <td class="bsNoSafari"></td>
    <td class="bsOpera">11.5</td>
  	</tr>
	<tr>
    <td class="bsProperty"><a href="css3_pr_nav-right.asp">nav-right</a></td>
    <td class="bsNoIE"></td>
    <td class="bsNoFirefox"></td>
    <td class="bsNoChrome"></td>
    <td class="bsNoSafari"></td>
    <td class="bsOpera">11.5</td>
  	</tr>
	<tr>
    <td class="bsProperty"><a href="css3_pr_nav-up.asp">nav-up</a></td>
    <td class="bsNoIE"></td>
    <td class="bsNoFirefox"></td>
    <td class="bsNoChrome"></td>
    <td class="bsNoSafari"></td>
    <td class="bsOpera">11.5</td>
  	</tr>
  	<tr>
    <td class="bsProperty">object-fit</td>
    <td class="bsNoIE"></td>
    <td class="bsNoFirefox"></td>
    <td class="bsNoChrome"></td>
    <td class="bsNoSafari"></td>
    <td class="bsNoOpera"></td>
  	</tr>
  	<tr>
    <td class="bsProperty">object-position</td>
    <td class="bsNoIE"></td>
    <td class="bsNoFirefox"></td>
    <td class="bsNoChrome"></td>
    <td class="bsNoSafari"></td>
    <td class="bsNoOpera"></td>
  	</tr>
  	<tr>
    <td class="bsProperty"><a href="css3_pr_opacity.asp">opacity</a></td>
    <td class="bsIE">9</td>
    <td class="bsFirefox">2</td>
    <td class="bsChrome">4</td>
    <td class="bsSafari">3.1</td>
    <td class="bsOpera">9</td>
  	</tr>
  	<tr>
    <td class="bsProperty"><a href="css3_pr_order.asp">order</a></td>
    <td class="bsIE">11</td>
    <td class="bsFirefox">28</td>
    <td class="bsChrome">29</td>
    <td class="bsSafari">9</td>
    <td class="bsOpera">17</td>
  	</tr>
	<tr>
    <td class="bsProperty"><a href="css3_pr_outline-offset.asp">outline-offset</a></td>
    <td class="bsNoIE"></td>
    <td class="bsFirefox">3.5</td>
    <td class="bsChrome">4</td>
    <td class="bsSafari">3</td>
    <td class="bsOpera">10.5</td>
  	</tr>
	<tr>
    <td class="bsProperty">overflow-wrap</td>
    <td class="bsIE">9</td>
    <td class="bsFirefox">3.5</td>
    <td class="bsChrome"></td>
    <td class="bsSafari">3</td>
    <td class="bsOpera">9.5</td>
  	</tr>
	<tr>
    <td class="bsProperty"><a href="css3_pr_overflow-x.asp">overflow-x</a></td>
    <td class="bsIE">9</td>
    <td class="bsFirefox">3.5</td>
    <td class="bsChrome">4</td>
    <td class="bsSafari">3</td>
    <td class="bsOpera">9.5</td>
  	</tr>
	<tr>
    <td class="bsProperty"><a href="css3_pr_overflow-y.asp">overflow-y</a></td>
    <td class="bsIE">9</td>
    <td class="bsFirefox"></td>
    <td class="bsChrome">4</td>
    <td class="bsSafari">3</td>
    <td class="bsOpera">9.5</td>
  	</tr>
	<tr>
    <td class="bsProperty">@page</td>
    <td class="bsIE">8</td>
    <td class="bsFirefox">19</td>
    <td class="bsChrome"></td>
    <td class="bsSafari">5</td>
    <td class="bsOpera">6</td>
  	</tr>
	<tr>
    <td class="bsProperty"><a href="css3_pr_perspective.asp">perspective</a></td>
    <td class="bsIE">10</td>
    <td class="bsFirefox">16</td>
    <td class="bsChrome">36</td>
    <td class="bsSafari">9</td>
    <td class="bsOpera">23</td>  
  	</tr>
	<tr>
    <td class="bsProperty"><a href="css3_pr_perspective-origin.asp">perspective-origin</a></td>
    <td class="bsIE">10</td>
    <td class="bsFirefox">16</td>
    <td class="bsChrome">36</td>
    <td class="bsSafari">9</td>
    <td class="bsOpera">23</td>  
  	</tr>
	<tr>
    <td class="bsProperty"><a href="css3_pr_resize.asp">resize</a></td>
    <td class="bsNoIE"></td>
    <td class="bsFirefox">5</td>
    <td class="bsChrome">4</td>
    <td class="bsSafari">4</td>
    <td class="bsOpera">15</td>
  	</tr>
	<tr>
    <td class="bsProperty">rest</td>
    <td class="bsNoIE"></td>
    <td class="bsNoFirefox"></td>
    <td class="bsNoChrome"></td>
    <td class="bsNoSafari"></td>
    <td class="bsNoOpera"></td>
  	</tr>
	<tr>
    <td class="bsProperty">rest-after</td>
    <td class="bsNoIE"></td>
    <td class="bsNoFirefox"></td>
    <td class="bsNoChrome"></td>
    <td class="bsNoSafari"></td>
    <td class="bsNoOpera"></td>
  	</tr>
	<tr>
    <td class="bsProperty">rest-before</td>
    <td class="bsNoIE"></td>
    <td class="bsNoFirefox"></td>
    <td class="bsNoChrome"></td>
    <td class="bsNoSafari"></td>
    <td class="bsNoOpera"></td>
  	</tr>
	<tr>
    <td class="bsProperty">ruby-align</td>
    <td class="bsIE"></td>
    <td class="bsNoFirefox"></td>
    <td class="bsNoChrome"></td>
    <td class="bsNoSafari"></td>
    <td class="bsNoOpera"></td>
  	</tr>
  <tr>
    <td class="bsProperty"><a href="css3_pr_tab-size.asp">tab-size</a></td>
    <td class="bsNoIE"></td>
    <td class="bsPreFirefox">4</td>
    <td class="bsChrome">21</td>
    <td class="bsSafari">6.1</td>
    <td class="bsOpera">15</td>
  </tr>
  <tr>
    <td class="bsProperty"><a href="css3_pr_text-align-last.asp">text-align-last</a></td>
    <td class="bsIE">5.5</td>
    <td class="bsPreFirefox">12</td>
    <td class="bsChrome">35</td>
    <td class="bsNoSafari"></td>
    <td class="bsNoOpera"></td>
  </tr>
  <tr>
    <td class="bsProperty">text-combine-upright</td>
    <td class="bsNoIE"></td>
    <td class="bsNoFirefox"></td>
    <td class="bsNoChrome"></td>
    <td class="bsNoSafari"></td>
    <td class="bsNoOpera"></td>
  </tr>
    <tr>
    <td class="bsProperty"><a href="css3_pr_text-decoration-color.asp">text-decoration-color</a></td>
    <td class="bsNoIE"></td>
    <td class="bsPreFirefox">6</td>
    <td class="bsNoChrome"></td>
    <td class="bsNoSafari"></td>
    <td class="bsNoOpera"></td>
  </tr>
    <tr>
    <td class="bsProperty"><a href="css3_pr_text-decoration-line.asp">text-decoration-line</a></td>
    <td class="bsNoIE"></td>
    <td class="bsPreFirefox">6</td>
    <td class="bsNoChrome"></td>
    <td class="bsNoSafari"></td>
    <td class="bsNoOpera"></td>
  </tr>
    <tr>
    <td class="bsProperty"><a href="css3_pr_text-decoration-style.asp">text-decoration-style</a></td>
    <td class="bsNoIE"></td>
    <td class="bsPreFirefox">6</td>
    <td class="bsNoChrome"></td>
    <td class="bsNoSafari"></td>
    <td class="bsNoOpera"></td>
  </tr>
    <tr>
    <td class="bsProperty"><a href="css3_pr_text-justify.asp">text-justify</a></td>
    <td class="bsIE">5.5</td>
    <td class="bsNoFirefox"></td>
    <td class="bsNoChrome"></td>
    <td class="bsNoSafari"></td>
    <td class="bsNoOpera"></td>
  </tr>
  <tr>
    <td class="bsProperty">text-orientation</td>
    <td class="bsNoIE"></td>
    <td class="bsNoFirefox"></td>
    <td class="bsNoChrome"></td>
    <td class="bsNoSafari"></td>
    <td class="bsNoOpera"></td>
  </tr>
	<tr>
    <td class="bsProperty"><a href="css3_pr_text-overflow.asp">text-overflow</a></td>
    <td class="bsIE">6</td>
    <td class="bsFirefox">7</td>
    <td class="bsChrome">4</td>
    <td class="bsSafari">3.1</td>
    <td class="bsOpera">11</td>
  	</tr>
  <tr>
    <td class="bsProperty"><a href="css3_pr_text-shadow.asp">text-shadow</a></td>
    <td class="bsIE">10</td>
    <td class="bsFirefox">3.5</td>
    <td class="bsChrome">4</td>
    <td class="bsSafari">4</td>
    <td class="bsOpera">9.6</td>
  </tr>
    <tr>
    <td class="bsProperty">text-underline-position</td>
    <td class="bsNoIE"></td>
    <td class="bsNoFirefox"></td>
    <td class="bsNoChrome"></td>
    <td class="bsNoSafari"></td>
    <td class="bsNoOpera"></td>
  </tr>
  	<tr>
    <td class="bsProperty"><a href="css3_pr_transform.asp">transform</a></td>
    <td class="bsIE">10</td>
    <td class="bsFirefox">16</td>
    <td class="bsChrome">36</td>
    <td class="bsSafari">9</td>
    <td class="bsOpera">23</td>
  	</tr>
	<tr>
    <td class="bsProperty"><a href="css3_pr_transform-origin.asp">transform-origin</a></td>
    <td class="bsIE">10</td>
    <td class="bsFirefox">16</td>
    <td class="bsChrome">36</td>
    <td class="bsSafari">9</td>
    <td class="bsOpera">23</td>
  	</tr>
	<tr>
    <td class="bsProperty"><a href="css3_pr_transform-style.asp">transform-style</a></td>
    <td class="bsIE">11</td>
    <td class="bsFirefox">16</td>
    <td class="bsChrome">36</td>
    <td class="bsSafari">9</td>
    <td class="bsOpera">23</td>
  	</tr>
	<tr>
    <td class="bsProperty"><a href="css3_pr_transition.asp">transition</a></td>
    <td class="bsIE">10</td>
    <td class="bsFirefox">16</td>
    <td class="bsChrome">26</td>
    <td class="bsSafari">6.1</td>
    <td class="bsOpera">12.1</td>
  	</tr>
	<tr>
    <td class="bsProperty"><a href="css3_pr_transition-delay.asp">transition-delay</a></td>
    <td class="bsIE">10</td>
    <td class="bsFirefox">16</td>
    <td class="bsChrome">26</td>
    <td class="bsSafari">6.1</td>
    <td class="bsOpera">12.1</td>
  	</tr>
	<tr>
    <td class="bsProperty"><a href="css3_pr_transition-duration.asp">transition-duration</a></td>
    <td class="bsIE">10</td>
    <td class="bsFirefox">16</td>
    <td class="bsChrome">26</td>
    <td class="bsSafari">6.1</td>
    <td class="bsOpera">12.1</td>
  	</tr>
	<tr>
    <td class="bsProperty"><a href="css3_pr_transition-property.asp">transition-property</a></td>
    <td class="bsIE">10</td>
    <td class="bsFirefox">16</td>
    <td class="bsChrome">26</td>
    <td class="bsSafari">6.1</td>
    <td class="bsOpera">12.1</td>
  	</tr>
	<tr>
    <td class="bsProperty"><a href="css3_pr_transition-timing-function.asp">transition-timing-function</a></td>
    <td class="bsIE">10</td>
    <td class="bsFirefox">16</td>
    <td class="bsChrome">26</td>
    <td class="bsSafari">6.1</td>
    <td class="bsOpera">12.1</td>
  	</tr>
  <tr>
    <td class="bsProperty"><a href="css3_pr_word-break.asp">word-break</a></td>
    <td class="bsIE">5.5</td>
    <td class="bsFirefox">15</td>
    <td class="bsChrome">4</td>
    <td class="bsSafari">3.1</td>
    <td class="bsOpera">15</td>
  </tr>
  <tr>
    <td class="bsProperty"><a href="css3_pr_word-wrap.asp">word-wrap</a></td>
    <td class="bsIE">5.5</td>
    <td class="bsFirefox">3.5</td>
    <td class="bsChrome">4</td>
    <td class="bsSafari">3.1</td>
    <td class="bsOpera">10.5</td>
  </tr>
  <tr>
    <td class="bsProperty">writing-mode</td>
    <td class="bsPreIE"></td>
    <td class="bsNoFirefox"></td>
    <td class="bsNoChrome"></td>
    <td class="bsNoSafari"></td>
    <td class="bsNoOpera"></td>
  </tr>
</table>
</div>

<h2>Icon Explanations</h2>
<table class="bsReference table">
  <tr><td class="bsIE bsExpIcon"></td><td class="bsExp" style="font-size:15px;">Supported by Internet Explorer</td></tr>
  <tr><td class="bsFirefox bsExpIcon"></td><td class="bsExp" style="font-size:15px;">Supported by Firefox</td></tr>
  <tr><td class="bsChrome bsExpIcon"></td><td class="bsExp" style="font-size:15px;">Supported by Google Chrome</td></tr>
  <tr><td class="bsSafari bsExpIcon"></td><td class="bsExp" style="font-size:15px;">Supported by Safari</td></tr>
  <tr><td class="bsOpera bsExpIcon"></td><td class="bsExp" style="font-size:15px;">Supported by Opera</td></tr>
</table>
<br>

<table class="bsReference table">
  <tr><td class="bsPreIE bsExpIcon"></td><td class="bsExp" style="font-size:15px;">Supported by Internet Explorer with the prefix <span>-ms-</span></td></tr>
  <tr><td class="bsPreFirefox bsExpIcon"></td><td class="bsExp" style="font-size:15px;">Supported by Firefox with the prefix <span>-moz-</span></td></tr>
  <tr><td class="bsPreChrome bsExpIcon"></td><td class="bsExp" style="font-size:15px;">Supported by Google Chrome with the prefix <span>-webkit-</span></td></tr>
  <tr><td class="bsPreSafari bsExpIcon"></td><td class="bsExp" style="font-size:15px;">Supported by Safari with the prefix <span>-webkit-</span></td></tr>
  <tr><td class="bsPreOpera bsExpIcon"></td><td class="bsExp" style="font-size:15px;">Supported by Opera with the prefix <span>-webkit-</span></td></tr>
  </table>

<p>The numbers to the right of the browser icon indicates in which browser version the property was first supported.</p>
<table class="bsReference table">
  <tr><td class="bsIE bsExpIcon"></td><td class="bsExp" style="font-size:15px;">11</td></tr>
  <tr><td class="bsFirefox bsExpIcon"></td><td class="bsExp" style="font-size:15px;">26</td></tr>
  <tr><td class="bsChrome bsExpIcon"></td><td class="bsExp" style="font-size:15px;">29</td></tr>
  <tr><td class="bsSafari bsExpIcon"></td><td class="bsExp" style="font-size:15px;">6</td></tr>
  <tr><td class="bsOpera bsExpIcon"></td><td class="bsExp" style="font-size:15px;">23</td></tr>
</table>

<br>
<div class="chapter">
<div class="prev"><a class="chapter" href="css_colors_group.asp">&laquo; Previous</a></div>
<div class="next"><a class="chapter" href="css3_pr_align-content.asp">Next &raquo;</a></div>
</div>
</div>
<div class="w3-col l2 m12" id="right">

<div class="sidesection">
<div id="skyscraper">
<div id="div-gpt-ad-1422003450156-5">
<script>
 googletag.cmd.push(function() {
 googletag.display('div-gpt-ad-1422003450156-5');
 });
 </script> 
</div>
</div>
</div>

<div class="sidesection">
<h3>W3SCHOOLS EXAMS</h3>
<a target="_blank" href="http://www.w3schools.com/cert/default.asp">HTML, CSS, JavaScript, PHP, jQuery, and XML Certifications</a>
</div>

<div class="sidesection">
<h3>COLOR PICKER</h3>
<a href="/tags/ref_colorpicker.asp">
<img src="/images/colorpicker.gif" alt="colorpicker"></a>
</div>

<div class="sidesection">
<h3>SHARE THIS PAGE</h3>
<div class="w3-text-grey sharethis">
<script>
<!--
try{
loc=location.pathname;
if (loc.toUpperCase().indexOf(".ASP")<0) loc=loc+"default.asp";
txt='<a href="http://www.facebook.com/sharer.php?u=http://www.w3schools.com'+loc+'" target="_blank" title="Facebook"><span class="fa fa-facebook-square fa-2x"></span></a>';
txt=txt+'<a href="http://twitter.com/home?status=Currently reading http://www.w3schools.com'+loc+'" target="_blank" title="Twitter"><span class="fa fa-twitter-square fa-2x"></span></a>';
txt=txt+'<a href="https://plus.google.com/share?url=http://www.w3schools.com'+loc+'" target="_blank" title="Google+"><span class="fa fa-google-plus-square fa-2x"></span></a>';
document.write(txt);
} catch(e) {}
//-->
</script>
</div>
</div>

<div class="sidesection w3-text-grey sharethis">
<a href="javascript:void(0);" onclick="clickFBLike()" title="Like W3Schools on Facebook">
<span class="fa fa-thumbs-o-up fa-2x"></span></a>
<div id="fblikeframe">
<div id="popupframe"></div>
<div id="popupDIV"></div>
</div>
</div>       
</div>
</div>
<div class="footer w3-container w3-white">      

<hr>
<div style="overflow:auto">
<!-- BottomMediumRectangle -->
<div class="bottomad" id='div-gpt-ad-1422003450156-0'>
<script type='text/javascript'>
googletag.cmd.push(function() { googletag.display('div-gpt-ad-1422003450156-0'); });
</script>
</div>
<!-- RightBottomMediumRectangle -->
<div class="bottomad" id='div-gpt-ad-1422003450156-3'>
<script type='text/javascript'>
googletag.cmd.push(function() { googletag.display('div-gpt-ad-1422003450156-3'); });
</script>
</div>
</div>

<hr>
<div class="w3-row w3-center w3-small">
<div class="w3-col l3 m3 s12">
<a href="javascript:void(0);" onclick="displayError();return false" style="white-space:nowrap;">REPORT ERROR</a>
</div>
<div class="w3-col l3 m3 s12">
<a href="" target="_blank" onclick="printPage();return false;">PRINT PAGE</a>
</div>
<div class="w3-col l3 m3 s12">
<a href="/forum/default.asp" target="_blank">FORUM</a>
</div>
<div class="w3-col l3 m3 s12">
<a href="/about/default.asp" target="_top">ABOUT</a>
</div>
</div>
<hr>
<div class="w3-light-grey w3-padding w3-center" id="err_form" style="display:none;">
<span onclick="this.parentElement.style.display='none'" class="w3-closebtn">&times;</span>     
<h2>Your Suggestion:</h2>
<form>
<div class="w3-group">      
<label for="err_email">Your E-mail:</label>
<input class="w3-input" type="text" style="width:100%" id="err_email" name="err_email">
</div>
<div class="w3-group">      
<label for="err_email">Page address:</label>
<input class="w3-input" type="text" style="width:100%" id="err_url" name="err_url" disabled="disabled">
</div>
<div class="w3-group">
<label for="err_email">Description:</label>
<textarea rows="10" class="w3-input" id="err_desc" name="err_desc" style="width:100%;"></textarea>
</div>
<div class="form-group">        
<button type="button" onclick="sendErr()">Submit</button>
</div>
<br>
</form>
</div>
<div class="w3-container w3-light-grey w3-padding" id="err_sent" style="display:none;">
<span onclick="this.parentElement.style.display='none'" class="w3-closebtn">&times;</span>     
<h2>Thank You For Helping Us!</h2>
<p>Your message has been sent to W3Schools.</p>
</div>

<div class="w3-row w3-center w3-small">
<div class="w3-col l3 m6 s12">
<div class="top10">
<h4>Top 10 Tutorials</h4>
<a href="/html/default.asp">HTML Tutorial</a><br>
<a href="/css/default.asp">CSS Tutorial</a><br>
<a href="/js/default.asp">JavaScript Tutorial</a><br>
<a href="/sql/default.asp">SQL Tutorial</a><br>
<a href="/php/default.asp">PHP Tutorial</a><br>
<a href="/jquery/default.asp">jQuery Tutorial</a><br>
<a href="/bootstrap/default.asp">Bootstrap Tutorial</a><br>
<a href="/angular/default.asp">Angular Tutorial</a><br>
<a href="/aspnet/default.asp">ASP.NET Tutorial</a><br>
<a href="/xml/default.asp">XML Tutorial</a><br>
</div>
</div>
<div class="w3-col l3 m6 s12">
<div class="top10">
<h4>Top 10 References</h4>
<a href="/tags/default.asp">HTML Reference</a><br>
<a href="/cssref/default.asp">CSS Reference</a><br>
<a href="/jsref/default.asp">JavaScript Reference</a><br>
<a href="/browsers/default.asp">Browser Statistics</a><br>
<a href="/jsref/dom_obj_document.asp">HTML DOM</a><br>
<a href="/php/php_ref_array.asp">PHP Reference</a><br>
<a href="/jquery/jquery_ref_selectors.asp">jQuery Reference</a><br>
<a href="/tags/ref_colornames.asp">HTML Colors</a><br>
<a href="/charsets/default.asp">HTML Character Sets</a><br>
<a href="/xml/dom_nodetype.asp">XML Reference</a><br>
</div>
</div>
<div class="w3-col l3 m6 s12">
<div class="top10">
<h4>Top 10 Examples</h4>
<a href="/html/html_examples.asp">HTML Examples</a><br>
<a href="/css/css_examples.asp">CSS Examples</a><br>
<a href="/js/js_examples.asp">JavaScript Examples</a><br>
<a href="/js/js_dom_examples.asp">HTML DOM Examples</a><br>
<a href="/php/php_examples.asp">PHP Examples</a><br>
<a href="/jquery/jquery_examples.asp">jQuery Examples</a><br>
<a href="/xml/xml_examples.asp">XML Examples</a><br>
<a href="/asp/asp_examples.asp">ASP Examples</a><br>
<a href="/svg/svg_examples.asp">SVG Examples</a>
</div>
</div>
<div class="w3-col l3 m6 s12">
<div class="top10">
<h4>Web Certificates</h4>
<a href="/cert/default.asp">HTML Certificate</a><br>
<a href="/cert/default.asp">HTML5 Certificate</a><br>
<a href="/cert/default.asp">CSS Certificate</a><br>
<a href="/cert/default.asp">JavaScript Certificate</a><br>
<a href="/cert/default.asp">jQuery Certificate</a><br>
<a href="/cert/default.asp">PHP Certificate</a><br>
<a href="/cert/default.asp">Bootstrap Certificate</a><br>
<a href="/cert/default.asp">XML Certificate</a><br>
</div>
</div>        
</div>        

<hr>
<div class="w3-center w3-small">
W3Schools is optimized for learning, testing, and training. Examples might be simplified to improve reading and basic understanding.
Tutorials, references, and examples are constantly reviewed to avoid errors, but we cannot warrant full correctness of all content.
While using this site, you agree to have read and accepted our <a href="/about/about_copyright.asp">terms of use</a>,
<a href="/about/about_privacy.asp">cookie and privacy policy</a>.
<a href="/about/about_copyright.asp">Copyright 1999-2015</a> by Refsnes Data. All Rights Reserved.<br><br>
<a href="http://www.w3schools.com">
<img style="width:150px;height:28px;border:0" src="/images/w3schoolscom_gray.gif" alt="W3Schools.com"></a>
</div>
<br><br>
</div>
</div>
</div>

<div id="nav_tutorials_content" style="display:none;">
<span onclick='w3_close_nav("tutorials")' class='w3-closebtn w3-xlarge'>&times;</span>
<div class='w3-row-padding'>
<div class='w3-col l2 m4'>
<h3>HTML/CSS</h3>
<a href='/html/default.asp'>Learn HTML</a>
<a href='/css/default.asp'>Learn CSS</a>
<a href='/bootstrap/default.asp'>Learn Bootstrap</a>
<a href='/w3css/default.asp'>Learn W3.CSS</a>
</div>
<div class='w3-col l2 m4'>  
<h3>JavaScript</h3>
<a href='/js/default.asp'>Learn JavaScript</a>
<a href='/jquery/default.asp'>Learn jQuery</a>
<a href='/jquerymobile/default.asp'>Learn jQueryMobile</a>
<a href='/appml/default.asp'>Learn AppML</a>
<a href='/angular/default.asp'>Learn AngularJS</a>
<a href='/ajax/default.asp'>Learn AJAX</a>
<a href='/json/default.asp'>Learn JSON</a>
</div>
<div class='w3-col l2 m4'>   
<h3>HTML Graphics</h3>
<a href='/canvas/default.asp'>Learn Canvas</a>
<a href='/svg/default.asp'>Learn SVG</a>
<a href='/icons/default.asp'>Learn Icons</a>
<a href='/googleapi/default.asp'>Learn Google Maps</a>
</div>
<div class='w3-col l2 m4'>
<h3>Server Side</h3>
<a href='/sql/default.asp'>Learn SQL</a>
<a href='/php/default.asp'>Learn PHP</a>
<a href='/asp/default.asp'>Learn ASP</a>
<a href='/aspnet/default.asp'>Learn ASP.NET</a>
</div>
<div class='w3-col l2 m4'>
<h3>Web Building</h3>
<a href='/website/default.asp'>Web Building</a>
<a href='/browsers/default.asp'>Web Statistics</a>
<a href='/cert/default.asp'>Web Certificates</a>
</div>
<div class='w3-col l2 m4'>
<h3>XML Tutorials</h3>
<a href='/xml/default.asp'>Learn XML</a>
<a href='/schema/default.asp'>Learn Schema</a>
<a href='/xsl/default.asp'>Learn XSLT</a>
</div>
</div>
</div>
<div id="nav_references_content" style="display:none;">
<span onclick='w3_close_nav("references")' class='w3-closebtn w3-xlarge'>&times;</span>
<div class='w3-row-padding'>
<div class='w3-col l2 m4'>
<h3>HTML</h3>
<a href='/tags/default.asp'>HTML Tag Reference</a>
<a href='/tags/ref_eventattributes.asp'>HTML Event Reference</a>
<a href='/tags/ref_colornames.asp'>HTML Color Reference</a>
</div>
<div class='w3-col l2 m4'>
<h3>CSS</h3>
<a href='/cssref/default.asp'>CSS Reference</a>
<a href='/cssref/css_selectors.asp'>CSS Selector Reference</a>
<a href='/w3css/w3css_references.asp'>W3.CSS Reference</a>
<a href='/bootstrap/bootstrap_ref_css_text.asp'>Bootstrap Reference</a>
</div>
<div class='w3-col l2 m4'>
<h3>JavaScript</h3>
<a href='/jsref/default.asp'>JavaScript Reference</a>
<a href='/jsref/default.asp'>HTML DOM Reference</a>
<a href='/jquery/jquery_ref_selectors.asp'>jQuery Reference</a>
<a href='/jquerymobile/jquerymobile_ref_data.asp'>jQuery Mobile Reference</a>
<a href='/googleAPI/google_maps_ref.asp'>Google Maps Reference</a>
</div>
<div class='w3-col l2 m4'>
<h3>Server Side</h3>
<a href='/php/php_ref_array.asp'>PHP Reference</a>
<a href='/sql/sql_quickref.asp'>SQL Reference</a>
<a href='/asp/asp_ref_response.asp'>ASP Reference</a>
<a href='/aspnet/webpages_ref_classes.asp'>Razor Reference</a>
<a href='/aspnet/aspnet_refhtmlcontrols.asp'>ASP.NET Reference</a>
</div>
<div class='w3-col l2 m4'>
<h3>XML</h3>
<a href='/xml/dom_nodetype.asp'>XML Reference</a>
<a href='/xsl/xsl_w3celementref.asp'>XSLT Reference</a>
<a href='/schema/schema_elements_ref.asp'>Schema Reference</a>
<a href='/svg/svg_reference.asp'>SVG Reference</a>
</div>
<div class='w3-col l2 m4'>
<h3>Charsets</h3>
<a href='/charsets/default.asp'>HTML Character Sets</a>
<a href='/charsets/ref_html_ascii.asp'>HTML ASCII</a>
<a href='/charsets/ref_html_ansi.asp'>HTML ANSI</a>
<a href='/charsets/ref_html_ansi.asp'>HTML Windows-1252</a>
<a href='/charsets/ref_html_8859.asp'>HTML ISO-8859-1</a>
<a href='/charsets/ref_html_symbols.asp'>HTML Symbols</a>
<a href='/charsets/ref_html_utf8.asp'>HTML UTF-8</a>
</div>
</div>
</div>
<div id="nav_examples_content" style="display:none;">
<span onclick='w3_close_nav("examples")' class='w3-closebtn w3-xlarge'>&times;</span>
<div class='w3-row-padding'>
<div class='w3-col l3 m6'>
<h3>HTML/CSS</h3>
<a href='/html/html_examples.asp'>HTML Examples</a>
<a href='/css/css_examples.asp'>CSS Examples</a>
<a href='/w3css/w3css_examples.asp'>W3.CSS Examples</a>
</div>
<div class='w3-col l3 m6'>
<h3>JavaScript</h3>
<a href='/js/js_examples.asp' target='_top'>JavaScript Examples</a>
<a href='/js/js_dom_examples.asp' target='_top'>HTML DOM Examples</a>
<a href='/jquery/jquery_examples.asp' target='_top'>jQuery Examples</a>
<a href='/jquerymobile/jquerymobile_examples.asp' target='_top'>jQuery Mobile Examples</a>
<a href='/angular/angular_examples.asp' target='_top'>AngularJS Examples</a>
<a href='/ajax/ajax_examples.asp' target='_top'>AJAX Examples</a>
</div>
<div class='w3-col l3 m6'>
<h3>Server Side</h3>
<a href='/php/php_examples.asp' target='_top'>PHP Examples</a>
<a href='/asp/asp_examples.asp' target='_top'>ASP Examples</a>
<a href='/aspnet/webpages_examples.asp' target='_top'>Razor Examples</a>
<a href='/aspnet/aspnet_examples.asp' target='_top'>.NET Examples</a>
</div>
<div class='w3-col l3 m6'>
<h3>XML</h3>
<a href='/xml/xml_examples.asp' target='_top'>XML Examples</a>
<a href='/xsl/xsl_examples.asp' target='_top'>XSL Examples</a>
<a href='/xsl/xsl_examples.asp' target='_top'>XSLT Examples</a>
<a href='/xsl/xpath_examples.asp' target='_top'>XPath Examples</a>
<a href='/schema/schema_example.asp' target='_top'>Schema Examples</a>
<a href='/svg/svg_examples.asp' target='_top'>SVG Examples</a>
</div>
</div>
</div>
<div id='nav_translate_content' style="display:none">
<span onclick='w3_close_nav("translate")' class='w3-closebtn w3-xlarge'>&times;</span>
<br><br>Translate w3schools.com:
<div id='google_translate_element'></div>
<br>
</div>
<div id='nav_search_content' style="display:none">
<span onclick='w3_close_nav("search")' class='w3-closebtn w3-xlarge'>&times;</span>
<br><br>
<div class='searchdiv'>
Search w3schools.com:
<div id='googleSearch'><div class='gcse-search'></div></div>
</div>
<br>
</div>
<script src="/lib/w3schools_footer.js"></script>
<!--[if lt IE 9]>
<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>  
<![endif]-->
</body>
</html>