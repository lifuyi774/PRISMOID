<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/inc/taglibs.jsp" %>
<%--
  Created by IntelliJ IDEA.
  User: Firstmetcs
  Date: 2018/5/18/0018
  Time: 16:58
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<head>
    <meta charset="utf-8">
    <title>Home-PRISM</title>
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
    <script type="text/javascript" src="${path}/browseStatic/plugins/jquery.min.js"></script>

    <style>
        table,
        tbody,
        tfoot,
        thead,
        tr,
        th,
        td {
            margin: 0;
            padding: 0;
            outline: 0;
            /*font-size: 100%;*/
            font-size: 30px;
            /*vertical-align: baseline;*/
            vertical-align: middle;
            background: transparent;
            border-collapse: collapse;
            border-spacing: 0;
            border: 0px;
        }

        .tablebox {
            width: 100%;
            height: 400px;
            overflow: hidden;
            margin: 50px auto;
        }

        .tablebox table {
            width: 100%;
        }

        .tablebox table th,
        .tablebox table td {
            font-size: 16px;
            text-align: center;
            line-height: 36px;
        }

        .tablebox table th {
            color: #2584e3;
            background-color: #f6f6f6;
        }

        .tablebox table td img {
            display: inline-block;
            vertical-align: middle;
        }

        .tablebox table tbody tr:nth-child(even) {
            background-color: #f6f6f6;
        }

        .tablebox.table_md table td,
        .tablebox.table_md table th {
            line-height: 40px;
        }
    </style>
    <script>
        // 参数1 tableID,参数2 div高度，参数3 速度，参数4 tbody中tr几条以上滚动
        $(function () {
            tableScroll('tableId', 400, 30, 10)
            var MyMarhq;

            function tableScroll(tableid, hei, speed, len) {
                clearTimeout(MyMarhq);
                $('#' + tableid).parent().find('.tableid_').remove()
                $('#' + tableid).parent().prepend(
                    '<table class="tableid_"><thead>' + $('#' + tableid + ' thead').html() + '</thead></table>'
                ).css({
                    'position': 'relative',
                    'overflow': 'hidden',
                    'height': hei + 'px'
                })
                $(".tableid_").find('th').each(function (i) {
                    $(this).css('width', $('#' + tableid).find('th:eq(' + i + ')').width());
                });
                $(".tableid_").css({
                    'position': 'absolute',
                    'top': 0,
                    'left': 0,
                    'z-index': 9
                })
                $('#' + tableid).css({
                    'position': 'absolute',
                    'top': 0,
                    'left': 0,
                    'z-index': 1
                })

                if ($('#' + tableid).find('tbody tr').length > len) {
                    $('#' + tableid).find('tbody').html($('#' + tableid).find('tbody').html() + $('#' + tableid).find('tbody').html());
                    $(".tableid_").css('top', 0);
                    $('#' + tableid).css('top', 0);
                    var tblTop = 0;
                    var outerHeight = $('#' + tableid).find('tbody').find("tr").outerHeight();

                    function Marqueehq() {
                        if (tblTop <= -outerHeight * $('#' + tableid).find('tbody').find("tr").length) {
                            tblTop = 0;
                        } else {
                            tblTop -= 1;
                        }
                        $('#' + tableid).css('margin-top', tblTop + 'px');
                        clearTimeout(MyMarhq);
                        MyMarhq = setTimeout(function () {
                            Marqueehq()
                        }, speed);
                    }

                    MyMarhq = setTimeout(Marqueehq, speed);
                    $('#' + tableid).find('tbody').hover(function () {
                        clearTimeout(MyMarhq);
                    }, function () {
                        clearTimeout(MyMarhq);
                        if ($('#' + tableid).find('tbody tr').length > len) {
                            MyMarhq = setTimeout(Marqueehq, speed);
                        }
                    })
                }

            }
        })
    </script>
</head>

<body class="no-trans">
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
                        <a href="#banner"><img id="logo" src="${path}/browseStatic/images/logo.png" alt="Worthy"></a>
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
                                <div class="collapse navbar-collapse scrollspy smooth-scroll">
                                    <ul class="nav navbar-nav navbar-right">
                                        <li class="active"><a href="${path}/index">Home</a></li>
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

