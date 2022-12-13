<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/inc/taglibs.jsp" %>
<!DOCTYPE html>
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<head>
    <meta charset="utf-8">
    <title>Download-PRISM</title>
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Mobile Meta -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Favicon -->
    <link rel="shortcut icon" href="${path}/browseStatic/images/favicon.png">

    <link href="${path}/browseStatic/bootstrap/css/bootstrap.css" rel="stylesheet">
    <link href="${path}/browseStatic/fonts/font-awesome/css/font-awesome.css" rel="stylesheet">
    <link href="${path}/browseStatic/css/animations.css" rel="stylesheet">
    <link href="${path}/browseStatic/css/style.css" rel="stylesheet">
    <link href="${path}/browseStatic/css/custom.css" rel="stylesheet">
    <link href="${path}/browseStatic/css/timeline.css" rel="stylesheet">
</head>

<body class="no-trans fixed-header-on">
<!-- scrollToTop -->
<div class="scrollToTop"><i class="icon-up-open-big"></i></div>

<!-- header start -->
<header class="header fixed clearfix navbar navbar-fixed-top">
    <div class="container">
        <div class="row">
            <div class="col-md-4">

                <!-- header-left start -->
                <div class="header-left">

                    <!-- logo -->
                    <div class="logo smooth-scroll">
                        <a href="${path}/index"><img id="logo" src="${path}/browseStatic/images/logo.png"
                                                     alt="Worthy"></a>
                    </div>

                    <!-- name-and-slogan -->
                    <div class="logo-section smooth-scroll">
                        <div class="brand"><a href="${path}/index">PRISM</a></div>
                    </div>

                </div>
                <!-- header-left end -->

            </div>
            <div class="col-md-8">

                <!-- header-right start -->
                <div class="header-right">

                    <!-- main-navigation start -->
                    <div class="main-navigation animated">

                        <!-- navbar start -->
                        <nav class="navbar navbar-default" role="navigation">
                            <div class="container-fluid">

                                <!-- Toggle get grouped for better mobile display -->
                                <div class="navbar-header">
                                    <button type="button" class="navbar-toggle" data-toggle="collapse"
                                            data-target="#navbar-collapse-1">
                                        <span class="sr-only">Toggle navigation</span>
                                        <span class="icon-bar"></span>
                                        <span class="icon-bar"></span>
                                        <span class="icon-bar"></span>
                                    </button>
                                </div>

                                <!-- Collect the nav links, forms, and other content for toggling -->
                                <div class="collapse navbar-collapse scrollspy smooth-scroll" id="navbar-collapse-1">
                                    <ul class="nav navbar-nav navbar-right">
                                        <li><a href="${path}/index">Home</a></li>
                                        <li><a href="${path}/pdb/statistics">Statistics</a></li>
                                        <li><a href="${path}/pdb/search">Search</a></li>

                                        <li><a href="${path}/pdb/browse">Browse</a></li>
                                        <li class="active"><a href="${path}/pdb/download">Download</a></li>
                                        <li><a href="${path}/pdb/help">Help</a></li>
                                        <li><a href="${path}/pdb/contact">Contact</a></li>
                                    </ul>
                                </div>

                            </div>
                        </nav>
                        <!-- navbar end -->

                    </div>
                    <!-- main-navigation end -->

                </div>
                <!-- header-right end -->

            </div>
        </div>
    </div>
</header>
<!-- header end -->


