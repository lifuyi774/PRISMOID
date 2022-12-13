<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/inc/taglibs.jsp" %>
<!DOCTYPE html>
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<head>
    <meta charset="utf-8">
    <title>Help-PRISM</title>
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
                                        <li class="active"><a href="${path}/pdb/help">Help</a></li>
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
                    size="+2"> Help</font></b></span>
            </div>


            <section id="block1">
                <div class="well well-lg">
                    <h3 style="margin-top:0px;margin-bottom:16px;">1. Searching Database</h3>

                    <div>
                        <p>
                            Searching through PTMPDB is fairly straightforward. In PTMPDB, we have provided
                            several search options to facilitate fast data retrieval from PTMPDB.
                        </p>
                        <p>
                        <h4>(1) Searching with Uniprot ID and Database ID.</h4>
                        </p>
                        <p>
                            6473 proteins documented in PTMPDB can be mapped to UniProt database. In ID search, two
                            search methods are provided: search with UniProt ID and Database ID. UniProt ID is composed
                            by 6 letters and digits, while Database ID is a consecutive number. In total, there are
                            10477
                            UniProts in PTMPDB.
                        </p>
                    </div>
                    <div class="text-center"
                         style="width: 70%;margin-top:16px;margin-bottom:16px;padding-top:8px;padding-left:8px;padding-bottom:8px;padding-right:8px;background-color:#FFFFFF;margin-left:auto;margin-right: auto;">
                        <img style="max-width:100%;padding:8px;background-color:#FFF;" class="boxedImage"
                             src="${path}/browseStatic/images/help-searchID-1.png"/>

                    </div>
                    <div>
                        <p>
                        <h4>(2) Searching with Keywords.</h4>
                        </p>
                        <p>
                            In addition, we also have provided search by protein name. Users can get example keywords by
                            pressing "Example" button.
                        </p>

                        <div class="text-center"
                             style="width: 70%;margin-top:16px;margin-bottom:16px;padding-top:8px;padding-left:8px;padding-bottom:8px;padding-right:8px;background-color:#FFFFFF;margin-left:auto;margin-right: auto;">
                            <img style="max-width:100%;padding:8px;background-color:#FFF;" class="boxedImage"
                                 src="${path}/browseStatic/images/help-searchKW-1.png"/>
                        </div>

                    </div>
                </div>

            </section>

            <section id="block2">
                <div class="well well-lg">

                    <h3 style="margin-top:0px;margin-bottom:16px;">2. Overview of Protein and Structures</h3>

                    <div>
                        <p>
                            We used <a href="http://3dmol.csb.pitt.edu/" target="_blank">3Dmol</a> for the presentation
                            and visualization of protein structure . You can enter the detailed information page to view
                            the 3d structure.
                        </p>
                    </div>
                    <div class="text-center"
                         style="width: 781px;margin-top:16px;margin-bottom:16px;padding-top:8px;padding-left:8px;padding-bottom:8px;padding-right:8px;background-color:#FFFFFF;margin-left:auto;margin-right: auto;">
                        <img style="max-width:100%;padding:8px;background-color:#FFF;" class="boxedImage"
                             src="${path}/browseStatic/images/help-3dmol.png"/>
                    </div>

                </div>
            </section>

            <section id="block3">
                <div class="well well-lg">

                    <h3 style="margin-top:0px;margin-bottom:16px;">3. Protein Sequence Alignment</h3>

                    <div>
                        <p>
                            We conducted blast against UniProt database for all the protein entries in PTMPDB and
                            have extracted their alignment results. ALIGNMENT-TO-HTML (HTML-based interactive
                            visualization for annotated multiple sequence alignments) was used to display the alignment
                            results in PTMPDB (showed in the following figures).
                        </p>
                        <p>
                            You can view the alignment results in the detailed information page.
                        </p>
                    </div>

                    <div class="text-center"
                         style="width: 70%;margin-top:16px;margin-bottom:16px;padding-top:8px;padding-left:8px;padding-bottom:8px;padding-right:8px;background-color:#FFFFFF;margin-left:auto;margin-right: auto;">
                        <img style="max-width:100%;padding:8px;background-color:#FFF;" class="boxedImage"
                             src="${path}/browseStatic/images/help-alignment.png"/>
                    </div>

                </div>
            </section>

            <section id="block4">
                <div class="well well-lg">

                    <h3 style="margin-top:0px;margin-bottom:16px;">4. Disorder Picture</h3>

                    <div>
                        <p>
                            We provided disordered region prediction results from <a href="http://d2p2.pro/"
                                                                                     target="_blank">D2P2</a> database
                            for each protein entry if it can be mapped to the UniProt database. A link to show larger
                            figure is also provided in this section.
                        </p>
                    </div>

                    <div class="text-center"
                         style="width: 70%;margin-top:16px;margin-bottom:16px;padding-top:8px;padding-left:8px;padding-bottom:8px;padding-right:8px;background-color:#FFFFFF;margin-left:auto;margin-right: auto;">
                        <img style="max-width:100%;padding:8px;background-color:#FFF;" class="boxedImage"
                             src="${path}/browseStatic/images/help-disorder-single.png"/>
                    </div>
                    <div>
                        <p>
                            You can also select another UniProt belongs to the PDB chain to view.
                        </p>
                    </div>

                    <div class="text-center"
                         style="width: 70%;margin-top:16px;margin-bottom:16px;padding-top:8px;padding-left:8px;padding-bottom:8px;padding-right:8px;background-color:#FFFFFF;margin-left:auto;margin-right: auto;">
                        <img style="max-width:100%;padding:8px;background-color:#FFF;" class="boxedImage"
                             src="${path}/browseStatic/images/help-disorder-select.png"/>
                    </div>
                    <div>
                        <p>
                            If the thumbnail is not clear enough, you can open the full viewer by clicking the link
                            below the thumbnail.
                        </p>
                    </div>

                    <div class="text-center"
                         style="width: 48%;margin-top:16px;margin-bottom:16px;padding-top:8px;padding-left:8px;padding-bottom:8px;padding-right:8px;background-color:#FFFFFF;margin-left:auto;margin-right: auto;">
                        <img style="max-width:100%;padding:8px;background-color:#FFF;" class="boxedImage"
                             src="${path}/browseStatic/images/help-disorder-link.png"/>
                    </div>

                </div>
            </section>

            <section id="block5">
                <div class="well well-lg">

                    <h3 style="margin-top:0px;margin-bottom:16px;">5. Protein Feature View</h3>

                    <div>
                        <p>
                            We provide a clearer visualization of protein sequences using the <a href=""
                                                                                                 target="_blank">Protein
                            Feature View</a>. You can choose UniProt to view another feature.
                        </p>
                    </div>

                    <div class="text-center"
                         style="width: 70%;margin-top:16px;margin-bottom:16px;padding-top:8px;padding-left:8px;padding-bottom:8px;padding-right:8px;background-color:#FFFFFF;margin-left:auto;margin-right: auto;">
                        <img style="max-width:100%;padding:8px;background-color:#FFF;" class="boxedImage"
                             src="${path}/browseStatic/images/help-pfv.png"/>
                    </div>

                </div>
            </section>

            <section id="block6">
                <div class="well well-lg">

                    <h3 style="margin-top:0px;margin-bottom:16px;">6. Sequence Viewer</h3>

                    <div>
                        <p>
                            In addition, we use <a href="https://github.com/biojava/rcsb-sequenceviewer"
                                                   target="_blank">rcsb sequence viewer </a> to show you the PDB
                            information in a different way.
                        </p>
                    </div>

                    <div class="text-center"
                         style="width: 70%;margin-top:16px;margin-bottom:16px;padding-top:8px;padding-left:8px;padding-bottom:8px;padding-right:8px;background-color:#FFFFFF;margin-left:auto;margin-right: auto;">
                        <img style="max-width:100%;padding:8px;background-color:#FFF;" class="boxedImage"
                             src="${path}/browseStatic/images/help-sequenceview.png"/>
                    </div>

                </div>
            </section>

            <section id="block7">
                <div class="well well-lg">

                    <h3 style="margin-top:0px;margin-bottom:16px;">7. Mutation Information</h3>

                    <div>
                        <p>
                            We provide the mutation information associated with the PTMs.
                        </p>
                    </div>

                    <div class="text-center"
                         style="width: 70%;margin-top:16px;margin-bottom:16px;padding-top:8px;padding-left:8px;padding-bottom:8px;padding-right:8px;background-color:#FFFFFF;margin-left:auto;margin-right: auto;">
                        <img style="max-width:100%;padding:8px;background-color:#FFF;" class="boxedImage"
                             src="${path}/browseStatic/images/help-mutation.png"/>
                    </div>

                </div>
            </section>

            <section id="block8">
                <div class="well well-lg">

                    <h3 style="margin-top:0px;margin-bottom:16px;">8. Submitting New Protein</h3>
                    <p>
                        On <a href="${path}/pdb/submission" target="_blank">SUBMISSION</a> webpage, users can submit
                        their new proteins information. Each field marked with red asterisk is required. We will
                        commence on submission request once we receive user’s submission and will contact the user if
                        needed.
                    </p>

                </div>
            </section>

        </div>

    </section>


</section>
<footer id="footer">

    <!-- .footer start -->

    <!-- .footer end -->

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
