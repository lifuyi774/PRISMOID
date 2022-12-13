<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/inc/taglibs.jsp" %>
<!DOCTYPE html>
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!-->
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

    <script type="text/javascript" src="${path}/browseStatic/plugins/jquery.min.js"></script>
    <script>

        function form1submit() {
            if ($("#ID").value == "") {
            } else {
                $("#form1").submit();
            }
        }

        function form2submit() {
            if ($("#proteinName").value == "") {
            } else {
                $("#form2").submit();
            }
        }

        function idexample() {
            if ($("#searchSelectedId").val() == "UniprotID") {
                $("#ID").val("P13984");
            } else if ($("#searchSelectedId").val() == "PDBID") {
                $("#ID").val("5IY6");
            } else {
                $("#ID").val("1");
            }
        }

        function pnexample() {
            if ($("#searchSelectedName").val() == "proteinName") {
                $("#proteinName").val("General transcription factor IIF subunit 2");
            } else {
                $("#proteinName").val("GTF2F2");
            }
        }

        function multiexample() {
            $("#searchSelectedMulti").val("UniProtID");
            $("#multi").val("Q9UL46,Q12933,P00514");
        }

    </script>

    <script>

        var count = 1;

        function changeselect(argument) {
            // body...
            if ($(argument).val() == "PTMType") {
                var text = $(argument).parent().parent().siblings("div[name='textarea']");
                text.empty();
                text.append(" <div class=\"col-sm-6\" style=\"padding-top:6px\">\n" +
                    <c:if test="${!empty ptmtypes}">
                    "<table style=\"border:0\">" +
                    <c:forEach items="${ptmtypes}" var="ptmtype" varStatus="status">
                    <c:if test="${status.count % 2 == 1}" >
                    "<tr>" +
                    </c:if>
                    "                    <td><input type=\"checkbox\" name=\"expeType\" value=\"${ptmtype}\"> ${ptmtype} \n&nbsp;&nbsp;&nbsp;<td>" +
                    <c:if test="${status.count % 2 == 0}" >
                    "</tr>" +
                    </c:if>
                    </c:forEach>
                    </c:if>
                    "                </div>");
            }

            if ($(argument).val() != "PTMType") {
                var text = $(argument).parent().parent().siblings("div[name='textarea']");
                text.empty();
                if ($(argument).val() != "select") {
                    if ($(argument).val() == "Range") {
                        text.append(" <div class=\"col-sm-1\" style=\"padding-top:6px\">\n" +
                            "                    between: <input class=\"form-control\" type=\"number\" name=\"rangeBottom\" placeholder=\"0 to 10\" min=\"0\" max=\"10\" step=\"0.01\">  \n" +
                            "                    and: <input class=\"form-control\" type=\"number\" name=\"rangeTop\" placeholder=\"0 to 10\" min=\"0\" max=\"10\" step=\"0.01\">\n" +
                            "                </div>");
                    } else {
                        text.append("<div class=\"col-sm-6\" style=\"padding-top:6px\">\n" +
                            "                                            <textarea class=\"form-control\" rows=\"3\" placeholder=\"Input multiple ID separate with ,\" name=\"multi\"></textarea>\n" +
                            "                                        </div>");

                    }
                }
            }

        }

        function add() {
            if (count == 5) {
                return;
            }
            $("#submit3").before("<fieldset style=\"margin-bottom:0px;\">\n" +
                "            <div class=\"form-group\">\n" +
                "                <div class=\"col-sm-3\" style=\"padding-top:6px\">\n" +
                "                    <label for=\"firstname\">Advanced Search<span style=\"color:red\">*</span></label>\n" +
                "                </div>\n" +
                "                <div class=\"col-sm-3\">\n" +
                "                    <select name=\"field\" class=\"form-control\" onchange=\"changeselect(this);\">\n" +
                "						 <option value=\"select\">Choose a Query Type:</option>" +
                "                        <option value=\"PTMType\">PTM Type (Multi)</option>\n" +
                "                        <option value=\"PDBChain1\">PDB ID (Multi)</option>\n" +
                "                        <option value=\"PDBChain2\">Chain ID (Multi)</option>\n" +
                "                        <option value=\"UniProtID\">UniProt ACC (Multi)</option>\n" +
                "                        <option value=\"Range\">X-RAY Resolution</option>\n" +
                "                    </select>\n" +
                "                </div>\n" +
                "            </div>\n" +
                "            <div class=\"form-group\" name=\"textarea\">\n" +
                "            </div>\n" +
                "        </fieldset>" +
                "        <hr style=\"border-top: 1px solid #1ABC9C\">");
            count++;
        }

        function form3submit() {
            // body...
            var map = {};
            $("select[name='field']").each(function () {
                if ($(this).parent().parent().siblings("div[name='textarea']").children().children().length == 2) {
                    map["rangeTop"] = $(this).parent().parent().siblings("div[name='textarea']").children().children("input[name='rangeTop']").val();
                    map["rangeBottom"] = $(this).parent().parent().siblings("div[name='textarea']").children().children("input[name='rangeBottom']").val();
                }
                if ($(this).parent().parent().siblings("div[name='textarea']").children().children().attr("name") == "expeType") {
                    var obj = $(this).parent().parent().siblings("div[name='textarea']").children().children();
                    var s = '';//如果这样定义var s;变量s中会默认被赋个null值
                    for (var i = 0; i < obj.length; i++) {
                        if (obj[i].checked) //取到对象数组后，我们来循环检测它是不是被选中
                            s += obj[i].value + ','; //如果选中，将value添加到变量s中
                    }
                    map[$(this).val()] = s;
                }
                else {
                    map[$(this).val()] = $(this).parent().parent().siblings("div[name='textarea']").children().children().val();
                }
            });
            var newUrl = "${path}/pdb/searchMulti?test=test";
            if (map.PTMType != undefined) {
                newUrl = newUrl + "&PTMType=" + map.PTMType;
            }
            if (map.PDBChain1 != undefined) {
                newUrl = newUrl + "&PDBChain1=" + map.PDBChain1;
            }
            if (map.PDBChain2 != undefined) {
                newUrl = newUrl + "&PDBChain2=" + map.PDBChain2;
            }
            if (map.UniProtID != undefined) {
                newUrl = newUrl + "&UniProtID=" + map.UniProtID;
            }
            if (map.rangeTop != undefined) {
                newUrl = newUrl + "&rangeTop=" + map.rangeTop;
                newUrl = newUrl + "&rangeBottom=" + map.rangeBottom;
                if (map.rangeBottom >= map.rangeTop || map.rangeBottom == undefined) {
                    alert("Range is not correct!");
                    return;
                }
            }

            window.location.href = newUrl;
        }
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
                    size="+2"> Search</font></b></span>
            </div>


            <section id="block1">
                <div class="well well-lg">
                    <h3 style="margin-top:0px;margin-bottom:16px;">ID Search</h3>

                    <p>
                        Search with UniProt ID or Database ID.
                    </p>

                    <div style="width: 100%;margin-top:16px;margin-bottom:16px;padding-top:16px;padding-left:16px;padding-bottom:16px;padding-right:16px;background-color:#FFFFFF;margin-left:auto;margin-right: auto;">
                        <form action="${path}/pdb/searchDBByID" class="form-horizontal" id="form1">
                            <fieldset style="margin-bottom:16px;">
                                <div class="form-group">
                                    <div class="col-sm-3">
                                        <select id="searchSelectedId" name="SearchID" class="form-control">
                                            <option value="PDBID" selected>PDB ID</option>
                                            <option value="UniprotID">UniProt ID</option>
                                            <option value="proteinID">Database ID</option>
                                        </select>
                                    </div>
                                    <div class="col-sm-3">
                                        <input type="text" class="form-control" id="ID" name="ID" required
                                               placeholder="UniProt ID or Database ID or PDBID">
                                    </div>
                                </div>
                            </fieldset>

                            <div class="form-actions">
                                <button class="btn btn-primary" onclick="form1submit()"><i class="fa fa-search"></i>&nbsp;&nbsp;Submit
                                </button>
                                <button id="searchDBByID_button" type="button" class="btn btn-primary"
                                        onclick="idexample()"><i class="fa fa-lightbulb-o"></i>&nbsp;&nbsp;Example
                                </button>
                                <!--
                                <button type="button" class="btn btn-primary" onclick="window.location.href='searchResults.html';">Click Here to See Result Page</button>
                                <button type="button" class="btn btn-primary" onclick="window.location.href='searchNoResults.html';">Click Here to See No Result Page</button>
                                 -->
                                <button type="reset" class="btn btn-primary" data-toggle="tooltip"
                                        title="Caution: Reset will clear all the inputs!"><i class="fa fa-times"></i>&nbsp;&nbsp;Reset
                                </button>
                            </div>
                        </form>
                    </div>

                </div>

            </section>


            <section id="block2">
                <div class="well well-lg">
                    <h3 style="margin-top:0px;margin-bottom:16px;">Keyword Search</h3>

                    <p>
                        Use different kinds of keywords to search Database.
                    </p>

                    <div style="width: 100%;margin-top:16px;margin-bottom:16px;padding-top:16px;padding-left:16px;padding-bottom:16px;padding-right:16px;background-color:#FFFFFF;margin-left:auto;margin-right: auto;">

                        <div style="margin-bottom:32px;">
                            <form action="${path}/pdb/searchDBByName" class="form-horizontal" id="form2">
                                <fieldset style="margin-bottom:0px;">
                                    <div class="form-group">
                                        <div class="col-sm-3">
                                            <select id="searchSelectedName" name="SearchType" class="form-control">
                                                <option value="proteinName" selected>Protein Name</option>
                                                <option value="geneName">GeneName</option>
                                            </select>
                                        </div>
                                        <div class="col-sm-3">
                                            <input type="text" class="form-control" id="proteinName" name="proteinName"
                                                   required
                                                   placeholder="Please Input Protein Name">
                                        </div>
                                    </div>
                                </fieldset>
                                <div class="form-actions">
                                    <button class="btn btn-primary" onclick="form2submit()"><i class="fa fa-search"></i>&nbsp;&nbsp;Submit
                                    </button>
                                    <button id="searchDBByName_button" type="button" class="btn btn-primary"
                                            onclick="pnexample()"><i class="fa fa-lightbulb-o"></i>&nbsp;&nbsp;Example
                                    </button>
                                    <button type="reset" class="btn btn-primary" data-toggle="tooltip"
                                            title="Caution: Reset will clear all the inputs!"><i
                                            class="fa fa-times"></i>&nbsp;&nbsp;Reset
                                    </button>
                                </div>
                            </form>
                        </div>

                    </div>

                </div>

            </section>

            <section id="block3">
                <div class="well well-lg">
                    <h3 style="margin-top:0px;margin-bottom:16px;">Advanced Search</h3>

                    <p>
                        Use different kinds of keywords to search Database.
                    </p>

                    <div style="width: 100%;margin-top:16px;margin-bottom:16px;padding-top:16px;padding-left:16px;padding-bottom:16px;padding-right:16px;background-color:#FFFFFF;margin-left:auto;margin-right: auto;">

                        <div style="margin-bottom:32px;">
                            <form class="form-horizontal" id="form3" onsubmit="return false">
                                <fieldset style="margin-bottom:0px;">
                                    <div class="form-group">
                                        <div class="col-sm-3" style="padding-top:6px">
                                            <label for="firstname">Advanced Search<span
                                                    style="color:red">*</span></label>
                                        </div>
                                        <div class="col-sm-3">
                                            <select name="field" class="form-control" onchange="changeselect(this);">
                                                <option value="select">Choose a Query Type:</option>
                                                <option value="PTMType">PTM Type (Multi)</option>
                                                <option value="PDBChain1">PDB ID (Multi)</option>
                                                <option value="PDBChain2">Chain ID (Multi)</option>
                                                <option value="UniProtID">UniProt ACC (Multi)</option>
                                                <option value="Range">X-RAY Resolution</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group" name="textarea">
                                        <div class="col-sm-6" style="padding-top:6px">
                                        </div>
                                    </div>
                                </fieldset>
                                <hr style="border-top: 1px solid #1ABC9C">
                                <div class="form-actions" id="submit3" style="margin-bottom: 10px">
                                    <button class="btn btn-primary" onclick="add();"><i class="fa fa-plus"></i>&nbsp;&nbsp;Add
                                        Search Schema
                                    </button>
                                </div>
                                <div class="form-actions">
                                    <button class="btn btn-primary" onclick="form3submit()"><i class="fa fa-search"></i>&nbsp;&nbsp;Submit
                                    </button>
                                    <%--<button id="searchDBMulti_button" type="button" class="btn btn-primary"--%>
                                    <%--onclick="multiexample()">Example--%>
                                    <%--</button>--%>
                                    <button type="reset" class="btn btn-primary" data-toggle="tooltip"
                                            title="Caution: Reset will clear all the inputs!"><i
                                            class="fa fa-times"></i>&nbsp;&nbsp;Reset
                                    </button>
                                </div>
                            </form>
                        </div>

                    </div>

                </div>

            </section>

        </div>

    </section>


</section>

<!-- .subfooter start -->
<%@ include file="/WEB-INF/inc/footer.jsp" %>
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
<%--<script src="${path}/browseStatic/contact/contact_me.js"></script>--%>

<!-- Custom Scripts -->
<script type="text/javascript" src="${path}/browseStatic/js/browseCustom.js"></script>

</body>
</html>