<!-- banner start -->
<div id="banner" class="banner">
    <div class="banner-image"></div>
    <div class="banner-caption">
        <div class="container">
            <div class="row">
                <div class="caption-data" style="margin-top: 0px; opacity: 1;" data-animation-effect="fadeIn">
                    <h1>prism - <u>PR</u>ote<u>I</u>n <u>S</u>tructure <u>M</u>odification database</h1>
                    <h3 class="padding-top30">A Protein Structure DataBase Post Translational Modification.</h3>
                    <div class="padding-top60 contact-form scrollspy smooth-scroll" id="navbar-collapse-1">
                        <a class="btn cta-button" href="#services">Learn More</a>
                        &nbsp;&nbsp;
                        <a class="btn cta-button" href="${path}/pdb/browse">Explore it</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- banner end -->
<section class="hero-caption secPadding">

    <div class="container">

        <div class="row " style="margin-top: 0px;">
            <div class="col-sm-12">
                <h2>Welcome to <strong>PRISM</strong></h2>
                <p>If you find something helpful or somewhere can be improved, please <a href="${path}/pdb/contact">contact
                </a> us</p>
            </div>

        </div>

    </div>

</section>
<!-- section start -->
<section class="section secPadding">
    <div class="container no-view" data-animation-effect="fadeIn">
        <h1 id="services" class="title text-center">Features</h1>
        <div class="space"></div>
        <div class="row">
            <div class="col-md-4">
                <div class="media block-list">
                    <div class="media-left">
                        <i class="fa fa-cloud-download"></i>
                    </div>
                    <div class="media-body">
                        <h3 class="media-heading">Data download</h3>
                        <blockquote>
                            <p>PRISM allows users to <a href="${path}/pdb/download">
                                download</a> the SQL file of the database, calculated DSSP feature files, calculated
                                NACCESS feature files, and PTM sites data.</p>
                        </blockquote>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="media block-list">
                    <div class="media-left">
                        <i class="fa fa-gear"></i>
                    </div>
                    <div class="media-body">
                        <h3 class="media-heading">Entry page</h3>
                        <blockquote>
                            <p>Our entry web page organizes in a comprehensive manner detailed PTM annotation on the 3D
                                structure and biological information.</p>

                        </blockquote>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="media block-list">
                    <div class="media-left">
                        <i class="fa fa-laptop"></i>
                    </div>
                    <div class="media-body">
                        <h3 class="media-heading">Long-term maintenance</h3>
                        <blockquote>
                            <p>PRISM is constantly being maintained and updated. You can find every update of our
                                project and track prior versions on the <a href="${path}/pdb/timeline">Timeline</a>
                                page.</p>

                        </blockquote>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
                <div class="media block-list">
                    <div class="media-left">
                        <i class="fa fa-clock-o"></i>
                    </div>
                    <div class="media-body">
                        <h3 class="media-heading">Data access</h3>
                        <blockquote>
                            <p>The entries can be searched through three different methods, including ID search, Keyword
                                search, and Advanced search.</p>

                        </blockquote>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="media block-list">
                    <div class="media-left">
                        <i class="fa fa-area-chart"></i>
                    </div>
                    <div class="media-body">
                        <h3 class="media-heading">Statistics</h3>
                        <blockquote>
                            <p>The <a href="https://ecomfe.github.io/echarts-doc/public/en/index.html">ECharts</a>
                                package was used to achieve as user interactive pie charts display of <a
                                        href="${path}/pdb/statistics">statistical results</a>. PRISM provides 11
                                different statistical results.</p>

                        </blockquote>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="media block-list">
                    <div class="media-left">
                        <i class="fa fa-magic"></i>
                    </div>
                    <div class="media-body">
                        <h3 class="media-heading">High-resolution Interface</h3>
                        <blockquote>
                            <p>Several high definition JavaScript packages are employed to enhance information
                                visualization in PRISM.</p>

                        </blockquote>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- section end -->
<section>