<section class="hero-caption secPadding" id="father-section">


    <!-- section start -->
    <section class="section clearfix no-view secPadding" data-animation-effect="fadeIn" style="text-align: left;">


        <div id="main-content" style="padding-left:32px; margin-right:32px">

            <div style="padding-bottom:16px;">
                <i class="icon-list icon-2x">&nbsp;</i> <span style="margin-top:0px;margin-bottom:0px;"><b><font
                    size="+2"> <a href="${path}/pdb/download">Download</a>>Timeline</font></b></span>
            </div>


            <section id="block1">
                <div class="well well-lg" style="padding-top:0px">

                    <div class="row">
                        <div class="col-sm-10">
                            <h3>Every update of our project and prior versions</h3>
                        </div>
                        <div class="col-sm-2 text-right" style="margin-top:10px">
                            <h4><a onclick="window.scrollTo(0,0);"><i class="glyphicon glyphicon-arrow-up"></i> Top</a>
                            </h4>
                        </div>
                    </div>

                    <div style="width: 100%;margin-top:16px;margin-bottom:16px;padding-top:16px;padding-left:40px;padding-bottom:16px;padding-right:40px;background-color:#FFFFFF;margin-left:auto;margin-right: auto;">

                        <%--<div class="col-md-12">--%>
                        <div class="row">
                            <h2>Usage example</h2>
                            <div class="timeline timeline-line-dotted">
				<span class="timeline-label">
					<span class="label label-primary">2018.09.30</span>
				</span>
                                <div class="timeline-item">
                                    <div class="timeline-point timeline-point-success">
                                        <i class="fa fa-money"></i>
                                    </div>
                                    <div class="timeline-event">
                                        <div class="timeline-heading">
                                            <h4>Add Statistics Affected by Mutation</h4>
                                        </div>
                                        <div class="timeline-body">
                                            <p>Statistics affected by mutation was added to our project to provide a new
                                                level of the general overview of the DB.</p>
                                        </div>
                                        <div class="timeline-footer">
                                            <p class="text-right">2018.09.30 10:00</p>
                                        </div>
                                    </div>
                                </div>
                                <span class="timeline-label">
					<span class="label label-primary">2018.08.22</span>
				</span>
                                <div class="timeline-item">
                                    <div class="timeline-point timeline-point-success">
                                        <i class="fa fa-money"></i>
                                    </div>
                                    <div class="timeline-event">
                                        <div class="timeline-heading">
                                            <h4>Removed The Redundant Data</h4>
                                        </div>
                                        <div class="timeline-body">
                                            <p>We removed the redundant data - the Uniprots of every entry.<br>You can
                                                download the <a href=""> new data</a> formatted with SQL.</p>
                                        </div>
                                        <div class="timeline-footer">
                                            <p class="text-right">2018.08.22 09:00</p>
                                        </div>
                                    </div>
                                </div>
                                <span class="timeline-label">
					<span class="label label-primary">2018.08.20</span>
				</span>
                                <div class="timeline-item">
                                    <div class="timeline-point timeline-point-success">
                                        <i class="fa fa-money"></i>
                                    </div>
                                    <div class="timeline-event">
                                        <div class="timeline-heading">
                                            <h4>Update Mutation Data</h4>
                                        </div>
                                        <div class="timeline-body">
                                            <p>We updated mutation data, , and we provide a more improved set of
                                                data.<br> You can download the <a href=""> new data</a> formatted with
                                                SQL</p>
                                        </div>
                                        <div class="timeline-footer">
                                            <p class="text-right">2018.08.20 08:00</p>
                                        </div>
                                    </div>
                                </div>
                                <span class="timeline-label">
					<span class="label label-primary">2018.07.30</span>
				</span>
                                <div class="timeline-item">
                                    <div class="timeline-point timeline-point-success">
                                        <i class="fa fa-money"></i>
                                    </div>
                                    <div class="timeline-event">
                                        <div class="timeline-heading">
                                            <h4>New Function - Download</h4>
                                        </div>
                                        <div class="timeline-body">
                                            <p>The new function has been added to the project! The data can be
                                                downloaded from the <a href="${path}/pdb/download" target="_blank">
                                                    download page.</a></p>
                                        </div>
                                        <div class="timeline-footer">
                                            <p class="text-right">2018.07.30 14:00</p>
                                        </div>
                                    </div>
                                </div>
                                <span class="timeline-label">
					<span class="label label-primary">2018.07.26</span>
				</span>
                                <div class="timeline-item">
                                    <div class="timeline-point timeline-point-success">
                                        <i class="fa fa-money"></i>
                                    </div>
                                    <div class="timeline-event">
                                        <div class="timeline-heading">
                                            <h4>Add Mutation Data</h4>
                                        </div>
                                        <div class="timeline-body">
                                            <p>A new level added to the entry page to provide a more accurate overview
                                                of the protein.<br>You can download the <a href=""> new data</a>
                                                formatted with SQL.</p>
                                        </div>
                                        <div class="timeline-footer">
                                            <p class="text-right">2018.07.30 14:00</p>
                                        </div>
                                    </div>
                                </div>
                                <span class="timeline-label">
					<span class="label label-primary">2018.04.06</span>
				</span>
                                <div class="timeline-item">
                                    <div class="timeline-point timeline-point-success">
                                        <i class="fa fa-money"></i>
                                    </div>
                                    <div class="timeline-event">
                                        <div class="timeline-heading">
                                            <h4>Fix the 3Dmol</h4>
                                        </div>
                                        <div class="timeline-body">
                                            <p>After fixing the 3Dmol, the PRISM can provide the improved function of
                                                the structure overview by 3Dmol.</p>
                                        </div>
                                        <div class="timeline-footer">
                                            <p class="text-right">2018.04.06 15:00</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="timeline-item">
                                    <div class="timeline-point timeline-point-success">
                                        <i class="fa fa-money"></i>
                                    </div>
                                    <div class="timeline-event">
                                        <div class="timeline-heading">
                                            <h4>Project started</h4>
                                        </div>
                                        <div class="timeline-body">
                                            <p>Project started with only index and 3Dmol</p>
                                        </div>
                                        <div class="timeline-footer">
                                            <p class="text-right">2018.04.06 10:00</p>
                                        </div>
                                    </div>
                                </div>
                                <span class="timeline-label">
					<a href="#" class="btn btn-default" title="More...">
						<i class="fa fa-fw fa-history"></i>
					</a>
				</span>
                            </div>
                        </div>
                    </div>


                </div>

            </section>


        </div>

    </section>


</section>
<footer>
    <!-- .subfooter start -->
    <%@ include file="/WEB-INF/inc/footer.jsp" %>
    <!-- .subfooter end -->

</footer>
<!-- footer end -->

<!-- JavaScript -->
<script type="text/javascript" src="${path}/browseStatic/plugins/jquery.min.js"></script>
<script type="text/javascript" src="${path}/browseStatic/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${path}/browseStatic/plugins/modernizr.js"></script>
<script type="text/javascript" src="${path}/browseStatic/plugins/isotope/isotope.pkgd.min.js"></script>
<script type="text/javascript" src="${path}/browseStatic/plugins/jquery.backstretch.min.js"></script>
<script type="text/javascript" src="${path}/browseStatic/plugins/jquery.appear.js"></script>
<script src="${path}/browseStatic/contact/jqBootstrapValidation.js"></script>
<script src="${path}/browseStatic/contact/contact_me.js"></script>

<!-- Custom Scripts -->
<script type="text/javascript" src="${path}/browseStatic/js/browseCustom.js"></script>

</body>
</html>
