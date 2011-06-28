#!/bin/sh

head='
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN"
    "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Archive</title>
<link rel="stylesheet" href="'$path'styles/xhtml11.css" type="text/css" />
<link rel="stylesheet" href="'$path'styles/layout2.css" type="text/css" />
</head>
<body>
<div id="layout-banner-box">
<div id="layout-banner">
  <div id="layout-title">AsciiBlog</div>
  <div id="layout-description">Static Blogging with Asciidoc!</div>
</div>
</div>
<div id="layout-menu-box">
<div id="layout-menu">
  <div>&#187;<a href="'$path'index.html">Home</a></div>
  <div>&#187;<a href="'$path'archive.html">Archive</a></div>
  <div>&#187;<a href="'$path'about.html">man&nbsp;Master_ex</a></div>
</div>
</div>
<div id="layout-content-box">
<div id="layout-content">
<div id="header">
<h1>Archive</h1>
</div>
<div id="preamble">
<div class="sectionbody">
<div class="paragraph">
'
tail='
<div id="footer">
<div id="footer-text">
Unless otherwise expressly stated, all original material on this page created
by Periklis Ntanasis is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-sa/3.0/gr/deed.en">Creative Commons Attribution-Share Alike 3.0 Greece License</a>.
</div>

<div id="footer-badges">
<a href="http://validator.w3.org/check?uri=referer">
  <img style="border:0;width:88px;height:31px"
    src="http://www.w3.org/Icons/valid-xhtml11-blue"
    alt="Valid XHTML 1.1" height="31" width="88" />
</a>
<a href="http://jigsaw.w3.org/css-validator/">
  <img style="border:0;width:88px;height:31px"
    src="http://jigsaw.w3.org/css-validator/images/vcss-blue"
    alt="Valid CSS!" />
</a>
<a rel="license" href="http://creativecommons.org/licenses/by-sa/3.0/gr/deed.en">
<img style="border:none; width:110px; height:32px;" alt="Creative Commons License" style="border-width: 0"
src="http://creativecommons.org/images/public/somerights20.png"/>
</a>
</div>
</div>
</div>
</div>
</body>
</html>

'