</section>
<!-- section start -->
<section class="section clearfix no-view secPadding" data-animation-effect="fadeIn">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h1 id="about" class="title text-center">Introduction</h1>
                <p class="lead text-center">A Protein Structure DataBase Post Translational Modification.</p>
                <div class="space"></div>
                <div class="row">
                    <div class="col-md-6">
                        <h3 style="padding-bottom: 10px">Here are the top 5 PDBChains most viewd by users</h3>
                        <div id="myCarousel" class="carousel slide">
                            <!-- 轮播（Carousel）指标 -->
                            <ol class="carousel-indicators">
                                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                                <li data-target="#myCarousel" data-slide-to="1"></li>
                                <li data-target="#myCarousel" data-slide-to="2"></li>
                                <li data-target="#myCarousel" data-slide-to="3"></li>
                                <li data-target="#myCarousel" data-slide-to="4"></li>
                            </ol>
                            <!-- 轮播（Carousel）项目 -->
                            <div class="carousel-inner">
                                <div class="item active">
                                    <h5>&nbsp;&nbsp;1. PDB Chain: <a
                                            href="${path}/pdb/entry?pdbchain=${sessionScope.pdb3Dmol1}:${sessionScope.chain3Dmol1}">${sessionScope.pdb3Dmol1}:${sessionScope.chain3Dmol1}</a>
                                    </h5>
                                    <iframe src="${path}/index3Dmol/3Dmol1.jsp" width=600, height=300 frameborder="0"
                                            allowtransparency="yes"></iframe>
                                </div>
                                <div class="item">
                                    <h5>&nbsp;&nbsp;2. PDB Chain: <a
                                            href="${path}/pdb/entry?pdbchain=${sessionScope.pdb3Dmol2}:${sessionScope.chain3Dmol2}">${sessionScope.pdb3Dmol2}:${sessionScope.chain3Dmol2}</a>
                                    </h5>
                                    <iframe src="${path}/index3Dmol/3Dmol2.jsp" width=600, height=300 frameborder="0"
                                            allowtransparency="yes"></iframe>
                                </div>
                                <div class="item">
                                    <h5>&nbsp;&nbsp;3. PDB Chain: <a
                                            href="${path}/pdb/entry?pdbchain=${sessionScope.pdb3Dmol3}:${sessionScope.chain3Dmol3}">${sessionScope.pdb3Dmol3}:${sessionScope.chain3Dmol3}</a>
                                    </h5>
                                    <iframe src="${path}/index3Dmol/3Dmol3.jsp" width=600, height=300 frameborder="0"
                                            allowtransparency="yes"></iframe>
                                </div>
                                <div class="item">
                                    <h5>&nbsp;&nbsp;4. PDB Chain: <a
                                            href="${path}/pdb/entry?pdbchain=${sessionScope.pdb3Dmol4}:${sessionScope.chain3Dmol4}">${sessionScope.pdb3Dmol4}:${sessionScope.chain3Dmol4}</a>
                                    </h5>
                                    <iframe src="${path}/index3Dmol/3Dmol4.jsp" width=600, height=300 frameborder="0"
                                            allowtransparency="yes"></iframe>
                                </div>
                                <div class="item">
                                    <h5>&nbsp;&nbsp;5. PDB Chain: <a
                                            href="${path}/pdb/entry?pdbchain=${sessionScope.pdb3Dmol5}:${sessionScope.chain3Dmol5}">${sessionScope.pdb3Dmol5}:${sessionScope.chain3Dmol5}</a>
                                    </h5>
                                    <iframe src="${path}/index3Dmol/3Dmol5.jsp" width=600, height=300 frameborder="0"
                                            allowtransparency="yes"></iframe>
                                </div>
                            </div>
                            <!-- 轮播（Carousel）导航 -->
                            <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                                <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                                <span class="sr-only">Previous</span>
                            </a>
                            <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                                <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                                <span class="sr-only">Next</span>
                            </a>
                        </div>
                        <div class="space"></div>
                    </div>
                    <div class="col-md-6">
                        <p style="text-align:justify"><font size="3">PRISM is a freely available web-based resource
                            providing 3D structure information of protein post-translational modification sites. PRISM
                            retrieves comprehensive PTM information from six major protein sequence-based PTM databases.
                            The collected protein sequences with PTM sites were then mapped to protein 3D structures.
                            PRISM not only includes PTM sites data but also integrates and annotates the disease
                            mutation affecting the PTM sites. Other information, such as protein secondary structure
                            properties, solvent accessibility area features, protein disorder region, and protein domain
                            context, etc., were also collected and annotated in PRISM. </font></p>
                        <p style="text-align:justify"><font size="3">PRISM combines the strength of Java, Spring,
                            SpringMVC, MyBatis, and JavaScript to achieve user-friendly interface design and efficient
                            data query/display. Multiple data querying methods and data browsing pages enabled in PRISM
                            can be explored, with a number of options. PRISM is also equipped with some bioinformatics
                            plug-ins such as 3Dmol.js, Protein Feature view, and RCSB-sequence viewer to better
                            visualize the comprehensive annotation data contained in PRISM.</font></p>
                    </div>
                </div>
                <div class="space"></div>
            </div>
        </div>
    </div>
