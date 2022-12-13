<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/inc/taglibs.jsp" %>
<!DOCTYPE html>
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<head>
    <meta charset="utf-8">
    <title>Statistics-PRISM</title>
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

    <script src="${path}/browseStatic/js/echarts.min.js"></script>
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
                                        <li class="active"><a href="${path}/pdb/statistics">Statistics</a></li>
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
                    size="+2"> Statistics</font></b></span>
            </div>


            <section id="block1">
                <div class="well well-lg">
                    <h3 style="margin-top:0px;margin-bottom:16px;">1. Statistics According to Entries (PDB Chain)</h3>

                    <div>
                        <p>
                            Data stores in our database contains most of the datas you need.
                            Here, we listed the proteins statistics according to PDBChains.
                        </p>
                        <p>
                            <label>Choose to view:</label>
                            <select id="selectEntries" name="selectEntries" class="input-medium form-control"
                                    style="width: 30%">
                                <option value="EntriesAccordingToPTMType">Entries according to PTMType</option>
                                <option value="EntriesAccordingToSpecies">Entries according to species</option>
                                <option value="EntriesAccordingToPolymophismMutation">Entries according to polymophism
                                    mutation
                                </option>
                                <option value="EntriesAccordingToDiseaseMutation">Entries according to Disease
                                    mutation
                                </option>
                                <option value="EntriesAccordingToDiseaseType">Entries according to Disease type</option>
                            </select>
                        </p>

                    </div>
                    <div class="text-center"
                         style="width: 100%;margin-top:16px;padding-top:8px;padding-left:8px;padding-bottom:8px;padding-right:8px;background-color:#FFFFFF;">
                        <div id="StatisticsAccordingToEntries" style="width: 100%;height:500px;"></div>

                    </div>

                </div>

            </section>
            <section id="block2">
                <div class="well well-lg">

                    <h3 style="margin-top:0px;margin-bottom:16px;">2. Statistics According to the Number of PTM
                        sites</h3>

                    <div>
                        <p>
                            Except for statistics sort by PDBChains, we also provide some statistics sort by the Number
                            of PTM sites, you can choose which you need to view.
                        </p>
                        <p>
                            <label>Choose to view:</label>
                            <select id="selectPTMSites" name="selectPTMSites" class="input-medium form-control"
                                    style="width: 30%">
                                <option value="PTMSitesAccordingToPTMTypes">Number of PTM sites according to PTM types
                                </option>
                                <option value="PTMSitesAccordingToSpecies">Number of PTM sites according to species
                                </option>
                                <option value="CancerMutationsAffectingPTMSites">Number of cancer mutations affecting PTM sites according to PTM types
                                </option>
                                <option value="DiseaseMutationsAffectingPTMSites">Number of disease mutations affecting PTM sites according to PTM types
                                </option>
                                <option value="PopulationMutationsAffectingPTMSites">Number of population mutations affecting PTM sites according to PTM types
                                </option>
                                <option value="TotalMutationsAffectingPTMSites">Number of mutations affecting PTM sites according to Mutation types
                                </option>
                            </select>
                        </p>

                    </div>
                    <div class="text-center"
                         style="width: 100%;margin-top:16px;padding-top:8px;padding-left:8px;padding-bottom:8px;padding-right:8px;background-color:#FFFFFF;">
                        <div id="StatisticsAccordingToPTMSites" style="width: 100%;height:500px;"></div>

                    </div>
                </div>

            </section>
            <%--<section id="block3">--%>
            <%--<div class="well well-lg">--%>
            <%--<h3 style="margin-top:0px;margin-bottom:16px;">3. Protein entries according to species</h3>--%>

            <%--<div>--%>
            <%--<p>--%>
            <%--We collected species for proteins in our database. Unfortunately, not every entry exist its--%>
            <%--organism information. Here, we analyzed the proteins according to their protein species.--%>
            <%--</p>--%>

            <%--</div>--%>
            <%--<div class="text-center"--%>
            <%--style="width: 100%;margin-top:16px;padding-top:8px;padding-left:8px;padding-bottom:8px;padding-right:8px;background-color:#FFFFFF;">--%>
            <%--<div id="speciesChart" style="width: 100%;height:500px;"></div>--%>
            <%--</div>--%>
            <%--</div>--%>
            <%--</section>--%>


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
<script type="text/javascript">
    // 基于准备好的dom，初始化echarts实例
    var StatisticsAccordingToEntriesChart = echarts.init(document.getElementById('StatisticsAccordingToEntries'));


    // 指定图表的配置项和数据
    var legendData = [];
    var seriesData = [];
    var selected = {};
    <c:forEach var="EntryAccordingToPTMType" items="${EntriesAccordingToPTMType}" varStatus="status">
    seriesData.push({
        name: "${EntryAccordingToPTMType.name}",
        value:${EntryAccordingToPTMType.value}
    });
    legendData.push("${EntryAccordingToPTMType.name}");
    var i = ${status.index};
    selected["${EntryAccordingToPTMType.name}"] = i < 6;
    </c:forEach>

    EntriesAccordingToPTMTypeOption = {
        title: {
            text: 'Entries according to PTMType',
            subtext: '${EntriesAccordingToPTMType.size()} types of entries (PDBChains) according to PTMType',
            x: 'center'
        },
        tooltip: {
            trigger: 'item',
            formatter: "{a} <br/>{b} : {c} ({d}%)"
        },
        legend: {
            type: 'scroll',
            orient: 'vertical',
            left: 50,
            top: 20,
            bottom: 20,
            data: legendData,

            selected: selected
        },
        series: [{
            name: 'Statistics Data',
            type: 'pie',
            radius: '55%',
            center: ['60%', '50%'],
            data: seriesData,
            itemStyle: {
                emphasis: {
                    shadowBlur: 10,
                    shadowOffsetX: 0,
                    shadowColor: 'rgba(0, 0, 0, 0.5)'
                }
            }
        }]
    };

    // 使用刚指定的配置项和数据显示图表。
    StatisticsAccordingToEntriesChart.setOption(EntriesAccordingToPTMTypeOption);


    // 指定图表的配置项和数据
    var legendData = [];
    var seriesData = [];
    var selected = {};
    <c:forEach var="EntryAccordingToSpecies" items="${EntriesAccordingToSpecies}" varStatus="status">
    seriesData.push({
        name: "${EntryAccordingToSpecies.name}",
        value:${EntryAccordingToSpecies.value}
    });
    legendData.push("${EntryAccordingToSpecies.name}");
    var i = ${status.index};
    selected["${EntryAccordingToSpecies.name}"] = i < 6;
    </c:forEach>

    EntriesAccordingToSpeciesOption = {
        title: {
            text: 'Entries according to species',
            subtext: '${EntriesAccordingToSpecies.size()} types of entries (PDBChains) according to species',
            x: 'center'
        },
        tooltip: {
            trigger: 'item',
            formatter: "{a} <br/>{b} : {c} ({d}%)"
        },
        legend: {
            type: 'scroll',
            orient: 'vertical',
            left: 50,
            top: 20,
            bottom: 20,
            data: legendData,

            selected: selected
        },
        series: [{
            name: 'Statistics Data',
            type: 'pie',
            radius: '55%',
            center: ['60%', '50%'],
            data: seriesData,
            itemStyle: {
                emphasis: {
                    shadowBlur: 10,
                    shadowOffsetX: 0,
                    shadowColor: 'rgba(0, 0, 0, 0.5)'
                }
            }
        }]
    };



    // 指定图表的配置项和数据
    var legendData = [];
    var seriesData = [];
    var selected = {};
    <c:forEach var="EntryAccordingToPolymophismMutation" items="${EntriesAccordingToPolymophismMutation}" varStatus="status">
    seriesData.push({
        name: "${EntryAccordingToPolymophismMutation.name}",
        value:${EntryAccordingToPolymophismMutation.value}
    });
    legendData.push("${EntryAccordingToPolymophismMutation.name}");
    var i = ${status.index};
    selected["${EntryAccordingToPolymophismMutation.name}"] = i < 6;
    </c:forEach>

    EntriesAccordingToPolymophismMutationOption = {
        title: {
            text: 'Entries according to Polymophism mutation',
            subtext: '${EntriesAccordingToPolymophismMutation.size()} types of entries (PDBChains) according to Polymophism mutation',
            x: 'center'
        },
        tooltip: {
            trigger: 'item',
            formatter: "{a} <br/>{b} : {c} ({d}%)"
        },
        legend: {
            type: 'scroll',
            orient: 'vertical',
            left: 50,
            top: 20,
            bottom: 20,
            data: legendData,

            selected: selected
        },
        series: [{
            name: 'Statistics Data',
            type: 'pie',
            radius: '55%',
            center: ['60%', '50%'],
            data: seriesData,
            itemStyle: {
                emphasis: {
                    shadowBlur: 10,
                    shadowOffsetX: 0,
                    shadowColor: 'rgba(0, 0, 0, 0.5)'
                }
            }
        }]
    };


    // 指定图表的配置项和数据
    var legendData = [];
    var seriesData = [];
    var selected = {};
    <c:forEach var="EntryAccordingToDiseaseMutation" items="${EntriesAccordingToDiseaseMutation}" varStatus="status">
    seriesData.push({
        name: "${EntryAccordingToDiseaseMutation.name}",
        value:${EntryAccordingToDiseaseMutation.value}
    });
    legendData.push("${EntryAccordingToDiseaseMutation.name}");
    var i = ${status.index};
    selected["${EntryAccordingToDiseaseMutation.name}"] = i < 6;
    </c:forEach>

    EntriesAccordingToDiseaseMutationOption = {
        title: {
            text: 'Entries according to Disease mutation',
            subtext: '${EntriesAccordingToDiseaseMutation.size()} types of entries (PDBChains) according to Disease mutation',
            x: 'center'
        },
        tooltip: {
            trigger: 'item',
            formatter: "{a} <br/>{b} : {c} ({d}%)"
        },
        legend: {
            type: 'scroll',
            orient: 'vertical',
            left: 50,
            top: 20,
            bottom: 20,
            data: legendData,

            selected: selected
        },
        series: [{
            name: 'Statistics Data',
            type: 'pie',
            radius: '55%',
            center: ['60%', '50%'],
            data: seriesData,
            itemStyle: {
                emphasis: {
                    shadowBlur: 10,
                    shadowOffsetX: 0,
                    shadowColor: 'rgba(0, 0, 0, 0.5)'
                }
            }
        }]
    };


    // 指定图表的配置项和数据
    var legendData = [];
    var seriesData = [];
    var selected = {};
    <c:forEach var="EntrysAccordingToDiseaseType" items="${EntriesAccordingToDiseaseType}" varStatus="status">
    seriesData.push({
        name: "${EntrysAccordingToDiseaseType.name}",
        value:${EntrysAccordingToDiseaseType.value}
    });
    legendData.push("${EntrysAccordingToDiseaseType.name}");
    var i = ${status.index};
    selected["${EntrysAccordingToDiseaseType.name}"] = i < 6;
    </c:forEach>

    EntriesAccordingToDiseaseTypeOption = {
        title: {
            text: 'Entries according to Disease type',
            subtext: '${EntriesAccordingToDiseaseType.size()} types of entries (PDBChains) according to Disease type',
            x: 'center'
        },
        tooltip: {
            trigger: 'item',
            formatter: "{a} <br/>{b} : {c} ({d}%)"
        },
        legend: {
            type: 'scroll',
            orient: 'vertical',
            left: 'left',
            data: legendData,

            selected: selected
        },
        series: [{
            name: 'Statistics Data',
            type: 'pie',
            radius: '55%',
            center: ['70%', '50%'],
            data: seriesData,
            itemStyle: {
                emphasis: {
                    shadowBlur: 10,
                    shadowOffsetX: 0,
                    shadowColor: 'rgba(0, 0, 0, 0.5)'
                }
            }
        }]
    };


    $("#selectEntries").change(function () {
        if ($(this).children('option:selected').val() == ("EntriesAccordingToPolymophismMutation")) {
            StatisticsAccordingToEntriesChart.setOption(EntriesAccordingToPolymophismMutationOption);
        }
        else if ($(this).children('option:selected').val() == ("EntriesAccordingToDiseaseMutation")) {
            StatisticsAccordingToEntriesChart.setOption(EntriesAccordingToDiseaseMutationOption);
        }
        else if ($(this).children('option:selected').val() == ("EntriesAccordingToDiseaseType")) {
            StatisticsAccordingToEntriesChart.setOption(EntriesAccordingToDiseaseTypeOption);
        }
        else if ($(this).children('option:selected').val() == ("EntriesAccordingToSpecies")) {
            StatisticsAccordingToEntriesChart.setOption(EntriesAccordingToSpeciesOption);
        }
        else if ($(this).children('option:selected').val() == ("EntriesAccordingToPTMType")) {
            StatisticsAccordingToEntriesChart.setOption(EntriesAccordingToPTMTypeOption);
        }
        // alert("test");
        // alert($(this).children('option:selected').val());
    });
