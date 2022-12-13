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
<!DOCTYPE html>
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<head>
    <meta charset="utf-8">
    <title>Browse-PRISM</title>
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

    <script type="text/javascript" src="${path}/browseStatic/plugins/jquery.min.js"></script>
    <script>
        $(document).ready(function () {
            $("#select").change(function () {
                $("#disorder").attr("src", "http://d2p2.pro/cgi/archpic.cgi?genome=up&amp;seqids=" + $(this).children('option:selected').val() + "&amp");
                // alert("test");
                // alert($(this).children('option:selected').val());
            });
        });

        function openDisorder() {
            window.open("http://d2p2.pro/cgi/archpic.cgi?genome=up&amp;seqids=" + $("#select").children('option:selected').val() + "&amp");
        }
    </script>

    <script>
        $(function () {
            $("[data-toggle='popover']").popover({html: true});
        });
    </script>
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

                                        <li class="active"><a href="${path}/pdb/browse">Browse</a></li>
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
                    size="+2"> <a href="${path}/pdb/browse">Browse</a>>${sessionScope.pdb}:${sessionScope.chain}</font></b></span>
            </div>


            <section id="block1">

                <div class="well well-lg" style="padding-top:0px">

                    <div class="row">
                        <div class="col-sm-10">
                            <h3>Detailed Infomation</h3>
                        </div>
                        <div class="col-sm-2 text-right" style="margin-top:10px">
                            <h4><a onclick="window.scrollTo(0,0);"><i class="glyphicon glyphicon-arrow-up"></i> Top</a>
                            </h4>
                        </div>
                    </div>


                    <section class="section clearfix no-view secPadding" data-animation-effect="fadeIn">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-12">

                                    <div class="space"></div>
                                    <div class="row">
                                        <div class="col-md-7">
                                            <iframe src="${path}/3Dmol.jsp" width=600, height=350 frameborder="0"
                                                    allowtransparency="yes"></iframe>
                                            <br>
                                            <center>Please click <a href="${path}/3Dmol.jsp" target="_blank">HERE</a>
                                                for better display.
                                            </center>

                                        </div>
                                        <%--style="border-style: solid; border-width: 1px; border-radius: 10px"--%>
                                        <div class="col-md-5" style="background-color: #ddf8f5; border-radius: 10px">
                                            <p></p>
                                            <p></p>
                                            <ul class="list-unstyled">
                                                <li style="font-size: 1.5em"><i
                                                        class="fa fa-arrow-circle-right pr-10 colored"></i>
                                                    PDB: <a href="https://www.rcsb.org/structure/${sessionScope.pdb}"
                                                            target="_blank"> ${sessionScope.pdb}</a></li>
                                                <br>
                                                <li style="font-size: 1.5em"><i
                                                        class="fa fa-arrow-circle-right pr-10 colored"></i>
                                                    Chain: ${sessionScope.chain}</li>
                                                <br>
                                                <li style="font-size: 1.5em"><i
                                                        class="fa fa-arrow-circle-right pr-10 colored"></i> Protein
                                                    Name: ${sessionScope.pdbList[0].proteinName}</li>
                                                <br>
                                                <li style="font-size: 1.3em"><i
                                                        class="fa fa-arrow-circle-right pr-10 colored"></i>
                                                    GeneName: <a
                                                            href="https://www.genecards.org/cgi-bin/carddisp.pl?gene=${sessionScope.pdbList[0].geneName}"
                                                            target="_blank"> ${sessionScope.pdbList[0].geneName}</a>
                                                </li>
                                                <br>
                                                <li style="font-size: 1.3em"><i
                                                        class="fa fa-arrow-circle-right pr-10 colored"></i>
                                                    Resolution: ${sessionScope.pdbList[0].resolution}&nbsp;Å
                                                </li>
                                                <li style="font-size: 1.3em"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Method:
                                                    X-RAY DIFFRACTION
                                                </li>
                                            </ul>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </section>
                    <!-- section end -->


                    <div style="width: 100%;margin-top:16px;margin-bottom:0px;padding-top:8px;padding-left:8px;padding-bottom:8px;padding-right:8px;background-color:#FFFFFF;margin-left:auto;margin-right: auto;">

                        <table class="table table-bordered table-striped table-condensed table-hover"
                               style="margin:auto;width:95%;word-break:break-all;">
                            <colgroup>
                                <col class="col-sm-1">
                                <col class="col-sm-1">
                                <col class="col-sm-1">
                                <col class="col-sm-1">
                                <col class="col-sm-1">
                                <col class="col-sm-1">
                                <col class="col-sm-2">
                                <!--<col class="col-sm-2">-->
                            </colgroup>
                            <caption>PTM Information</caption>
                            <thead>
                            <tr>
                                <th>PDBChain</th>
                                <th>PTM Type</th>
                                <th>PTM Position<br> in PDBChain</th>
                                <th>UniProt ACC</th>
                                <th>PTM Position</th>
                                <th>UniProtID</th>
                                <th>Organism</th>
                                <!-- <th>Origin</th> -->
                            </tr>
                            </thead>
                            <tbody>

                            <c:if test="${!empty sessionScope.pdbList}">
                                <C:forEach var="chain" items="${sessionScope.pdbList}">
                                    <tr>
                                        <td>${chain.PDBChain}</td>
                                        <td>${chain.PTMType}</td>
                                        <td>${chain.PDBPosition}</td>
                                        <td><a href="http://www.uniprot.org/uniprot/${chain.uniProtID}"
                                               target="_blank">${chain.uniProtID}</a></td>
                                        <td>${chain.uniProtPosition}</td>
                                        <td><a href="http://www.uniprot.org/uniprot/${chain.uniProtKBID}"
                                               target="_blank">${chain.uniProtKBID}</a></td>
                                        <td>${chain.organism}</td>
                                        <!-- <td >T3SE_UniProt</td> -->
                                    </tr>
                                </C:forEach>
                            </c:if>


                            </tbody>
                        </table>

                    </div>

                    <%--<div style="width: 100%;margin-top:16px;margin-bottom:0px;padding-top:8px;padding-left:8px;padding-bottom:8px;padding-right:8px;background-color:#FFFFFF;margin-left:auto;margin-right: auto;">--%>
                    <%--<h3>Protein Feature Viewr</h3>--%>
                    <%--<iframe src="${path}/pfv/pfv.jsp" width=1350, height=600 frameborder="0" allowtransparency="yes"></iframe>--%>

                    <%--</div>--%>


                    <%--<div style="width: 100%;margin-top:16px;margin-bottom:0px;padding-top:8px;padding-left:8px;padding-bottom:8px;padding-right:8px;background-color:#FFFFFF;margin-left:auto;margin-right: auto;">--%>
                    <%--<h3>Sequence Alignment</h3>--%>
                    <%--<iframe src="${path}/aa/${pdb}_${chain}.html" width=800, height=350 frameborder="0" allowtransparency="yes"></iframe>--%>

                    <%--</div>--%>

                    <%--<c:if test="${!empty UniprotID}">--%>
                    <%--<C:forEach var="Uni" items="${UniprotID}">--%>
                    <%--${Uni}<br>--%>
                    <%--</C:forEach>--%>
                    <%--</c:if>--%>

                    <%--<a href="${path}/openProject1.html">test</a>--%>
                </div>
            </section>

            <c:if test="${!empty diseasePTMSitesMutations || !empty populationPTMSitesMutations || !empty cancerPTMSitesMutations}">
                <section id="block8">

                    <div class="well well-lg" style="padding-top:0px">

                        <div class="row">
                            <div class="col-sm-10">
                                <h3>Mutations affecting PTM Sites</h3>
                            </div>
                            <div class="col-sm-2 text-right" style="margin-top:10px">
                                <h4><a onclick="window.scrollTo(0,0);"><i class="glyphicon glyphicon-arrow-up"></i> Top</a>
                                </h4>
                            </div>
                        </div>

                        <div style="width: 100%;margin-top:16px;margin-bottom:0px;padding-top:8px;padding-left:8px;padding-bottom:8px;padding-right:8px;background-color:#FFFFFF;margin-left:auto;margin-right: auto;">
                                <%--<h3>Sequence Alignment</h3>--%>

                            <c:if test="${!empty cancerPTMSitesMutations}">

                                <table class="table table-bordered table-striped table-condensed table-hover"
                                       style="margin:auto;width:95%;word-break:break-all;">
                                    <colgroup>
                                        <col class="col-sm-1">
                                        <col class="col-sm-1">
                                        <col class="col-sm-1">
                                        <col class="col-sm-1">
                                        <col class="col-sm-1">
                                        <col class="col-sm-1">
                                        <col class="col-sm-1">
                                        <col class="col-sm-1">
                                        <col class="col-sm-1">
                                        <!--<col class="col-sm-2">-->
                                    </colgroup>
                                    <caption>Cancer mutations affecting PTM Sites</caption>
                                    <thead>
                                    <tr>
                                        <th>gene</th>
                                        <th>refseq</th>
                                        <th>mutation<br>Position</th>
                                        <th>mutation<br>Alt</th>
                                        <th>mutation<br>Summary</th>
                                        <th>site Position</th>
                                        <th>site Residue</th>
                                        <th>uniprot ACC</th>
                                        <th>uniprot ID</th>
                                        <!-- <th>Origin</th> -->
                                    </tr>
                                    </thead>
                                    <tbody>


                                    <C:forEach var="cancerPTMSitesMutation" items="${cancerPTMSitesMutations}">
                                        <tr>
                                            <td>${cancerPTMSitesMutation.gene}</td>
                                            <td>${cancerPTMSitesMutation.refseq}</td>
                                            <td>${cancerPTMSitesMutation.mutationposition}</td>
                                            <td>${cancerPTMSitesMutation.mutationalt}</td>
                                            <td>${cancerPTMSitesMutation.mutationsummary}</td>
                                            <td>${cancerPTMSitesMutation.siteposition}</td>
                                            <td>${cancerPTMSitesMutation.siteresidue}</td>
                                            <td>${cancerPTMSitesMutation.uniprotacc}</td>
                                            <td>${cancerPTMSitesMutation.uniprotid}</td>
                                            <!-- <td >T3SE_UniProt</td> -->
                                        </tr>
                                    </C:forEach>


                                    </tbody>
                                </table>
                                <%--<tr>--%>
                                <%--<td>${totlei.value.get(1)}</td>--%>
                                <%--<td><a href="browseType?type=${totlei.key}">${totlei.key}</a></td>--%>
                                <%--<td>${totlei.value.get(2)}</td>--%>
                                <%--<td>${totlei.value.get(0)}</td>--%>
                                <%--<!-- <td >T3SE_UniProt</td> -->--%>
                                <%--</tr>--%>
                            </c:if>

                            <c:if test="${!empty diseasePTMSitesMutations}">
                                <br><br>

                                <table class="table table-bordered table-striped table-condensed table-hover"
                                       style="margin:auto;width:95%;word-break:break-all;">
                                    <colgroup>
                                        <col class="col-sm-1">
                                        <col class="col-sm-1">
                                        <col class="col-sm-1">
                                        <col class="col-sm-1">
                                        <col class="col-sm-1">
                                        <col class="col-sm-1">
                                        <col class="col-sm-1">
                                        <col class="col-sm-1">
                                        <col class="col-sm-1">
                                        <!--<col class="col-sm-2">-->
                                    </colgroup>
                                    <caption>Disease mutations affecting PTM Sites</caption>
                                    <thead>
                                    <tr>
                                        <th>gene</th>
                                        <th>refseq</th>
                                        <th>mutation<br>Position</th>
                                        <th>mutation<br>Alt</th>
                                        <th>mutation<br>Summary</th>
                                        <th>site Position</th>
                                        <th>site Residue</th>
                                        <th>uniprot ACC</th>
                                        <th>uniprot ID</th>
                                        <!-- <th>Origin</th> -->
                                    </tr>
                                    </thead>
                                    <tbody>


                                    <C:forEach var="diseasePTMSitesMutation" items="${diseasePTMSitesMutations}">
                                        <tr>
                                            <td>${diseasePTMSitesMutation.gene}</td>
                                            <td>${diseasePTMSitesMutation.refseq}</td>
                                            <td>${diseasePTMSitesMutation.mutationposition}</td>
                                            <td>${diseasePTMSitesMutation.mutationalt}</td>
                                            <td>${diseasePTMSitesMutation.mutationsummary}</td>
                                            <td>${diseasePTMSitesMutation.siteposition}</td>
                                            <td>${diseasePTMSitesMutation.siteresidue}</td>
                                            <td>${diseasePTMSitesMutation.uniprotacc}</td>
                                            <td>${diseasePTMSitesMutation.uniprotid}</td>
                                            <!-- <td >T3SE_UniProt</td> -->
                                        </tr>
                                    </C:forEach>


                                    </tbody>
                                </table>
                                <%--<tr>--%>
                                <%--<td>${totlei.value.get(1)}</td>--%>
                                <%--<td><a href="browseType?type=${totlei.key}">${totlei.key}</a></td>--%>
                                <%--<td>${totlei.value.get(2)}</td>--%>
                                <%--<td>${totlei.value.get(0)}</td>--%>
                                <%--<!-- <td >T3SE_UniProt</td> -->--%>
                                <%--</tr>--%>
                            </c:if>

                            <c:if test="${!empty populationPTMSitesMutations}">
                                <br><br>

                                <table class="table table-bordered table-striped table-condensed table-hover"
                                       style="margin:auto;width:95%;word-break:break-all;">
                                    <colgroup>
                                        <col class="col-sm-1">
                                        <col class="col-sm-1">
                                        <col class="col-sm-1">
                                        <col class="col-sm-1">
                                        <col class="col-sm-1">
                                        <col class="col-sm-1">
                                        <col class="col-sm-1">
                                        <col class="col-sm-1">
                                        <col class="col-sm-1">
                                        <!--<col class="col-sm-2">-->
                                    </colgroup>
                                    <caption>Population mutations affecting PTM Sites</caption>
                                    <thead>
                                    <tr>
                                        <th>gene</th>
                                        <th>refseq</th>
                                        <th>mutation<br>Position</th>
                                        <th>mutation<br>Alt</th>
                                        <th>mutation<br>Summary</th>
                                        <th>site Position</th>
                                        <th>site Residue</th>
                                        <th>uniprot ACC</th>
                                        <th>uniprot ID</th>
                                        <!-- <th>Origin</th> -->
                                    </tr>
                                    </thead>
                                    <tbody>


                                    <C:forEach var="populationPTMSitesMutation" items="${populationPTMSitesMutations}">
                                        <tr>
                                            <td>${populationPTMSitesMutation.gene}</td>
                                            <td>${populationPTMSitesMutation.refseq}</td>
                                            <td>${populationPTMSitesMutation.mutationposition}</td>
                                            <td>${populationPTMSitesMutation.mutationalt}</td>
                                            <td>${populationPTMSitesMutation.mutationsummary}</td>
                                            <td>${populationPTMSitesMutation.siteposition}</td>
                                            <td>${populationPTMSitesMutation.siteresidue}</td>
                                            <td>${populationPTMSitesMutation.uniprotacc}</td>
                                            <td>${populationPTMSitesMutation.uniprotid}</td>
                                            <!-- <td >T3SE_UniProt</td> -->
                                        </tr>
                                    </C:forEach>


                                    </tbody>
                                </table>
                                <%--<tr>--%>
                                <%--<td>${totlei.value.get(1)}</td>--%>
                                <%--<td><a href="browseType?type=${totlei.key}">${totlei.key}</a></td>--%>
                                <%--<td>${totlei.value.get(2)}</td>--%>
                                <%--<td>${totlei.value.get(0)}</td>--%>
                                <%--<!-- <td >T3SE_UniProt</td> -->--%>
                                <%--</tr>--%>
                            </c:if>

                        </div>

                            <%--<a href="${path}/openProject1.html">test</a>--%>
                    </div>
                </section>
            </c:if>

            <c:if test="${!empty dssps}">
                <section id="block7">

                    <div class="well well-lg" style="padding-top:0px">

                        <div class="row">
                            <div class="col-sm-10">
                                <h3>Secondary structure features calculated by DSSP</h3>
                            </div>
                            <div class="col-sm-2 text-right" style="margin-top:10px">
                                <h4><a onclick="window.scrollTo(0,0);"><i class="glyphicon glyphicon-arrow-up"></i> Top</a>
                                </h4>
                            </div>
                        </div>

                        <div style="width: 100%;margin-top:16px;margin-bottom:0px;padding-top:8px;padding-left:8px;padding-bottom:8px;padding-right:8px;background-color:#FFFFFF;margin-left:auto;margin-right: auto;">
                                <%--<h3>Sequence Alignment</h3>--%>

                            <table class="table table-bordered table-striped table-condensed table-hover"
                                   style="margin:auto;width:95%;word-break:break-all;">
                                <colgroup>
                                    <col class="col-sm-2">
                                    <col class="col-sm-1">
                                    <col class="col-sm-1">
                                    <col class="col-sm-1">
                                    <col class="col-sm-1">
                                    <col class="col-sm-1">
                                    <col class="col-sm-1">
                                    <col class="col-sm-1">
                                    <col class="col-sm-1">
                                    <!--<col class="col-sm-2">-->
                                </colgroup>
                                <caption><a href="https://swift.cmbi.umcn.nl/gv/dssp/" target="_blank">DSSPS</a> results
                                </caption>
                                <thead>
                                <tr>
                                    <th>PTM Position in Chain</th>
                                    <th>TCO
                                        <i class="glyphicon glyphicon-question-sign" title="TCO"
                                           data-container="body" data-toggle="popover" data-placement="bottom"
                                           data-content="cosine of angle between C=O of residue I and C=O of residue I-1. For α-helices, TCO is near +1, for β-sheets TCO is near -1. Not used for structure definition.">
                                        </i>
                                    </th>
                                    <th>KAPPA
                                        <i class="glyphicon glyphicon-question-sign" title="KAPPA"
                                           data-container="body" data-toggle="popover" data-placement="bottom"
                                           data-content="virtual bond angle (bend angle) defined by the three Cα atoms of residues I-2,I,I+2. Used to define bend (structure code 'S').">
                                        </i>
                                    </th>
                                    <th>ALPHA
                                        <i class="glyphicon glyphicon-question-sign" title="ALPHA"
                                           data-container="body" data-toggle="popover" data-placement="bottom"
                                           data-content="virtual torsion angle (dihedral angle) defined by the four Cα atoms of residues I-1,I,I+1,I+2.Used to define chirality (structure code '+' or '-').">
                                        </i>
                                    </th>
                                    <th>PHI
                                        <i class="glyphicon glyphicon-question-sign" title="PHI"
                                           data-container="body" data-toggle="popover" data-placement="bottom"
                                           data-content="IUPAC peptide backbone torsion angles">
                                        </i>
                                    </th>
                                    <th>PSI
                                        <i class="glyphicon glyphicon-question-sign" title="PSI"
                                           data-container="body" data-toggle="popover" data-placement="bottom"
                                           data-content="IUPAC peptide backbone torsion angles">
                                        </i>
                                    </th>
                                    <th>X-CA
                                        <i class="glyphicon glyphicon-question-sign" title="X-CA"
                                           data-container="body" data-toggle="popover" data-placement="bottom"
                                           data-content="echo of Cα atom coordinates">
                                        </i>
                                    </th>
                                    <th>Y-CA
                                        <i class="glyphicon glyphicon-question-sign" title="Y-CA"
                                           data-container="body" data-toggle="popover" data-placement="bottom"
                                           data-content="echo of Cα atom coordinates">
                                        </i>
                                    </th>
                                    <th>Z-CA
                                        <i class="glyphicon glyphicon-question-sign" title="Y-CA"
                                           data-container="body" data-toggle="popover" data-placement="bottom"
                                           data-content="echo of Cα atom coordinates">
                                        </i>
                                    </th>
                                    <!-- <th>Origin</th> -->
                                </tr>
                                </thead>
                                <tbody>

                                <C:forEach var="dssp" items="${dssps}">
                                    <tr>
                                        <td>${dssp.ptmpositioninchain}</td>
                                        <td>${dssp.tco}</td>
                                        <td>${dssp.kappa}</td>
                                        <td>${dssp.alpha}</td>
                                        <td>${dssp.phi}</td>
                                        <td>${dssp.psi}</td>
                                        <td>${dssp.xCa}</td>
                                        <td>${dssp.yCa}</td>
                                        <td>${dssp.zCa}</td>
                                        <!-- <td >T3SE_UniProt</td> -->
                                    </tr>
                                </C:forEach>


                                </tbody>
                            </table>
                                <%--<tr>--%>
                                <%--<td>${totlei.value.get(1)}</td>--%>
                                <%--<td><a href="browseType?type=${totlei.key}">${totlei.key}</a></td>--%>
                                <%--<td>${totlei.value.get(2)}</td>--%>
                                <%--<td>${totlei.value.get(0)}</td>--%>
                                <%--<!-- <td >T3SE_UniProt</td> -->--%>
                                <%--</tr>--%>


                        </div>

                            <%--<a href="${path}/openProject1.html">test</a>--%>
                    </div>
                </section>
            </c:if>

            <c:if test="${!empty naccesses}">
                <section id="block8">

                    <div class="well well-lg" style="padding-top:0px">

                        <div class="row">
                            <div class="col-sm-10">
                                <h3>Relative accessibilities features calculated by NACCESS</h3>
                            </div>
                            <div class="col-sm-2 text-right" style="margin-top:10px">
                                <h4><a onclick="window.scrollTo(0,0);"><i class="glyphicon glyphicon-arrow-up"></i> Top</a>
                                </h4>
                            </div>
                        </div>

                        <div style="width: 100%;margin-top:16px;margin-bottom:0px;padding-top:8px;padding-left:8px;padding-bottom:8px;padding-right:8px;background-color:#FFFFFF;margin-left:auto;margin-right: auto;">
                                <%--<h3>Sequence Alignment</h3>--%>

                            <table class="table table-bordered table-striped table-condensed table-hover"
                                   style="margin:auto;width:95%;word-break:break-all;">
                                <colgroup>
                                    <col class="col-sm-2">
                                    <col class="col-sm-1">
                                    <col class="col-sm-1">
                                    <col class="col-sm-1">
                                    <col class="col-sm-1">
                                    <col class="col-sm-1">
                                    <col class="col-sm-1">
                                    <col class="col-sm-1">
                                    <col class="col-sm-1">
                                    <col class="col-sm-1">
                                    <col class="col-sm-1">
                                    <!--<col class="col-sm-2">-->
                                </colgroup>
                                <caption><a href="http://wolf.bms.umist.ac.uk/naccess/" target="_blank">NACCESSES</a>
                                    results
                                    <i class="glyphicon glyphicon-question-sign" title="Tips"
                                       data-container="body" data-toggle="popover" data-placement="bottom"
                                       data-content="ABS: absolute<br>REL: relative">
                                    </i>
                                </caption>
                                <thead>
                                <tr>
                                    <th rowspan="2">PTM Position<br>in Chain</th>
                                    <th colspan="2">All-atoms</th>
                                    <th colspan="2">Total-Side</th>
                                    <th colspan="2">Main-Chain</th>
                                    <th colspan="2">Non-polar</th>
                                    <th colspan="2">All-polar</th>
                                    <!-- <th>Origin</th> -->
                                </tr>
                                <tr>
                                    <th>ABS</th>
                                    <th>REL</th>
                                    <th>ABS</th>
                                    <th>REL</th>
                                    <th>ABS</th>
                                    <th>REL</th>
                                    <th>ABS</th>
                                    <th>REL</th>
                                    <th>ABS</th>
                                    <th>REL</th>
                                    <!-- <th>Origin</th> -->
                                </tr>
                                </thead>
                                <tbody>

                                <C:forEach var="naccess" items="${naccesses}">
                                    <tr>
                                        <td>${naccess.ptmpositioninchain}</td>
                                        <td>${naccess.allAtomsAbsolute}</td>
                                        <td>${naccess.allAtomsRelative}</td>
                                        <td>${naccess.totalSideAbsolute}</td>
                                        <td>${naccess.totalSideRelative}</td>
                                        <td>${naccess.mainChainAbsolute}</td>
                                        <td>${naccess.mainChainRelative}</td>
                                        <td>${naccess.nonPolarAbsolute}</td>
                                        <td>${naccess.nonPolarRelative}</td>
                                        <td>${naccess.allPolarAbsolute}</td>
                                        <td>${naccess.allPolarRelative}</td>
                                        <!-- <td >T3SE_UniProt</td> -->
                                    </tr>
                                </C:forEach>


                                </tbody>
                            </table>
                                <%--<tr>--%>
                                <%--<td>${totlei.value.get(1)}</td>--%>
                                <%--<td><a href="browseType?type=${totlei.key}">${totlei.key}</a></td>--%>
                                <%--<td>${totlei.value.get(2)}</td>--%>
                                <%--<td>${totlei.value.get(0)}</td>--%>
                                <%--<!-- <td >T3SE_UniProt</td> -->--%>
                                <%--</tr>--%>


                        </div>

                            <%--<a href="${path}/openProject1.html">test</a>--%>
                    </div>
                </section>
            </c:if>

            <section id="block2">

                <div class="well well-lg" style="padding-top:0px">

                    <div class="row">
                        <div class="col-sm-10">
                            <h3>Protein Feature View</h3>
                        </div>
                        <div class="col-sm-2 text-right" style="margin-top:10px">
                            <h4><a onclick="window.scrollTo(0,0);"><i class="glyphicon glyphicon-arrow-up"></i> Top</a>
                            </h4>
                        </div>
                    </div>


                    <div style="width: 100%;margin-top:16px;margin-bottom:0px;padding-top:8px;padding-left:8px;padding-bottom:8px;padding-right:8px;background-color:#FFFFFF;margin-left:auto;margin-right: auto;">
                        <%--<h3>Protein Feature Viewr</h3>--%>
                        <iframe src="${path}/pfv/pfv.jsp" width=1380, height=500 frameborder="0" allowtransparency="yes"
                                id="pfv"></iframe>

                    </div>

                    <%--<a href="${path}/openProject1.html">test</a>--%>
                </div>
            </section>


            <section id="block3">

                <div class="well well-lg" style="padding-top:0px">

                    <div class="row">
                        <div class="col-sm-10">
                            <h3>Sequence Alignment</h3>
                        </div>
                        <div class="col-sm-2 text-right" style="margin-top:10px">
                            <h4><a onclick="window.scrollTo(0,0);"><i class="glyphicon glyphicon-arrow-up"></i> Top</a>
                            </h4>
                        </div>
                    </div>

                    <div style="width: 100%;margin-top:16px;margin-bottom:0px;padding-top:8px;padding-left:8px;padding-bottom:8px;padding-right:8px;background-color:#FFFFFF;margin-left:auto;margin-right: auto;">
                        <%--<h3>Sequence Alignment</h3>--%>
                        <iframe src="http://prism.erc.monash.edu/associate/aa/${sessionScope.pdb}_${sessionScope.chain}.html"
                                width='1380px' ,
                                height=350 frameborder="0" allowtransparency="yes"></iframe>

                    </div>

                    <%--<a href="${path}/openProject1.html">test</a>--%>
                </div>
            </section>
            <c:if test="${!empty mu}">
                <section id="block4">

                    <div class="well well-lg" style="padding-top:0px">

                        <div class="row">
                            <div class="col-sm-10">
                                <h3>Mutation Information</h3>
                            </div>
                            <div class="col-sm-2 text-right" style="margin-top:10px">
                                <h4><a onclick="window.scrollTo(0,0);"><i class="glyphicon glyphicon-arrow-up"></i> Top</a>
                                </h4>
                            </div>
                        </div>

                        <div style="width: 100%;margin-top:16px;margin-bottom:0px;padding-top:8px;padding-left:8px;padding-bottom:8px;padding-right:8px;background-color:#FFFFFF;margin-left:auto;margin-right: auto;">
                                <%--<h3>Sequence Alignment</h3>--%>

                            <C:forEach var="mui" items="${mu}">
                                <c:if test="${!empty mui.value}">
                                    <table class="table table-bordered table-striped table-condensed table-hover" style="margin:auto;width:95%;word-break:break-all;">
                                    <colgroup>
                                        <col class="col-sm-2">
                                        <col class="col-sm-1">
                                        <col class="col-sm-1">
                                        <col class="col-sm-1">
                                        <col class="col-sm-2">
                                        <col class="col-sm-1">
                                        <col class="col-sm-2">
                                        <!--<col class="col-sm-2">-->
                                    </colgroup>
                                    <caption>${mui.key}</caption>
                                    <thead>
                                    <tr>
                                        <th>Maingenename</th>
                                        <th>SwissProtAC</th>
                                        <th>FTId</th>
                                        <th>AAchange</th>
                                        <th>Typeofvariant</th>
                                        <th>dbSNP</th>
                                        <th>Diseasename</th>
                                        <!-- <th>Origin</th> -->
                                    </tr>
                                    </thead>
                                    <tbody>


                                    <C:forEach var="muii" items="${mui.value}">
                                        <tr>
                                            <td>${muii.maingenename}</td>
                                            <td>${muii.swissprotac}</td>
                                            <td>${muii.ftid}</td>
                                            <td>${muii.aachange}</td>
                                            <td>${muii.typeofvariant}</td>
                                            <td>${muii.dbsnp}</td>
                                            <td>${muii.diseasename}</td>
                                            <!-- <td >T3SE_UniProt</td> -->
                                        </tr>
                                    </C:forEach>
                                </c:if>


                                </tbody>
                                </table>
                                <%--<tr>--%>
                                <%--<td>${totlei.value.get(1)}</td>--%>
                                <%--<td><a href="browseType?type=${totlei.key}">${totlei.key}</a></td>--%>
                                <%--<td>${totlei.value.get(2)}</td>--%>
                                <%--<td>${totlei.value.get(0)}</td>--%>
                                <%--<!-- <td >T3SE_UniProt</td> -->--%>
                                <%--</tr>--%>
                            </C:forEach>


                        </div>

                            <%--<a href="${path}/openProject1.html">test</a>--%>
                    </div>
                </section>
            </c:if>
            <section id="block6">

                <div class="well well-lg" style="padding-top:0px">

                    <div class="row">
                        <div class="col-sm-10">
                            <h3>Disorder picture</h3>
                        </div>
                        <div class="col-sm-2 text-right" style="margin-top:10px">
                            <h4><a onclick="window.scrollTo(0,0);"><i class="glyphicon glyphicon-arrow-up"></i> Top</a>
                            </h4>
                        </div>
                    </div>


                    <div style="width: 100%;margin-top:16px;margin-bottom:0px;padding-top:8px;padding-left:8px;padding-bottom:8px;padding-right:8px;background-color:#FFFFFF;margin-left:auto;margin-right: auto;">
                        <%--<h3>Protein Feature Viewr</h3>--%>
                        <div style="padding-bottom: 10px">
                            <div class="col-sm-2" style="font-size: 1.2em">
                                Select UniProt to view:
                            </div>
                            <div class="col-sm-2">
                                <select id="select" name="SearchID" class="input-medium form-control">
                                    <c:if test="${!empty sessionScope.UniprotID}">
                                        <c:forEach var="UniprotIDi" items="${sessionScope.UniprotID}">
                                            <option value="${UniprotIDi}">${UniprotIDi}</option>
                                        </c:forEach>
                                    </c:if>
                                </select>
                            </div>
                            <%--<button class="btn btn-primary" onclick="openDisorder()">Click here to see the enlarged diagram</button>--%>
                        </div>
                        <div style="padding-bottom: 10px">
                            <div class="col-sm-2" style="font-size: 1.2em">

                            </div>
                        </div>
                        <br>

                        <iframe src="http://d2p2.pro/cgi/archpic.cgi?genome=up&amp;seqids=${sessionScope.UniprotID.get(0)}&amp"
                                width="1380px"
                                height="600px" id="disorder"></iframe>
                        <a onclick="openDisorder()" style="text-decoration:underline;font-size: 1.2em;cursor: pointer;">Click
                            here to see the enlarged diagram</a>
                    </div>

                    <%--<a href="${path}/openProject1.html">test</a>--%>
                </div>
            </section>
            <section id="block5">

                <div class="well well-lg" style="padding-top:0px">

                    <div class="row">
                        <div class="col-sm-10">
                            <h3>Sequence view</h3>
                        </div>
                        <div class="col-sm-2 text-right" style="margin-top:10px">
                            <h4><a onclick="window.scrollTo(0,0);"><i class="glyphicon glyphicon-arrow-up"></i> Top</a>
                            </h4>
                        </div>
                    </div>

                    <div style="width: 100%;margin-top:16px;margin-bottom:0px;padding-top:8px;padding-left:8px;padding-bottom:8px;padding-right:8px;background-color:#FFFFFF;margin-left:auto;margin-right: auto;">
                        <%--<h3>Sequence Alignment</h3>--%>
                        <center>
                            <img src="http://prism.erc.monash.edu/associate/rcsb/${sessionScope.pdb}_${sessionScope.chain}.png"
                                 width="600px">
                        </center>

                    </div>

                    <%--<a href="${path}/openProject1.html">test</a>--%>
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