</section>
<!-- section end -->

<!-- section start -->
<div class="default-bg colord secPadding">
    <div class="container">
        <div class="row">
            <div class="col-md-8 col-md-offset-2">
                <h1 class="text-center">More Informaition.</h1>
            </div>
        </div>
    </div>
</div>
<!-- section end -->
<section class="section secPadding" id="team">
    <div class="container">
        <h1 class="text-center title">Our Team</h1>
        <div class="separator"></div>
        <p class="lead text-center">The researchers and main developers are as follows.</p>
        <div class="team-item__position">If you've got any question, please follow the contact buttons below the
            photos.
        </div>
        <br>
        <div class="row">
            <div class="col-md-12">
                <div class="row">
                    <div class="col-xs-6 col-sm-3">
                        <div class="team__item">
                            <div class="team-item__img">
                                <center><img src="${path}/browseStatic/images/team1.jpg" style="height: 250px"
                                             class="img-responsive" alt="..."></center>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="team-item__name">Jiangning Song</div>
                                    <div class="team-item__position">Senior Research Fellow, Group leader</div>
                                    <div class="team-item__position">Biochemistry & Molucular Biology, Monash Data
                                        Science Center, Monash University
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="team-item__contact">
                                        <a class="team-item-contact__link" target="_blank"
                                           href="https://research.monash.edu/en/persons/jiangning-song">
                                            <i class="fa fa-user"></i>
                                        </a>
                                        <a class="team-item-contact__link team-item-contact__link_facebook"
                                           target="_blank"
                                           href="https://scholar.google.com.au/citations?user=IovpbX4AAAAJ&hl=en">
                                            <i class="fa fa-graduation-cap"></i>
                                        </a>
                                        <div class="clearfix"></div>
                                    </div>
                                </div>
                            </div> <!-- / .row -->
                        </div> <!-- / .team__item -->
                    </div>

                    <div class="col-xs-6 col-sm-3">
                        <div class="team__item">
                            <div class="team-item__img">
                                <center><img src="${path}/browseStatic/images/team2.jpg" style="height: 250px"
                                             class="img-responsive" alt="..."></center>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="team-item__name">Quanzhong Liu</div>
                                    <div class="team-item__position">Associate Professor</div>
                                    <div class="team-item__position">Department of Software Engineering, College
                                        Information Engineering, Northwest A&F University
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="team-item__contact">
                                        <a class="team-item-contact__link" target="_blank"
                                           href="http://cie.nwsuaf.edu.cn/szdw/fjs/2008115807/index.htm">
                                            <i class="fa fa-user"></i>
                                        </a>
                                        <a class="team-item-contact__link team-item-contact__link_facebook"
                                           target="_blank"
                                           href="https://www.researchgate.net/profile/Quanzhong_Liu">
                                            <i class="fa fa-graduation-cap"></i>
                                        </a>
                                        <div class="clearfix"></div>
                                    </div>
                                </div>
                            </div> <!-- / .row -->
                        </div> <!-- / .team__item -->
                    </div>

                    <div class="col-xs-6 col-sm-3">
                        <div class="team__item">
                            <div class="team-item__img">
                                <center><img src="${path}/browseStatic/images/team3.jpg" style="height: 250px"
                                             class="img-responsive" alt="..."></center>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="team-item__name">Fuyi Li</div>
                                    <div class="team-item__position">PhD Candicate</div>
                                    <div class="team-item__position">Biochemistry & Molucular Biology, Monash Data
                                        Science Center, Monash University
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="team-item__contact">
                                        <a class="team-item-contact__link" target="_blank"
                                           href="https://www.linkedin.com/in/fuyi-li-b0ba008a/">
                                            <i class="fa fa-linkedin"></i>
                                        </a>
                                        <a class="team-item-contact__link team-item-contact__link_facebook"
                                           target="_blank"
                                           href="https://scholar.google.com.au/citations?user=vrADwVUAAAAJ&hl=en">
                                            <i class="fa fa-graduation-cap"></i>
                                        </a>
                                        <div class="clearfix"></div>
                                    </div>
                                </div>
                            </div> <!-- / .row -->
                        </div> <!-- / .team__item -->
                    </div>

                    <div class="col-xs-6 col-sm-3">
                        <div class="team__item">
                            <div class="team-item__img">
                                <center><img src="${path}/browseStatic/images/team4.jpg" style="height: 250px"
                                             class="img-responsive" alt="..."></center>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="team-item__name">Cunshuo Fan</div>
                                    <div class="team-item__position">Bachelor Candidate</div>
                                    <div class="team-item__position">Department of Software Engineering, College
                                        Information Engineering, Northwest A&F University
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="team-item__contact">
                                        <a class="team-item-contact__link" target="_blank" href="http://firstmetcs.com">
                                            <i class="fa fa-user"></i>
                                        </a>
                                        <a class="team-item-contact__link team-item-contact__link_facebook"
                                           target="_blank" href="https://github.com/firstmetcs">
                                            <i class="fa fa-github"></i>
                                        </a>
                                        <div class="clearfix"></div>
                                    </div>
                                </div>
                            </div> <!-- / .row -->
                        </div> <!-- / .team__item -->
                    </div>

                </div> <!-- / .row -->
            </div>

        </div>
    </div>