</script>

<script type="text/javascript">
    // 基于准备好的dom，初始化echarts实例
    var StatisticsAccordingToPTMSitesChart = echarts.init(document.getElementById('StatisticsAccordingToPTMSites'));

    // 指定图表的配置项和数据
    var legendData = [];
    var seriesData = [];
    var selected = {};
    <c:forEach var="PTMSiteAccordingToPTMTypes" items="${PTMSitesAccordingToPTMTypes}" varStatus="status">
    seriesData.push({
        name: '${PTMSiteAccordingToPTMTypes.name}',
        value:${PTMSiteAccordingToPTMTypes.value}
    });
    legendData.push('${PTMSiteAccordingToPTMTypes.name}');
    var i = ${status.index};
    selected['${PTMSiteAccordingToPTMTypes.name}'] = i < 6;
    </c:forEach>

    PTMSitesAccordingToPTMTypesOption = {
        title: {
            text: 'The number of PTM sites of different types',
            subtext: '${PTMSitesAccordingToPTMTypes.size()} types of kinds of PTM sites of different types',
            x: 'center'
        },
        tooltip: {
            trigger: 'item',
            formatter: "{a} <br/>{b} : {c} ({d}%)"
        },
        legend: {
            type: 'scroll',
            orient: 'vertical',
            left: 50,
            top: 20,
            bottom: 20,
            data: legendData,

            selected: selected
        },
        series: [{
            name: 'Statistics Data',
            type: 'pie',
            radius: '55%',
            center: ['60%', '50%'],
            data: seriesData,
            itemStyle: {
                emphasis: {
                    shadowBlur: 10,
                    shadowOffsetX: 0,
                    shadowColor: 'rgba(0, 0, 0, 0.5)'
                }
            }
        }]
    };


    // 使用刚指定的配置项和数据显示图表。
    StatisticsAccordingToPTMSitesChart.setOption(PTMSitesAccordingToPTMTypesOption);


    // 指定图表的配置项和数据
    var legendData = [];
    var seriesData = [];
    var selected = {};
    <c:forEach var="PTMSiteAccordingToSpecies" items="${PTMSitesAccordingToSpecies}" varStatus="status">
    seriesData.push({
        name: "${PTMSiteAccordingToSpecies.name}",
        value:${PTMSiteAccordingToSpecies.value}
    });
    legendData.push("${PTMSiteAccordingToSpecies.name}");
    var i = ${status.index};
    selected["${PTMSiteAccordingToSpecies.name}"] = i < 6;
    </c:forEach>

    PTMSitesAccordingToSpeciesOption = {
        title: {
            text: 'PTM sites according to species',
            subtext: '${PTMSitesAccordingToSpecies.size()} types of kinds of PTM sites according to species',
            x: 'center'
        },
        tooltip: {
            trigger: 'item',
            formatter: "{a} <br/>{b} : {c} ({d}%)"
        },
        legend: {
            type: 'scroll',
            orient: 'vertical',
            left: 50,
            top: 20,
            bottom: 20,
            data: legendData,

            selected: selected
        },
        series: [{
            name: 'Statistics Data',
            type: 'pie',
            radius: '55%',
            center: ['60%', '50%'],
            data: seriesData,
            itemStyle: {
                emphasis: {
                    shadowBlur: 10,
                    shadowOffsetX: 0,
                    shadowColor: 'rgba(0, 0, 0, 0.5)'
                }
            }
        }]
    };

    // 指定图表的配置项和数据
    var legendData = [];
    var seriesData = [];
    var selected = {};
    <c:forEach var="CancerMutationAffectingPTMSites" items="${CancerMutationsAffectingPTMSites}" varStatus="status">
    <c:if test="${!empty CancerMutationAffectingPTMSites.value}">
    seriesData.push({
        name: "${CancerMutationAffectingPTMSites.name}",
        value:${CancerMutationAffectingPTMSites.value}
    });
    legendData.push("${CancerMutationAffectingPTMSites.name}");
    var i = ${status.index};
    selected["${CancerMutationAffectingPTMSites.name}"] = i < 6;
    </c:if>
    </c:forEach>

    CancerMutationsAffectingPTMSitesOption = {
        title: {
            text: 'PTM sites according to species',
            subtext: '${CancerMutationsAffectingPTMSites.size()} types of kinds of PTM sites according to species',
            x: 'center'
        },
        tooltip: {
            trigger: 'item',
            formatter: "{a} <br/>{b} : {c} ({d}%)"
        },
        legend: {
            type: 'scroll',
            orient: 'vertical',
            left: 50,
            top: 20,
            bottom: 20,
            data: legendData,

            selected: selected
        },
        series: [{
            name: 'Statistics Data',
            type: 'pie',
            radius: '55%',
            center: ['60%', '50%'],
            data: seriesData,
            itemStyle: {
                emphasis: {
                    shadowBlur: 10,
                    shadowOffsetX: 0,
                    shadowColor: 'rgba(0, 0, 0, 0.5)'
                }
            }
        }]
    };

    // 指定图表的配置项和数据
    var legendData = [];
    var seriesData = [];
    var selected = {};
    <c:forEach var="DiseaseMutationAffectingPTMSites" items="${DiseaseMutationsAffectingPTMSites}" varStatus="status">
    <c:if test="${!empty DiseaseMutationAffectingPTMSites.value}">
    seriesData.push({
        name: "${DiseaseMutationAffectingPTMSites.name}",
        value:${DiseaseMutationAffectingPTMSites.value}
    });
    legendData.push("${DiseaseMutationAffectingPTMSites.name}");
    var i = ${status.index};
    selected["${DiseaseMutationAffectingPTMSites.name}"] = i < 6;
    </c:if>
    </c:forEach>

    DiseaseMutationsAffectingPTMSitesOption = {
        title: {
            text: 'PTM sites according to species',
            subtext: '${DiseaseMutationsAffectingPTMSites.size()} types of kinds of PTM sites according to species',
            x: 'center'
        },
        tooltip: {
            trigger: 'item',
            formatter: "{a} <br/>{b} : {c} ({d}%)"
        },
        legend: {
            type: 'scroll',
            orient: 'vertical',
            left: 50,
            top: 20,
            bottom: 20,
            data: legendData,

            selected: selected
        },
        series: [{
            name: 'Statistics Data',
            type: 'pie',
            radius: '55%',
            center: ['60%', '50%'],
            data: seriesData,
            itemStyle: {
                emphasis: {
                    shadowBlur: 10,
                    shadowOffsetX: 0,
                    shadowColor: 'rgba(0, 0, 0, 0.5)'
                }
            }
        }]
    };

    // 指定图表的配置项和数据
    var legendData = [];
    var seriesData = [];
    var selected = {};
    <c:forEach var="PopulationMutationAffectingPTMSites" items="${PopulationMutationsAffectingPTMSites}" varStatus="status">
    <c:if test="${!empty PopulationMutationAffectingPTMSites.value}">
    seriesData.push({
        name: "${PopulationMutationAffectingPTMSites.name}",
        value:${PopulationMutationAffectingPTMSites.value}
    });
    legendData.push("${PopulationMutationAffectingPTMSites.name}");
    var i = ${status.index};
    selected["${PopulationMutationAffectingPTMSites.name}"] = i < 6;
    </c:if>
    </c:forEach>

    PopulationMutationsAffectingPTMSitesOption = {
        title: {
            text: 'PTM sites according to species',
            subtext: '${PopulationMutationsAffectingPTMSites.size()} types of kinds of PTM sites according to species',
            x: 'center'
        },
        tooltip: {
            trigger: 'item',
            formatter: "{a} <br/>{b} : {c} ({d}%)"
        },
        legend: {
            type: 'scroll',
            orient: 'vertical',
            left: 50,
            top: 20,
            bottom: 20,
            data: legendData,

            selected: selected
        },
        series: [{
            name: 'Statistics Data',
            type: 'pie',
            radius: '55%',
            center: ['60%', '50%'],
            data: seriesData,
            itemStyle: {
                emphasis: {
                    shadowBlur: 10,
                    shadowOffsetX: 0,
                    shadowColor: 'rgba(0, 0, 0, 0.5)'
                }
            }
        }]
    };

    // 指定图表的配置项和数据
    var legendData = [];
    var seriesData = [];
    var selected = {};
    <c:forEach var="TotalMutationAffectingPTMSites" items="${TotalMutationsAffectingPTMSites}" varStatus="status">
    <c:if test="${!empty TotalMutationAffectingPTMSites.value}">
    seriesData.push({
        name: "${TotalMutationAffectingPTMSites.name}",
        value:${TotalMutationAffectingPTMSites.value}
    });
    legendData.push("${TotalMutationAffectingPTMSites.name}");
    var i = ${status.index};
    selected["${TotalMutationAffectingPTMSites.name}"] = i < 6;
    </c:if>
    </c:forEach>

    TotalMutationsAffectingPTMSitesOption = {
        title: {
            text: 'PTM sites according to species',
            subtext: '${TotalMutationsAffectingPTMSites.size()} types of kinds of PTM sites according to species',
            x: 'center'
        },
        tooltip: {
            trigger: 'item',
            formatter: "{a} <br/>{b} : {c} ({d}%)"
        },
        legend: {
            type: 'scroll',
            orient: 'vertical',
            left: 50,
            top: 20,
            bottom: 20,
            data: legendData,

            selected: selected
        },
        series: [{
            name: 'Statistics Data',
            type: 'pie',
            radius: '55%',
            center: ['60%', '50%'],
            data: seriesData,
            itemStyle: {
                emphasis: {
                    shadowBlur: 10,
                    shadowOffsetX: 0,
                    shadowColor: 'rgba(0, 0, 0, 0.5)'
                }
            }
        }]
    };


    $("#selectPTMSites").change(function () {
        if ($(this).children('option:selected').val() == ("PTMSitesAccordingToSpecies")) {
            StatisticsAccordingToPTMSitesChart.setOption(PTMSitesAccordingToSpeciesOption);
        }
        else if ($(this).children('option:selected').val() == ("PTMSitesAccordingToPTMTypes")) {
            StatisticsAccordingToPTMSitesChart.setOption(PTMSitesAccordingToPTMTypesOption);
        }else if ($(this).children('option:selected').val() == ("TotalMutationsAffectingPTMSites")) {
            StatisticsAccordingToPTMSitesChart.setOption(TotalMutationsAffectingPTMSitesOption);
        }else if ($(this).children('option:selected').val() == ("CancerMutationsAffectingPTMSites")) {
            StatisticsAccordingToPTMSitesChart.setOption(CancerMutationsAffectingPTMSitesOption);
        }else if ($(this).children('option:selected').val() == ("DiseaseMutationsAffectingPTMSites")) {
            StatisticsAccordingToPTMSitesChart.setOption(DiseaseMutationsAffectingPTMSitesOption);
        }else if ($(this).children('option:selected').val() == ("PopulationMutationsAffectingPTMSites")) {
            StatisticsAccordingToPTMSitesChart.setOption(PopulationMutationsAffectingPTMSitesOption);
        }

        // alert("test");
        // alert($(this).children('option:selected').val());
    });

</script>

</body>
</html>
