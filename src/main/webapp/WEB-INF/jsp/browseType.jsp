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
    <style type="text/css">
        table {
            border-collapse: collapse;
            width: 100%;
            cursor: default; /*该属性定义了鼠标指针放在一个元素边界范围内时所用的光标形状,default默认光标（通常是一个箭头）*/
        }

        tr {
            height: 30px;
        }

        table thead tr {
        }

        td {
        }

        th {
            /*text-align: center;*/
            cursor: pointer; /*光标呈现为指示链接的指针（一只手）*/
        }

        .sequence {
            text-align: center;
        }

        .hover {
            background-color: #D8D8D8;
        }
    </style>

    <script type="text/javascript" src="${path}/browseStatic/plugins/jquery.min.js"></script>

    <script type="text/javascript">
        $(function () {
            var tableObject = $('#tableSort'); //获取id为tableSort的table对象
            var tbHead = tableObject.children('thead'); //获取table对象下的thead
            var tbHeadTh = tbHead.find('tr th'); //获取thead下的tr下的th
            var tbBody = tableObject.children('tbody'); //获取table对象下的tbody
            var tbBodyTr = tbBody.find('tr'); //获取tbody下的tr

            var sortIndex = -1;

            tbHeadTh.each(function () {//遍历thead的tr下的th
                var thisIndex = tbHeadTh.index($(this)); //获取th所在的列号
                //给表态th增加鼠标位于上方时发生的事件
                // $(this).mouseover(function () {
                //     tbBodyTr.each(function () {//编列tbody下的tr
                //         var tds = $(this).find("td"); //获取列号为参数index的td对象集合
                //         $(tds[thisIndex]).addClass("hover");//给列号为参数index的td对象添加样式
                //     });
                // }).mouseout(function () {//给表头th增加鼠标离开时的事件
                //     tbBodyTr.each(function () {
                //         var tds = $(this).find("td");
                //         $(tds[thisIndex]).removeClass("hover");//鼠标离开时移除td对象上的样式
                //     });
                // });

                $(this).click(function () {//给当前表头th增加点击事件
                    var dataType = $(this).attr("type");//点击时获取当前th的type属性值
                    checkColumnValue(thisIndex, dataType);
                });
            });

            // $("tbody tr").removeClass(); //先移除tbody下tr的所有css类
            // //table中tbody中tr鼠标位于上面时添加颜色,离开时移除颜色
            // $("tbody tr").mouseover(function () {
            //     $(this).addClass("hover");
            // }).mouseout(function () {
            //     $(this).removeClass("hover");
            // });

            //对表格排序
            function checkColumnValue(index, type) {
                var trsValue = new Array();

                tbBodyTr.each(function () {
                    var tds = $(this).find('td');
                    //获取行号为index列的某一行的单元格内容与该单元格所在行的行内容添加到数组trsValue中
                    trsValue.push(type + ".separator" + $(tds[index]).html() + ".separator" + $(this).html());
                    $(this).html("");
                });

                var len = trsValue.length;

                if (index == sortIndex) {
                    //如果已经排序了则直接倒序
                    trsValue.reverse();
                } else {
                    for (var i = 0; i < len; i++) {
                        //split() 方法用于把一个字符串分割成字符串数组
                        //获取每行分割后数组的第一个值,即此列的数组类型,定义了字符串\数字\Ip
                        type = trsValue[i].split(".separator")[0];
                        for (var j = i + 1; j < len; j++) {
                            //获取每行分割后数组的第二个值,即文本值
                            value1 = trsValue[i].split(".separator")[1];
                            //获取下一行分割后数组的第二个值,即文本值
                            value2 = trsValue[j].split(".separator")[1];
                            //接下来是数字\字符串等的比较
                            if (type == "number") {
                                value1 = value1 == "" ? 0 : value1;
                                value2 = value2 == "" ? 0 : value2;
                                if (parseFloat(value1) > parseFloat(value2)) {
                                    var temp = trsValue[j];
                                    trsValue[j] = trsValue[i];
                                    trsValue[i] = temp;
                                }
                            } else if (type == "ip") {
                                if (ip2int(value1) > ip2int(value2)) {
                                    var temp = trsValue[j];
                                    trsValue[j] = trsValue[i];
                                    trsValue[i] = temp;
                                }
                            } else {
                                if (value1.localeCompare(value2) > 0) {//该方法不兼容谷歌浏览器
                                    var temp = trsValue[j];
                                    trsValue[j] = trsValue[i];
                                    trsValue[i] = temp;
                                }
                            }
                        }
                    }
                }

                for (var i = 0; i < len; i++) {
                    $("tbody tr:eq(" + i + ")").html(trsValue[i].split(".separator")[2]);
                }

                sortIndex = index;
            }

            //IP转成整型
            function ip2int(ip) {
                var num = 0;
                ip = ip.split(".");
                num = Number(ip[0]) * 256 * 256 * 256 + Number(ip[1]) * 256 * 256 + Number(ip[2]) * 256 + Number(ip[3]);
                return num;
            }

        })
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
                    size="+2"> <a href="${path}/pdb/browse">Browse</a>>${type}</font></b></span>
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

                        <table id="tableSort" class="table table-bordered table-striped table-condensed table-hover"
                               style="word-break:break-all;">
                            <colgroup>
                                <col class="col-sm-3">
                                <col class="col-sm-2">
                                <col class="col-sm-4">
                                <%--<col class="col-sm-2">--%>
                                <!--<col class="col-sm-2">-->
                            </colgroup>
                            <thead>
                            <tr>
                                <th>DBID<i style="float: right;font-style:normal">&#8645;</i> </th>
                                <th>PDBChain<i style="float: right;font-style:normal">&#8645;</i> </th>
                                <th>Protein Name<i style="float: right;font-style:normal">&#8645;</i> </th>
                                <%--<th>Amount</th>--%>
                                <!-- <th>Origin</th> -->
                            </tr>
                            </thead>
                            <tbody>

                            <c:if test="${!empty typeList}">
                                <C:forEach var="type" items="${typeList}">
                                    <tr>
                                        <td>${type.dbid}</td>
                                            <%--<td><a href="browseType?type=${totlei.key}">${totlei.key}</a></td>--%>
                                        <td><a href="${path}/pdb/entry?pdbchain=${type.pdbchain}">${type.pdbchain}</a></td>
                                        <td>${type.proteinname}</td>
                                        <!-- <td >T3SE_UniProt</td> -->
                                    </tr>
                                </C:forEach>
                            </c:if>


                            </tbody>
                        </table>

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