</section>
<!-- section start -->
<section class="section secPadding">
    <div class="container">
        <h1 class="text-center title" id="portfolio">Publications & Tools</h1>
        <div class="separator"></div>
        <p class="lead text-center">Publication and tools used in or contribute to our project.</p>
        <br>
        <div class="row no-view" data-animation-effect="fadeIn">
            <div class="col-md-12">

                <!-- isotope filters start -->
                <div class="tablebox" style="border: 1px solid #1ABC9C">
                    <table id="tableId" border="0" cellspacing="0" cellpadding="0">
                        <thead>
                        <tr>
                            <th>Tools</th>
                            <th>URLs</th>
                            <th>References</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>3Dmol.js</td>
                            <td><a href="http://3dmol.csb.pitt.edu/" target="_blank">http://3dmol.csb.pitt.edu/</a></td>
                            <td><a href="https://academic.oup.com/bioinformatics/article/31/8/1322/213186">Rego and
                                Koes, 2014</a></td>
                        </tr>
                        <tr>
                            <td>PDB</td>
                            <td><a href="https://www.rcsb.org/" target="_blank">https://www.rcsb.org/</a></td>
                            <td><a href="https://academic.oup.com/nar/article/28/1/235/2384399">Berman<strong><i> et
                                al.</i></strong>, 2000</a></td>
                        </tr>
                        <tr>
                            <td>UniProt</td>
                            <td><a href="https://www.uniprot.org/" target="_blank">https://www.uniprot.org/</a></td>
                            <td><a href="https://academic.oup.com/nar/article/45/D1/D158/2605721">The UniProt
                                Consortium, 2016 </a></td>
                        </tr>
                        <tr>
                            <td>GeneCard</td>
                            <td><a href="https://www.genecards.org/" target="_blank">https://www.genecards.org/</a></td>
                            <td><a href="https://currentprotocols.onlinelibrary.wiley.com/doi/abs/10.1002/cpbi.5">Stelzer<strong><i>
                                et al.</i></strong>, 2016</a></td>
                        </tr>
                        <tr>
                            <td>DSSP</td>
                            <td><a href="https://swift.cmbi.umcn.nl/gv/dssp/" target="_blank">https://swift.cmbi.umcn.nl/gv/dssp/</a>
                            </td>
                            <td><a href="https://academic.oup.com/nar/article/43/D1/D364/2435537">Touw<strong><i> et
                                al.</i></strong>, 2014</a></td>
                        </tr>
                        <tr>
                            <td>NACCESS</td>
                            <td><a href="http://wolf.bms.umist.ac.uk/naccess/" target="_blank">http://wolf.bms.umist.ac.uk/naccess/</a>
                            </td>
                            <td>Hubbard and Thornton<strong><i> et al.</i></strong>, 1992</td>
                        </tr>
                        <tr>
                            <td>Sequence view</td>
                            <td><a href="https://github.com/biojava/rcsb-sequenceviewer" target="_blank">https://github.com/biojava/rcsb-sequenceviewer</a>
                            </td>
                            <td><a href="https://academic.oup.com/nar/article/28/1/235/2384399">Berman<strong><i> et
                                al.</i></strong>, 2000</a></td>
                        </tr>
                        <tr>
                            <td>Disorder picture</td>
                            <td><a href="http://d2p2.pro/cgi/archpic.cgi" target="_blank">http://d2p2.pro/cgi/archpic.cgi</a>
                            </td>
                            <td><a href="https://academic.oup.com/nar/article/41/D1/D508/1069637">Oates<strong><i> et
                                al.</i></strong>, 2013</a></td>
                        </tr>
                        <tr>
                            <td>Quokka</td>
                            <td><a href="http://quokka.erc.monash.edu" target="_blank">http://quokka.erc.monash.edu</a>
                            </td>
                            <td>
                                <a href="https://academic.oup.com/bioinformatics/advance-article-abstract/doi/10.1093/bioinformatics/bty522/5045914?redirectedFrom=fulltext">Li<strong><i>
                                    et al.</i></strong>, 2018</a>
                            </td>
                        </tr>
                        <tr>
                            <td>GlycoMine</td>
                            <td><a href="http://glycomine.erc.monash.edu/Lab/GlycoMine/" target="_blank">http://glycomine.erc.monash.edu/Lab/GlycoMine/</a>
                            </td>
                            <td>
                                <a href="https://academic.oup.com/bioinformatics/article/31/9/1411/200596?searchresult=1">Li<strong><i>
                                    et al.</i></strong>, 2015</a>
                            </td>
                        </tr>
                        <tr>
                            <td>GlycoMine<sup>Struct</sup></td>
                            <td><a href="http://glycomine.erc.monash.edu/Lab/GlycoMine_Struct/" target="_blank">http://glycomine.erc.monash.edu/Lab/GlycoMine_Struct/</a>
                            </td>
                            <td><a href="https://www.nature.com/articles/srep34595">Li<strong><i> et al.</i></strong>,
                                2016</a></td>
                        </tr>
                        <tr>
                            <td>iFeature</td>
                            <td><a href="http://ifeature.erc.monash.edu"
                                   target="_blank">http://ifeature.erc.monash.edu</a></td>
                            <td>
                                <a href="https://academic.oup.com/bioinformatics/article-abstract/34/14/2499/4924718?redirectedFrom=fulltext">Chen<strong><i>
                                    et al.</i></strong>, 2018 </a>
                            </td>
                        </tr>
                        <tr>
                            <td>iProt-Sub</td>
                            <td><a href="http://iprot-sub.erc.monash.edu/ " target="_blank">http://iprot-sub.erc.monash.edu/ </a>
                            </td>
                            <td><a href="https://academic.oup.com/bib/advance-article/doi/10.1093/bib/bby028/4979587">Song<strong><i>
                                et al.</i></strong>, 2018</a>
                            </td>
                        </tr>
                        <tr>
                            <td>PREvaIL</td>
                            <td><a href="http://prevail.erc.monash.edu/"
                                   target="_blank">http://prevail.erc.monash.edu/</a></td>
                            <td>
                                <a href="https://www.sciencedirect.com/science/article/pii/S0022519318300390">Song<strong><i>
                                    et al.</i></strong>, 2018</a>
                            </td>
                        </tr>
                        <tr>
                            <td>PROSPERous</td>
                            <td><a href="http://prosperous.erc.monash.edu" target="_blank">http://prosperous.erc.monash.edu</a>
                            </td>
                            <td>
                                <a href="https://academic.oup.com/bioinformatics/article-abstract/34/4/684/4562332?redirectedFrom=fulltext">Song
                                    and Li<strong><i> et al.</i></strong>, 2017</a></td>
                        </tr>
                        <tr>
                            <td>PROSPER</td>
                            <td><a href="http://lightning.med.monash.edu/PROSPER/" target="_blank">http://lightning.med.monash.edu/PROSPER/</a>
                            </td>
                            <td>
                                <a href="https://journals.plos.org/plosone/article?id=10.1371/journal.pone.0050300">Song<strong><i>
                                    et al.</i></strong>, 2012</a>
                            </td>
                        </tr>
                        <tr>
                            <td>Cascleave</td>
                            <td><a href="http://sunflower.kuicr.kyoto-u.ac.jp/~sjn/Cascleave/index.html"
                                   target="_blank">http://sunflower.kuicr.kyoto-u.ac.jp/~sjn/Cascleave/index.html</a>
                            </td>
                            <td>
                                <a href="https://academic.oup.com/bioinformatics/article/26/6/752/245474">Song<strong><i>
                                    et al.</i></strong>, 2010</a></td>
                        </tr>
                        <tr>
                            <td>dbPTM</td>
                            <td><a href="http://dbptm.mbc.nctu.edu.tw/"
                                   target="_blank">http://dbptm.mbc.nctu.edu.tw/</a></td>
                            <td><a href="https://academic.oup.com/nar/article/44/D1/D435/2503050">Huang<strong><i> et
                                al.</i></strong>, 2016</a></td>
                        </tr>
                        <tr>
                            <td>PhosphoSitePlus</td>
                            <td><a href="http://www.phosphosite.org/" target="_blank">http://www.phosphosite.org/</a>
                            </td>
                            <td><a href="https://academic.oup.com/nar/article/43/D1/D512/2439467?searchresult=1">Hornbeck<strong><i>
                                et al.</i></strong>, 2015</a>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>
                <!-- portfolio items end -->

            </div>
        </div>
    </div>
    <div>
        <script type="text/javascript"
                src="//rf.revolvermaps.com/0/0/5.js?i=5vzniji5q1p&amp;m=0&amp;c=ff0000&amp;cr1=ffffff"
                async="async"></script>
    </div>
