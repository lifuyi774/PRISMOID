<%@ include file="/WEB-INF/inc/taglibs.jsp" %>
<%--
  Created by IntelliJ IDEA.
  User: Firstmetcs
  Date: 2018/5/18/0018
  Time: 16:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html lang="en">
<!--<![endif]-->
<head>
    <meta charset="utf-8">
    <title>Search-PRISM</title>
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
    <style type="text/css">

        th {
            color: #4f6b72;
            border-right: 1px solid #C1DAD7;
            border-bottom: 1px solid #C1DAD7;
            border-top: 1px solid #C1DAD7;
            letter-spacing: 2px;
            text-transform: uppercase;
            text-align: left;
            padding: 6px 6px 6px 12px;
            background: #CAE8EA no-repeat;
        }

        td {
            border-right: 1px solid #C1DAD7;
            border-bottom: 1px solid #C1DAD7;
            background: #fff;
            font-size: 14px;
            padding: 6px 6px 6px 12px;
            color: #4f6b72;
        }

        td.alt {
            background: #F5FAFA;
            color: #797268;
        }

        th.spec, td.spec {
            border-left: 1px solid #C1DAD7;
        }

        /*---------for IE 5.x bug*/
        html > body td {
            font-size: 14px;
        }

        tr.select th, tr.select td {
            background-color: #CAE8EA;
            color: #797268;
        }
    </style>
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
                                        <li class="active"><a href="${path}/pdb/search">Search</a></li>

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
                    size="+2"> <a href="${path}/pdb/search">Search</a>>${type}</font></b></span>
            </div>


            <section id="block1">

                <div class="well well-lg" style="padding-top:0px">

                    <div class="row">
                        <div class="col-sm-10">
                            <h3>${type}</h3>
                        </div>
                        <div class="col-sm-2 text-right" style="margin-top:10px">
                            <h4><a onclick="window.scrollTo(0,0);"><i class="glyphicon glyphicon-arrow-up"></i> Top</a>
                            </h4>
                        </div>
                    </div>

                    <div style="width: 100%;margin-top:16px;margin-bottom:0px;padding-top:8px;padding-left:8px;padding-bottom:8px;padding-right:8px;background-color:#FFFFFF;margin-left:auto;margin-right: auto;">
                        <c:if test="${!empty result}">
                            <table class="table table-bordered table-striped table-condensed table-hover"
                                   style="word-break:break-all;">
                                <colgroup>
                                    <col class="col-sm-1">
                                    <col class="col-sm-2">
                                    <col class="col-sm-2">
                                    <col class="col-sm-1">
                                    <col class="col-sm-2">
                                    <col class="col-sm-3">
                                        <%--<col class="col-sm-2">--%>
                                    <!--<col class="col-sm-2">-->
                                </colgroup>
                                <thead>
                                <tr>
                                    <th>PDBChain</th>
                                    <th>UniProt Acc</th>
                                    <th>PTMType</th>
                                    <th>GeneName</th>
                                    <th>Resolution</th>
                                    <th>Protein Name</th>
                                        <%--<th>Amount</th>--%>
                                    <!-- <th>Origin</th> -->
                                </tr>
                                </thead>
                                <tbody>


                                <C:forEach var="resulti" items="${result}">
                                    <tr>
                                        <td>
                                            <a href="${path}/pdb/entry?pdbchain=${resulti.PDBChain}">${resulti.PDBChain}</a>
                                        </td>
                                            <%--<td><a href="browseType?type=${totlei.key}">${totlei.key}</a></td>--%>
                                        <td>${resulti.uniProtID}</td>
                                        <td>${resulti.PTMType}</td>
                                        <td>${resulti.geneName}</td>
                                        <td>${resulti.resolution}</td>
                                        <td>${resulti.proteinName}</td>
                                        <!-- <td >T3SE_UniProt</td> -->
                                    </tr>
                                </C:forEach>


                                </tbody>
                            </table>
                        </c:if>
                        <c:if test="${empty result}">
                            There are No matching records in the database! Click <a
                                href="${path}/pdb/search">HERE</a> to return.
                        </c:if>
                    </div>
                </div>
            </section>

        </div>
    </section>
</section>

<!-- footer start -->
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
