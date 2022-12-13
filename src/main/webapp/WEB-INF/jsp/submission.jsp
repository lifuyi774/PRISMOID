<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/inc/taglibs.jsp" %>
<!DOCTYPE html>
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<head>
    <meta charset="utf-8">
    <title>Contact-PRISM</title>
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
                                        <li><a href="${path}/pdb/download">Download</a></li>
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
                    size="+2"> Contact</font></b></span>
            </div>


            <section id="block1">
                <div class="well-lg"
                     style="border: 1px solid #e3e3e3;min-height: 20px;padding: 20px;margin-bottom: 20px;">

                    <ul id="myTab" class="nav nav-tabs">
                        <li class="active">
                            <a href="#easySubmission" data-toggle="tab">
                                Quick Submission
                            </a>
                        </li>
                        <li>
                            <a href="#submission" data-toggle="tab">
                                Formal Submission
                            </a>
                        </li>
                    </ul>

                    <div id="myTabContent" class="tab-content">

                        <div class="tab-pane fade in active" id="easySubmission"
                             style="border-left: 1px solid #e3e3e3;border-right: 1px solid #e3e3e3;border-bottom: 1px solid #e3e3e3;min-height: 50px;padding: 10px 15px;">

                            <div style="width: 100%;margin-top:16px;margin-bottom:16px;padding-top:16px;padding-left:16px;padding-bottom:16px;padding-right:16px;background-color:#FFFFFF;margin-left:auto;margin-right: auto;">
                                <form action="${path}/pdb/commitEasySubmission" class="form-horizontal">
                                    <fieldset style="margin-bottom:16px;">

                                        <div class="form-group">
                                            <label for="firstname" class="col-sm-2">Email</label>
                                            <div class="col-sm-3">
                                                <input type="email" class="form-control" id="email" name="email"
                                                       placeholder="Please Input Your Email">
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <label for="firstname" class="col-sm-2">Subject<span
                                                    style="color:red">*</span></label>
                                            <div class="col-sm-3">
                                                <input type="text" class="form-control" id="subject" name="subject"
                                                       required
                                                       placeholder="Please Input A Subject">
                                            </div>
                                        </div>


                                        <div class="form-group">
                                            <label for="firstname" class="col-sm-2">Description<span
                                                    style="color:red">*</span></label>
                                            <div class="col-sm-10">
                                                <textarea class="form-control" id="description" name="description"
                                                          rows="4" required
                                                          placeholder="Please Input A Description"></textarea>
                                            </div>
                                        </div>

                                    </fieldset>

                                    <div class="form-actions">
                                        <button type="submit" class="btn btn-primary">Submit</button>
                                        <button type="reset" class="btn btn-primary" data-toggle="tooltip"
                                                title="Caution: Reset will clear all the inputs!">Reset
                                        </button>
                                    </div>
                                </form>
                            </div>

                        </div>

                        <div class="tab-pane fade" id="submission"
                             style="border-left: 1px solid #e3e3e3;border-right: 1px solid #e3e3e3;border-bottom: 1px solid #e3e3e3;min-height: 50px;padding: 10px 15px;">

                            <div style="width: 100%;margin-top:16px;margin-bottom:16px;padding-top:16px;padding-left:16px;padding-bottom:16px;padding-right:16px;background-color:#FFFFFF;margin-left:auto;margin-right: auto;">
                                <form action="${path}/pdb/commitFullSubmission" class="form-horizontal">
                                    <fieldset style="margin-bottom:16px;">
                                        <legend><i class="icon-arrow-right"></i> Contact Information</legend>
                                        <div class="form-group">
                                            <label for="firstname" class="col-sm-2">Surname<span
                                                    style="color:red">*</span></label>
                                            <div class="col-sm-3">
                                                <input type="text" class="form-control" id="surname" name="surname"
                                                       required
                                                       placeholder="Please Input Your Surname">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="firstname" class="col-sm-2">Given Name<span
                                                    style="color:red">*</span></label>
                                            <div class="col-sm-3">
                                                <input type="text" class="form-control" id="givenName" name="givenName"
                                                       required
                                                       placeholder="Please Input Your Given Name">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="firstname" class="col-sm-2">Organization<span style="color:red">*</span></label>
                                            <div class="col-sm-3">
                                                <input type="text" class="form-control" id="organization"
                                                       name="organization" required
                                                       placeholder="Please Input Your Organization Information">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="firstname" class="col-sm-2">Email<span
                                                    style="color:red">*</span></label>
                                            <div class="col-sm-3">
                                                <input type="email" class="form-control" id="email" name="email"
                                                       required
                                                       placeholder="Please Input Your Email">
                                            </div>
                                        </div>

                                    </fieldset>

                                    <fieldset style="margin-bottom:16px;">
                                        <legend><i class="icon-arrow-right"></i> Protein General Information</legend>

                                        <div class="form-group">
                                            <label for="firstname" class="col-sm-2">PDBChain<span
                                                    style="color:red">*</span></label>
                                            <div class="col-sm-3">
                                                <input type="text" class="form-control" id="PDBChain" name="PDBChain"
                                                       required
                                                       placeholder="Please Input PDBChain">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="firstname" class="col-sm-2">PDBPosition<span
                                                    style="color:red">*</span></label>
                                            <div class="col-sm-3">
                                                <input type="text" class="form-control" id="PDBPosition"
                                                       name="PDBPosition" required
                                                       placeholder="Please Input PDBPosition">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="firstname" class="col-sm-2">UniProtID<span
                                                    style="color:red">*</span></label>
                                            <div class="col-sm-3">
                                                <input type="text" class="form-control" id="UniProtID" name="UniProtID"
                                                       required
                                                       placeholder="Please Input Gene Name">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="firstname" class="col-sm-2">UniProt Position</label>
                                            <div class="col-sm-3">
                                                <input type="text" class="form-control" id="UniProtPosition"
                                                       name="UniProtPosition"
                                                       placeholder="Please Input UniProt Position">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="firstname" class="col-sm-2">PTMType<span
                                                    style="color:red">*</span></label>
                                            <div class="col-sm-3">
                                                <input type="text" class="form-control" id="PTMType" name="PTMType"
                                                       required
                                                       placeholder="Please Input PTMType">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="firstname" class="col-sm-2">Resolution<span
                                                    style="color:red">*</span></label>
                                            <div class="col-sm-3">
                                                <input type="text" class="form-control" id="Resolution"
                                                       name="Resolution" required
                                                       placeholder="Please Input Resolution">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="firstname" class="col-sm-2">UniProtKBID<span
                                                    style="color:red">*</span></label>
                                            <div class="col-sm-3">
                                                <input type="text" class="form-control" id="UniProtKBID"
                                                       name="UniProtKBID" required
                                                       placeholder="Please Input UniProtKBID">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="firstname" class="col-sm-2">Protein Name<span style="color:red">*</span></label>
                                            <div class="col-sm-3">
                                                <input type="text" class="form-control" id="ProteinName"
                                                       name="ProteinName" required
                                                       placeholder="Please Input Protein Name">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="firstname" class="col-sm-2">GeneName<span
                                                    style="color:red">*</span></label>
                                            <div class="col-sm-3">
                                                <input type="text" class="form-control" id="GeneName" name="GeneName"
                                                       required
                                                       placeholder="Please Input GeneName">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="firstname" class="col-sm-2">Organism<span
                                                    style="color:red">*</span></label>
                                            <div class="col-sm-3">
                                                <input type="text" class="form-control" id="Organism" name="Organism"
                                                       required
                                                       placeholder="Please Input Organism">
                                            </div>
                                        </div>

                                    </fieldset>

                                    <div class="form-actions">
                                        <button type="submit" class="btn btn-primary">Submit</button>
                                        <button type="reset" class="btn btn-primary" data-toggle="tooltip"
                                                title="Caution: Reset will clear all the inputs!">Reset
                                        </button>
                                    </div>
                                </form>
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

<!-- Custom Scripts -->
<script type="text/javascript" src="${path}/browseStatic/js/browseCustom.js"></script>

</body>
</html>
