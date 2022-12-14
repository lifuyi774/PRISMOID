<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>A minimal Protein Feature View Page</title>

    <!-- jquery library -->
    <script src="js/vendor/jquery-2.1.3.min.js"></script>

    <!-- bootstrap -->
    <link href="js/vendor/bootstrap-3.3.5/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="css/bootstrap-slider.css" rel="stylesheet">

    <!-- jquery SVG includes -->
    <script src="js/vendor/svg/jquery.svg.min.js"></script>
    <link rel="stylesheet" type="text/css" href="js/vendor/svg/jquery.svg.css" />

    <!-- font awesome icons -->
    <link rel="stylesheet" href="css/font-awesome.min.css">

    <!-- NGL -->
    <script src="js/vendor/ngl.embedded.min.js"></script>

    <!-- and finally our own code ... !-->
    <link href="css/pfv.css" rel="stylesheet">

    <script src="build/proteinfeatureview-1.0.1.min.js"></script>

</head>

<body>


<div class="container-fluid">



    <div id="nglContainer" class="center-block" style="width:300px;height:300px;display:none"></div>

    <div class="btn-toolbar " role="toolbar" style="padding-bottom: 3px;">


        <div class="col-md-3 input-group pull-left">


            <select id="testSelect" name="testSelect" class="input-medium form-control">

                <c:if test="${!empty UniprotID}">
                    <C:forEach var="Uni" items="${UniprotID}">
                        <option value="${Uni}">${Uni}</option>
                    </C:forEach>
                </c:if>
            </select>
            <!-- <input type="text" placeholder="UniProt ID" name="up-field" id="up-field">
            <div class="input-group-btn">
              <button class="btn btn-group" style="height:34px;" type="submit"><i class="fa fa-search"></i></button>
            </div> -->

        </div>




        <div class="btn-group">

            <button class="btn btn-default" href="#" role="button" id="fullScreen"><i class="fa fa-arrows-alt"></i> Full screen</button>

            <button class="btn btn-default" style="height:34px" id="zoomOut" role="button"><i class="fa fa-search-minus"></i></button>

            <span class="btn btn-default" style="height:34px">

                                <input id="svgScrollBar" data-slider-id='svgScrollBarSlider' type="text" data-slider-min="0" data-slider-max="100" data-slider-step="1" data-slider-value="0"/>


                <!-- <div id="svgScrollBar" style="width:100px; float:left; top:4px; "></div> -->

                                </span>

            <button class="btn btn-default" id="zoomIn" style="height:34px"><i class="fa fa-search-plus"></i></button>

            <button class="btn btn-default" id="export"><i class="fa fa-download"></i> Export</button>

        </div>

        <div class="btn-group">

            <div class="dropdown ">

                <button class="btn btn-default dropdown-toggle" type="button" id="actionMenu" data-toggle="dropdown">
                    Action <span class="caret"></span>
                </button>


                <ul class="dropdown-menu " role="menu" aria-labelledby="actionMenu">

                    <li role="presentation">
                        <a href="#" onclick="$('#mySequenceMotifDialog').modal('show'); return false;" role="menuitem" tabindex="-1">
                            Find Sequence Motif</a>
                    </li>

                </ul>

            </div>
        </div>

    </div>


</div>





<div class="panel panel-default">
    <div class="panel-body">
        <div class="row-fluid">
            <div class="span12">


                <div id="pfv-parent"></div>
                <div id="dialog" title="Leave Page">&nbsp;</div>


            </div>
        </div>
    </div>

</div>


<div class="modal fade" tabindex="-1" role="dialog" id="mySequenceMotifDialog" aria-labelledby="mySequenceMotifDialog" aria-hidden="true">
    <div class="modal-dialog">

        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times</span><span class="sr-only">Close</span> </button>
                <h4 class="modal-title">Find Sequence Motif
                    <a href="/pdb/staticHelp.do?p=help/advancedsearch/sequenceMotif.html"><span class="iconSet-main icon-help" title="Help | Motif Search">&nbsp;</span></a></h4>
            </div>
            <div class="modal-body">

                <form id="findSequenceMotif" class="form-horizontal">
                    <!-- <label class="input-label" for="enterMotif">Motif:</label> -->
                    <div class="input-group">

                        <input class="form-control" id="enterMotif" type="text" placeholder="Enter sequence motif (example: GX[DN]FXKXDE )" />
                        <span class="input-group-btn">
                            <button class="btn btn-default" type="button" id="findMotifDialogSubmit" >Find</button>
                        </span>
                    </div>
                </form>
            </div>
        </div>


    </div>
</div>


</div>

