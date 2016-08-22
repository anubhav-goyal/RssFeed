<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!--> <html lang="en"><!--<![endif]-->
<head>
    <title><g:layoutTitle/></title>
    <!-- Meta -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="favicon.ico">
    <link href='http://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic' rel='stylesheet'
          type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Covered+By+Your+Grace' rel='stylesheet' type='text/css'>
    <!-- Global CSS -->
    <link rel="stylesheet" href="${resource(dir: "assets/plugins/bootstrap/css", file: "bootstrap.min.css")}"/>
    <!-- Plugins CSS -->
    <link rel="stylesheet" href="${resource(dir: "assets/plugins/font-awesome/css", file: "font-awesome.css")}"/>
    <link rel="stylesheet" href="${resource(dir: "js/flexslider", file: "flexslider.css")}">
    <link rel="stylesheet" href="${resource(dir: "assets/plugins/animate-css", file: "animate.min.css")}"/>
    <!-- Theme CSS -->
    <link id="theme-style" rel="stylesheet" href="${resource(dir: "assets/css", file: "styles.css")}"/>
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
</head>

<body data-spy="scroll">
<!-- ******HEADER****** -->
<header id="top" class="header navbar-fixed-top">
    <div class="container">
        <h1 class="logo pull-left">
            <a class="scrollto" href="#promo">
                <img id="logo-image" class="logo-image" src="${resource(dir: "assets/images/logo", file: "logo.png")}"
                     alt="Logo">
                <span class="logo-title">Feeds</span>
            </a>
        </h1><!--//logo-->
        <nav id="main-nav" class="main-nav navbar-right" role="navigation">
            <div class="navbar-header">
                <button class="navbar-toggle" type="button" data-toggle="collapse" data-target="#navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button><!--//nav-toggle-->
            </div><!--//navbar-header-->
            <div class="navbar-collapse collapse" id="navbar-collapse">
                <ul class="nav navbar-nav">
                    <li class="nav-item"><a
                            href="${g.createLink(controller: "urlFeed", action: "index")}">Home</a></li>
                    <li class="nav-item dropdown"><a href="#"
                                                     class="dropdown-toggle" data-toggle="dropdown" role="button"
                                                     aria-haspopup="true" aria-expanded="false">URL<span
                                class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li class="nav-item"><a
                                    href="${g.createLink(controller: "urlFeed", action: "create")}">Add New</a></li>
                            <li class="nav-item"><a
                                    href="${g.createLink(controller: "urlFeed", action: "delete")}">Delete</a></li>
                        </ul>
                    </li>
                    <li class="nav-item dropdown"><a href="#"
                                                     class="dropdown-toggle" data-toggle="dropdown" role="button"
                                                     aria-haspopup="true" aria-expanded="false">Feeds<span
                                class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li class="nav-item"><a
                                    href="${g.createLink(controller: "rssFeed", action: "feedList")}">All Feeds</a></li>
                            <li class="nav-item"><a
                                    href="${g.createLink(controller: "urlFeed", action: "urlList")}">Choose From List</a>
                            </li>
                        </ul>
                    </li>
                </ul><!--//nav-->
            </div><!--//navabr-collapse-->
        </nav><!--//main-nav-->
    </div>
</header><!--//header-->

<g:layoutBody/>

<footer class="footer">
    <div class="container">
        <small class="copyright pull-left">FinTech &copy; 2016</small>
        <ul class="links list-inline">
            <li><a href="#">Terms</a></li>
            <li><a href="#">Privacy</a></li>
        </ul>
    </div>
</footer><!--//footer-->

<!-- Javascript -->
<g:javascript src="jquery-1.12.3.min.js"/>
<g:javascript src="isMobile/isMobile.min.js"/>
<g:javascript src="jquery.easing.1.3.js"/>
<g:javascript src="bootstrap.min.js"/>
<g:javascript src="jquery-inview/jquery.inview.min.js"/>
<g:javascript src="FitVids/jquery.fitvids.js"/>
<g:javascript src="jquery-scrollTo/jquery.scrollTo.min.js"/>
<g:javascript src="jquery-placeholder/jquery.placeholder.js"/>
<g:javascript src="flexslider/jquery.flexslider-min.js"/>
<g:javascript src="jquery-match-height/jquery.matchHeight-min.js"/>
<g:javascript src="main.js"/>
<!--[if !IE]>-->
<g:javascript src="animations.js"/>
<!--<![endif]-->
</body>
</html>