</section>
<!-- section end -->


<!-- footer start -->
<footer id="footer">

    <!-- .footer start -->

    <!-- .footer end -->

    <!-- .subfooter start -->
    <div class="subfooter">
        <center><img src="http://biomelbourne.org/wp-content/uploads/2017/06/Monash-BDI-logo-2016.jpg" width="300"
                     height="100" longdesc="http://www.monash.edu/medicine/home" rel="nofollow"></center>
        <%@ include file="/WEB-INF/inc/footer.jsp" %>
    </div>
    <!-- .subfooter end -->

</footer>
<!-- footer end -->

<!-- JavaScript -->
<script type="text/javascript" src="${path}/browseStatic/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${path}/browseStatic/plugins/modernizr.js"></script>
<script type="text/javascript" src="${path}/browseStatic/plugins/isotope/isotope.pkgd.min.js"></script>
<script type="text/javascript" src="${path}/browseStatic/plugins/jquery.backstretch.min.js"></script>
<script type="text/javascript" src="${path}/browseStatic/plugins/jquery.appear.js"></script>
<script src="${path}/browseStatic/contact/jqBootstrapValidation.js"></script>
<script src="${path}/browseStatic/contact/contact_me.js"></script>

<!-- Custom Scripts -->
<script type="text/javascript" src="${path}/browseStatic/js/indexCustom.js"></script>

</body>
</html>