<script>
    'use strict';
    requirejs.config({
        baseUrl: 'js',
        paths: {
            colors: 'pfv/colors',
            viewer: 'pfv/viewer',
            draw: 'pfv/draw',
            params: 'pfv/params',
            icons: 'pfv/icons',
            popups: 'pfv/popups',
            jquery: 'vendor/jquery-2.1.3.min',
            jquerysvg: 'vendor/svg/jquery.svg.min',
            'bootstrap/tooltip': 'vendor/bootstrap-3.3.5/js/tooltip',
            'bootstrap/modal': 'vendor/bootstrap-3.3.5/js/modal',
            'bootstrap/button': 'vendor/bootstrap-3.3.5/js/button',
            'bootstrap/dropdown': 'vendor/bootstrap-3.3.5/js/dropdown',
            bootstrapslider: 'vendor/bootstrap-slider.min'
        },
        shim: {
            'jquerysvg': {
                exports: "$",
                deps: ['jquery']
            },
            'bootstrap/affix': {
                deps: ['jquery'],
                exports: '$.fn.affix'
            },
            'bootstrap/alert': {
                deps: ['jquery'],
                exports: '$.fn.alert'
            },
            'bootstrap/button': {
                deps: ['jquery'],
                exports: '$.fn.button'
            },
            'bootstrap/carousel': {
                deps: ['jquery'],
                exports: '$.fn.carousel'
            },
            'bootstrap/collapse': {
                deps: ['jquery'],
                exports: '$.fn.collapse'
            },
            'bootstrap/dropdown': {
                deps: ['jquery'],
                exports: '$.fn.dropdown'
            },
            'bootstrap/modal': {
                deps: ['jquery'],
                exports: '$.fn.modal'
            },
            'bootstrap/popover': {
                deps: ['jquery'],
                exports: '$.fn.popover'
            },
            'bootstrap/scrollspy': {
                deps: ['jquery'],
                exports: '$.fn.scrollspy'
            },
            'bootstrap/tab': {
                deps: ['jquery'],
                exports: '$.fn.tab'
            },
            'bootstrap/tooltip': {
                deps: ['jquery'],
                exports: '$.fn.tooltip'
            },
            'bootstrap/transition': {
                deps: ['jquery'],
                exports: '$.fn.transition'
            },

            'bootstrapslider': {
                deps: ['bootstrap/tooltip']
            }

        }
    });

    <!-- NGL code part I -->

    NGL.useWorker = false;

    var stage = new NGL.Stage("nglContainer", {
        'theme': 'light',
        'overwritePreferences': 'true'
    });



    var viewer;

    require(['viewer', 'jquerysvg', 'bootstrap/tooltip', 'bootstrap/modal', 'bootstrap/dropdown', 'bootstrapslider'], function(PFV) {

        viewer = PFV;
        var featureView = new Object();

        $(document).ready(function() {

            var uniprotID = "${UniprotID[0]}";


            $(function() {

                // if has not been initialized, initialize...

                try {
                    featureView = new viewer.PFV();

                    console.log("init of Protein Feature View " + featureView.getVersion());

                    featureView.setParentDiv('#pfv-parent');

                    featureView.setDialogDiv('#dialog');

                    featureView.setScrollBarDiv('#svgScrollBar');

                    featureView.setRcsbServer("http://www.rcsb.org");

                    featureView.setShowSeqres(true);

                    featureView.loadUniprot(uniprotID);

                    $('#up-field').val(uniprotID);
                    $('#testSelect').change(function() {

                        var val = $('#testSelect option:selected') .val();
                        console.log("loading new uniprot " + val);
                        featureView.loadUniprot(val);

                    });

                    $("#zoomOut").click(function() {

                        var val = featureView.getScrollBarValue();
                        val -= 25;
                        featureView.setScrollValue(val);

                    });
                    $("#zoomIn").click(function() {
                        var val = featureView.getScrollBarValue();

                        val += 25;

                        featureView.setScrollValue(val);
                    });


                    $('#fullScreen').click(function() {
                        featureView.requestFullscreen();
                        return false;
                    });

                    $('#export').click(
                        function() {
                            var svg = featureView.getSVGWrapper();
                            var xml = svg.toSVG();
                            open("data:image/svg+xml," + encodeURIComponent(xml));

                        });

                } catch (err) {
                    console.error(err);

                }

            });


        });


        $('#findMotifDialogSubmit').click(function() {

            console.log('dialog submit clicked');
            // $('mySequenceMotifDialog').modal({'show':false});

            $("#findSequenceMotif").submit()
        });

        var previousMotif = "";
        var myRegExp = new RegExp("$");

        $("#findSequenceMotif").submit(function(event) {

            var motif = $('#enterMotif').val();

            // to upper case
            motif = motif.toUpperCase();

            //replaceAll("X", "[A-Z]"
            motif = motif.replace(/X/g, '[A-Z]');

            console.log('looking for motif ' + motif);

            var seq = featureView.getSequence();

            if (previousMotif != motif) {
                previousMotif = motif;
                myRegExp = new RegExp(motif, "g");
            }

            var match = myRegExp.exec(seq);

            var pos = -1;

            //if ( match[0].length > 0)
            try {
                if (match != null)
                    pos = match.index;
                console.log("found at at position " + pos);

                if (pos < 0) {
                    alert('Motif not found!');
                    event.preventDefault();
                } else {
                    //console.log(pos + " " + match[0] + " lastIndex:" + myRegExp.lastIndex);
                    var seqLength = match[0].length;

                    featureView.highlight(pos, pos + seqLength - 1);

                    if (myRegExp.lastIndex == 0)
                        $('#mySequenceMotifDialog').modal('hide');

                }
            } catch (e) {
                console.log(e);
            }
            event.preventDefault();
        });

        <!-- NGL code part II-->

        featureView.addListener('viewerReady', function() {
            console.log("viewer ready")
            var data = featureView.getData();
            console.log(data.uniprotID + " " + data.desc);
            $("#dispUniprotID").html(data.uniprotID);
            $("#dispUniprotName").html(data.desc + "");

            var tracks = data.tracks;
            if (typeof tracks !== 'undefined' && data.tracks.length > 0) {
                var firstTrack = data.tracks[0];
                showPdb3d(firstTrack.pdbID, firstTrack.chainID);
                featureView.set3dViewFlag(firstTrack.pdbID, firstTrack.chainID);

            }
        });

        featureView.addListener('dataReloaded', function(event) {
            console.log("Data got reloaded .. " + event.data.uniprotID);
            var tracks = event.data.tracks;
            if (typeof tracks !== 'undefined' && tracks.length > 0) {
                var firstTrack = tracks[0];
                showPdb3d(firstTrack.pdbID, firstTrack.chainID);
                featureView.set3dViewFlag(firstTrack.pdbID, firstTrack.chainID);
            }
        });

        featureView.addListener("showPositionIn3d", function(event, data, moredate) {

            //console.log("event:" + event);
            console.log("data:" + JSON.stringify(event));

            var pdbId = event.pdbId;
            var chainId = event.chainId;
            showPdb3d(pdbId, chainId, event.pdbStart, event.pdbEnd);

            featureView.set3dViewFlag(pdbId, chainId);

        });


    }); <!-- end of require -->


    var currentPdbId = "";


    function highlight3d(comp, chainId, pdbStart, pdbEnd) {

        comp.addRepresentation("licorice", {
            sele: 'not polymer and not water',
            color: "green"
        });

        if (chainId !== undefined && pdbStart !== undefined && pdbEnd !== undefined) {

            var color = 'red';
            var style = 'licorice';

            if (pdbEnd - pdbStart < 10) {
                color = 'yellow';
                style = 'spacefill';
            }

            if (pdbEnd - pdbStart < 10) {
                comp.addRepresentation(style, {
                    sele: pdbStart + "-" + pdbEnd + ":" + chainId,
                    color: "element"
                });
            }

            comp.addRepresentation("cartoon", {
                sele: pdbStart + "-" + pdbEnd + ":" + chainId,
                color: color
            });
            comp.addRepresentation("cartoon", {
                sele: "not " + pdbStart + "-" + pdbEnd + ":" + chainId,
                color: "grey"
            });

        } else if (chainId !== undefined && pdbStart !== undefined) {
            comp.addRepresentation("spacefill", {
                sele: pdbStart + ":" + chainId,
                color: "element"
            });
            comp.addRepresentation("cartoon", {
                color: "grey"
            });
        } else if (chainId !== undefined) {
            comp.addRepresentation("cartoon", {
                sele: ":" + chainId,
                color: "sstruc"
            });
            comp.addRepresentation("cartoon", {
                sele: "not :" + chainId,
                color: "grey"
            });
        } else {
            comp.addRepresentation("cartoon", {
                colorScheme: "sstruc"
            });
        }

    }

    function showPdb3d(pdbId, chainId, pdbStart, pdbEnd) {

        if (currentPdbId === pdbId) {
            stage.eachComponents(function(comp) {
                highlight3d(comp, chainId, pdbStart, pdbEnd);
            });

            return;
        }

        try {
            stage.removeAllComponents();
        } catch (e) {
            console.error(e);
        }

        //console.log("Showing in NGL " + pdbId + "  " + chainId + " " + pdbStart + " " + pdbEnd);

        stage.loadFile("rcsb://" + pdbId + ".mmtf").then(function(comp) {

            highlight3d(comp, chainId, pdbStart, pdbEnd);

            stage.centerView();

        });
    }

    // stage.loadFile("rcsb://1crn.mmtf").then(function(comp){
    //   comp.addRepresentation("cartoon");
    //   licorice = comp.addRepresentation("licorice", {sele: "30:A"});
    //
    //   stage.centerView();
    //
    //
    // })

    function changeHighlight(sele) {
        licorice.setParameters({
            sele: sele
        });
    }

    stage.signals.onPicking.add(function(info) {
        console.log(info);
        // info.atom.resno;  // .chainname
        // info.bond.atom1.resno;
    });
</script>
</body>

</html>
