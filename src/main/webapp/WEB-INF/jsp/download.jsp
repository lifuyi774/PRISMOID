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
                    size="+2"> Download</font></b></span>
            </div>


            <section id="block1">
                <div class="well well-lg">
                    <p>
                    <ul class="list">
                        <c:if test="${!empty downloads}">
                            <c:forEach items="${downloads}" var="download">
                                <li>
                                    <c:if test="${download.name=='PTMSites'}">
                                        <div class="dropdown">
                                            <a id="dropdownMenu1"
                                               data-toggle="dropdown" style="cursor: pointer;">
                                                    ${download.description}
                                                <span class="caret"></span>
                                            </a>
                                            <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
                                                <c:if test="${!empty ptms}">
                                                    <c:forEach items="${ptms}" var="ptm">
                                                        <li role="presentation">
                                                            <a id="${ptm}" role="menuitem" tabindex="-1"
                                                               href="${download.url}${ptm}.csv"
                                                               onclick="return writeDB(this)">${ptm}</a>
                                                        </li>
                                                    </c:forEach>
                                                </c:if>
                                            </ul>
                                        </div>
                                    </c:if>
                                    <c:if test="${download.name!='PTMSites'}">
                                        <a id="${download.name}" name="${download.name}" href="${download.url}"
                                           onclick="return writeDB(this)">${download.description}</a>
                                        <br/>
                                    </c:if>
                                    <div style="padding-left:20px;font-size:12px;"><i class="icon-download-alt"></i>
                                        <i><i id="${download.name}Num">${download.downloadtimes}</i>
                                            downloads</i> </br><i class="icon-calendar"></i> <i>Last
                                            Update: ${download.lastupdate}</i></div>
                                </li>
                            </c:forEach>
                        </c:if>
                    </ul>
                    You can find every update of our project and track prior versions on the <a href="${path}/pdb/timeline">Timeline</a> page.
                    </p>

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

<script>
    function writeDB(obj) {
        //alert("Enter write function!")
        var name = $(obj).attr('id');
        if (name != "wholeDatabase" && name != "pdbFiles" && name != "alignmentFiles") {
            name = "PTMSites";
        }
        // alert(name);
        $.ajax({
            type: "post",
            url: "${path}/pdb/writeDBAjaxAction",
            async: false,
            data: {"name": name},
            dataType: "json",
            success: function (data) {
                // alert(data);
                //var array = data.split(";");
                $("#" + name + "Num").empty();
                $("#" + name + "Num").html(data);
            },
            error: function () {
                alert("Errors Occur. Please try again.");
            }
        });
    }
</script>

</body>
</html>
