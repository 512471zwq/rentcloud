<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Abuilding1.aspx.cs" Inherits="Abuilding1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>building1</title>
    <!-- Bootstrap Styles-->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FontAwesome Styles-->
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
    <!-- Morris Chart Styles-->
    <link href="assets/js/morris/morris-0.4.3.min.css" rel="stylesheet" />
    <!-- Custom Styles-->
    <link href="assets/css/custom-styles.css" rel="stylesheet" />
    <!-- Google Fonts-->
    <link href='#css?family=Open+Sans' rel='stylesheet' type='text/css' />
    <!-- TABLE STYLES-->
    <link href="assets/js/dataTables/dataTables.bootstrap.css" rel="stylesheet" />

    <link rel="stylesheet" href="css/public.css" />
    <link rel="stylesheet" type="text/css" href="css/style.css" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />


    <style type="text/css">
        td {
            padding: 0;
        }

        .aaa:after {
            content: '';
            display: block;
            clear: both;
        }

        .box {
            width: 20px;
            height: 20px;
            padding: 2px;
            border: 1px solid #ccc;
            border-radius: 2px;
        }

        .pop {
            display: none;
            width: 400px;
            min-height: 350px;
            max-height: 350px;
            height: 350px;
            position: fixed;
            top: 0;
            left: 0;
            bottom: 0;
            right: 0;
            margin: auto;
            padding: 25px;
            z-index: 130;
            border-radius: 8px;
            background-color: #fff;
            /*box-shadow: 0 3px 18px rgba(100, 0, 0, .5);*/
        }

        .pop-top {
            height: 40px;
            width: 100%;
            border-bottom: 1px #E5E5E5 solid;
        }

            .pop-top h2 {
                /*float: left;*/
                display: block
            }

            .pop-top span {
                float: right;
                cursor: pointer;
                font-weight: bold;
                display: block
            }

        .pop-foot {
            height: 30px;
            line-height: 50px;
            width: 100%;
            border-top: 1px #E5E5E5 solid;
            text-align: right;
        }

        .pop-cancel,
        .pop-ok {
            padding: 6px 9px;
            margin: 0px 0px;
            border: none;
            border-radius: 5px;
            background-color: #337AB7;
            color: #fff;
            cursor: pointer;
        }

        .pop-cancel {
            background-color: #FFF;
            border: 1px #CECECE solid;
            color: #000;
        }

        .pop-content {
            height: 150px;
        }

        .pop-content-left {
            float: left;
        }

        .pop-content-right {
            width: 310px;
            float: left;
            padding-top: 20px;
            padding-left: 20px;
            font-size: 16px;
            /*line-height: 35px;*/
        }

        .bgPop {
            display: none;
            position: absolute;
            z-index: 129;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            background: rgba(0, 0, 0, .2);
        }
    </style>
    <style type="text/css">
        ul,
        li {
            margin: 0;
            padding: 0;
            list-style: none;
        }


        #border {
            height: 288px;
            width: 1px;
            background-color: rgba(51, 51, 51, 0.2);
        }

            #border #line.one {
                width: 5px;
                height: 54px;
                background-color: #E74C3C;
                margin-left: -2px;
                margin-top: 35px;
                -webkit-transition: all .4s ease-in-out;
                transition: all .4s ease-in-out;
            }

            #border #line.two {
                width: 5px;
                height: 54px;
                background-color: #E74C3C;
                margin-left: -2px;
                margin-top: 89px;
                -webkit-transition: all .4s ease-in-out;
                transition: all .4s ease-in-out;
            }

            #border #line.three {
                width: 5px;
                height: 54px;
                background-color: #E74C3C;
                margin-left: -2px;
                margin-top: 143px;
                -webkit-transition: all .4s ease-in-out;
                transition: all .4s ease-in-out;
            }

            #border #line.four {
                width: 5px;
                height: 54px;
                background-color: #E74C3C;
                margin-left: -2px;
                margin-top: 197px;
                -webkit-transition: all .4s ease-in-out;
                transition: all .4s ease-in-out;
            }
    </style>
</head>
<body>
    <form id="form1" runat="server">

        <div id="wrapper">
            <div id="page-wrapper" style="margin: 0 0 0 0; top: 0px">
                <div class="header">
                    <h1 class="page-header">Charts
					<small>Show up your stats</small>
                    </h1>
                    <ol class="breadcrumb">
                        <li>
                            <a href="#">Home</a>
                        </li>
                        <li>
                            <a href="#">Charts</a>
                        </li>
                        <li class="active">Data</li>
                    </ol>

                </div>
                <div id="page-inner">



                    <div class="row">
                        <div class="col-md-8 col-sm-12 col-xs-12">
                            <div class="panel panel-default">
                                <div class="alert alert-success" style="margin: 0">
                                    <strong>华清嘉园</strong>
                                </div>
                                <div class="panel-heading">
                                    <a href="#" class="btn btn-info">闲置</a>
                                    <div class="btn-group">
                                        <button class="btn btn-warning">原图</button>
                                        <button data-toggle="dropdown" class="btn btn-warning dropdown-toggle">
                                            <span class="caret"></span>
                                        </button>
                                        <ul class="dropdown-menu">
                                            <li>
                                                <a href="#" onclick="visualdata(this.innerHTML);">占地面积</a>
                                            </li>
                                            <li>
                                                <a href="#" onclick="visualdata(this.innerHTML);">停车场数量</a>
                                            </li>
                                        </ul>
                                    </div>
                                    
                                    <div class="btn-group" style="float: right">
                                        <%--标记楼层编号--%>
                                        <button class="btn btn-warning" id="floorno">1楼</button>
                                        <button data-toggle="dropdown" class="btn btn-warning dropdown-toggle">
                                            <span class="caret"></span>
                                        </button>
                                        <ul class="dropdown-menu">
                                            <li>
                                                <a href="#2" onclick="changefloor(this.text)">1楼</a>
                                            </li>
                                            <li>
                                                <a href="#2" onclick="changefloor(this.text)">2楼</a>
                                            </li>
                                            <li>
                                                <a href="#2" onclick="changefloor(this.text)">3楼</a>
                                            </li>
                                        </ul>
                                    </div>
                                    <a href="#" class="btn btn-info" style="float: right">天宇大厦</a>
                                    <%--标记项目和楼栋编号--%>
                                    <p id="buildingno" style="display:none"></p>
                                    <p id="projectno" style="display:none"></p>
                                </div>

                                <script>
                                    function changefloor(floor) {
                                        document.getElementById('onedataid').innerText = '';
                                        switch (floor) {
                                            case '1楼':
                                                $('#floorno').text('1楼');//用val()无效果
                                                $('#1楼').show();
                                                $('#2楼').hide();
                                                $('#3楼').hide();
                                                showassetsdata()
                                                break;
                                            case '2楼':
                                                $('#floorno').text('2楼');
                                                $('#1楼').hide();
                                                $('#2楼').show();
                                                $('#3楼').hide();
                                                showassetsdata()
                                                break;
                                            case '3楼':
                                                $('#floorno').text('3楼');
                                                $('#1楼').hide();
                                                $('#2楼').hide();
                                                $('#3楼').show();
                                                showassetsdata()
                                                break;
                                        }
                                    }
                                </script>


                                <div class="panel-body">
                                    <div class="for_btn" id="ditu" style="height: 700px">
                                        <div id="1楼" style="height: 100%; width: 100%;"></div>
                                        <div id="2楼" style="height: 100%; width: 100%;"></div>
                                        <div id="3楼" style="height: 100%; width: 100%;"></div>
                                    </div>
                                    <style>
                                        #1楼 {
                                            display: block;
                                        }

                                        #2楼 {
                                            display: none;
                                        }

                                        #3楼 {
                                            display: none;
                                        }
                                    </style>

                                    <div class="students_star">
                                        <div class="zwjs">
                                            自我介绍是向别人展示你自我介绍好不好,甚至直接关系到你给别人的第一印象的好坏及以后自我介绍是向别人展示你自我介绍好不好
                                        </div>
                                        <div class="alert alert-info">
                                            <strong>Well done!</strong> You successfully read this important alert message.
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>



                        <div class="col-md-4 col-sm-12 col-xs-12">
                            <div class="panel panel-default">
                                <div class="alert alert-info">
                                    <strong>房源基本信息</strong>
                                </div>
                                <div class="panel-body">
                                    <div style="margin-bottom: 20px">
                                        <button class="btn btn-default">
                                            <i class=" fa fa-refresh "></i>Update</button>
                                        <button class="btn btn-primary">
                                            <i class="fa fa-edit "></i>Edit</button>
                                        <button class="btn btn-danger">
                                            <i class="fa fa-pencil"></i>Delete</button>
                                    </div>
                                    <div class="table-responsive" style="overflow: auto; height: 750px">
                                        <table class="table table-striped table-bordered table-hover" style="width: 95%">
                                            <tr>
                                                <td id="onedataid" style="height: 40px"></td>
                                            </tr>
                                            <tr>
                                                <td id="basicpro"></td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <div style="height: 300px" id="echarttest1"></div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <div style="height: 300px" id="echarttest2"></div>
                                                </td>
                                            </tr>

                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>


                        <%--房源属性开头--%>
                        <div class="col-md-8">
                            <div class="panel panel-default">
                                <div class="panel-heading aaa">
                                    房源属性表
                                        <input type="button" class="btn btn-success" value="测试按钮" style="float: right" onclick="testetc()" />
                                    <input type="button" class="btn btn-success" value="添加属性" style="float: right" id="addassetbutton" onclick="addcolbutton(this.id)" />
                                </div>

                                <div class="table-responsive" style="overflow: auto; border: 6px solid #e5e5e5; height: 500px">
                                    <table class="table table-striped table-bordered table-hover" id="assetstable" style="width: 20px">
                                        <tr>
                                            <td style="background-color: cornsilk"></td>
                                        </tr>
                                        <tr id="nameid">
                                            <th>ID</th>
                                        </tr>
                                    </table>
                                </div>

                            </div>
                        </div>
                        <%-- 第三个结尾--%>

                        <%-- 楼栋属性开头--%>
                        <div class="col-md-4">
                            <div class="panel panel-default">
                                <div class="panel-heading aaa">
                                    楼栋属性表
                                        <input type="button" class="btn btn-success" value="测试按钮" style="float: right" onclick="testetc()" />
                                    <input type="button" class="btn btn-success" value="添加属性" style="float: right" id="addfloorbutton" onclick="addcolbutton(this.id)" />
                                </div>

                                <div class="table-responsive" style="overflow: auto; border: 6px solid #e5e5e5; height: 500px">
                                    <table class="table table-striped table-bordered table-hover" id="floorstable" style="width: 20px">
                                        <tr>
                                            <td style="background-color: cornsilk"></td>
                                        </tr>
                                        <tr id="">
                                            <th>ID</th>
                                        </tr>
                                    </table>
                                </div>

                            </div>
                        </div>
                        <%-- 第四个结尾--%>
                    </div>
                </div>


                <!--遮罩层-->
                <div class="bgPop"></div>
                <!--弹出框-->
                <div class="pop">
                    <div class="pop-top">
                        <span class="pop-close">Ｘ</span>
                        <h2 id="popname"></h2>
                    </div>
                    <div class="pop-content">
                        <div class="pop-content-right">
                            <div class="form-group input-group">
                                <span class="input-group-addon">属性名</span>
                                <input type="text" class="form-control" id="propertyname" placeholder="Username" />
                            </div>
                            <%--<label>Selects</label>
                            <select class="form-control">
                                <option>数字</option>
                                <option>英文</option>
                                <option>汉字</option>
                                <option>日期</option>
                            </select>--%>
                        </div>
                    </div>
                    <div>
                        <input type="button" value="取消" class="pop-cancel pop-close" />
                        <input type="button" value="确定" class="pop-ok" />
                    </div>
                </div>

            </div>
            <!-- /. PAGE INNER  -->


        </div>
        <!-- /. PAGE WRAPPER  -->

        <script>
            //不同颜色显示数据
            function visualdata(proper) {
                var pd1 = { "t": 6, "pro": proper };
                var Arr = [];//Arr数组不能放在each中，会变成局部变量，这是一个json数组
                $.ajax({
                    type: "post",
                    url: "Handler.ashx",
                    data: pd1,
                    dataType: "json",
                    success: function (data) {
                        //eval将json字符串转为json对象
                        var dataobj = eval("(" + data.status + ")");
                        var max = parseInt(data.max);
                        var min = parseInt(data.min);
                        myChart.setOption({
                            visualMap: {
                                left: 'right',
                                min: min,
                                max: max,
                                inRange: {
                                    color: ['white', 'orange']
                                },
                                text: ['High', 'Low'],// 文本，默认为数值文本
                            },
                            series: [{
                                data: dataobj.root
                            }]
                        })
                    },
                    error: function (XMLHttpRequest, textStatus, errorThrown) {
                        alert(errorThrown);
                    }
                });
            }
        </script>
        <script>


        </script>

        <script type="text/javascript">
            //获取页面参数
            function getParams(key) {
                var reg = new RegExp("(^|&)" + key + "=([^&]*)(&|$)");
                var r = window.location.search.substr(1).match(reg);
                if (r != null) {
                    return unescape(r[2]);
                }
                return null;
            };
        </script>
        <script>
            //页面加载时调用方法显示数据
            window.onload = function () {
                var projectno = getParams("projectno");
                var buildingno = getParams("buildingno");
                document.getElementById('projectno').innerText = projectno;
                document.getElementById('buildingno').innerText = buildingno;
                console.log(projectno);//输出aa
                console.log(buildingno);//输出bb
                showfloorsdata();
                showassetsdata()
            }
        </script>


        <script src="assets/js/jquery-1.11.0.min.js" type="text/javascript"></script>
        <!-- /. WRAPPER  -->
        <!-- JS Scripts-->
        <!-- jQuery Js -->
        <script src="assets/js/jquery-1.10.2.js"></script>
        <!-- Bootstrap Js -->
        <script src="assets/js/bootstrap.min.js"></script>
        <!-- Metis Menu Js -->
        <script src="assets/js/jquery.metisMenu.js"></script>
        <!-- Morris Chart Js -->
        <script src="assets/js/morris/raphael-2.1.0.min.js"></script>

        <!-- Custom Js -->
        <script src="assets/js/custom-scripts.js"></script>
        <!-- DATA TABLE SCRIPTS -->
        <script src="assets/js/dataTables/jquery.dataTables.js"></script>
        <script src="assets/js/dataTables/dataTables.bootstrap.js"></script>

        <script type="text/javascript" src="./lib/jquery-3.1.1.min.js"></script>
        <script type="text/javascript" src="./lib/echarts.min.js"></script>
        <script type="text/javascript" src="assets/js/bootstable.js"></script>
        <script type="text/javascript" src="assets/js/jquery.min.js"> </script>
        <script type="text/javascript" src="buildings.js"></script>
        <script type="text/javascript" src="js/jquery.min.js"></script>


        <%--1楼地图--%>
        <script>
            var myChart1 = echarts.init(document.getElementById('1楼'));
            myChart1.showLoading();	//jquery的组件
            $.get('you2E1.json', function (geoJson) {

                myChart1.hideLoading();

                echarts.registerMap('HK', geoJson);

                myChart1.setOption(option = {
                    title: {
                        text: '天宇大厦E座1层',
                        left: 'center'

                    },
                    tooltip: {
                        trigger: 'item',
                        formatter: '{b}<br/>{c} (p / km2)'
                    },
                    visualMap: {
                        left: 'right',
                        min: 0,
                        max: 11,
                        inRange: {
                            color: ['red', 'blue']
                        },
                        text: ['High', 'Low'],// 文本，默认为数值文本
                    },
                    series: [{
                        name: 'iphone3',
                        type: 'map',
                        mapType: 'HK',
                        aspectScale: 1,
                        itemStyle: {
                            normal: {
                                areaColor: 'orange',
                                //label: {
                                //    show: true
                                //}
                            },
                            emphasis: {
                                label: {
                                    show: true
                                }
                            }
                        },
                        data: [{
                            name: '1',//写成'name'或者1没有双引号都不会显示数据
                            value: '1',//但是value是数值好像没有什么问题
                            allname: 'A座'
                        },
                        {
                            name: '2',
                            value: 2,
                        }, {
                            name: '3',
                            value: 3,
                        }, {
                            name: '4',
                            value: 4,
                        }, {
                            name: '5',
                            value: 5,
                        }, {
                            name: '6',
                            value: 6,
                        }, {
                            name: '7',
                            value: 7,
                        }, {
                            name: '8',
                            value: 8,
                        }, {
                            name: '9',
                            value: 9,
                        }, {
                            name: '10',
                            value: 10,
                        }, {
                            name: '11',
                            value: 11,
                        }],

                    }]
                });
            });
            //点击图表右边显示图的数据
            myChart1.on('click', function (params) {
                //获取当前项目
                var projectno=document.getElementById('projectno').innerText;
                var projectid = projectno;
                //获取当前楼栋
                var buildingno=document.getElementById('buildingno').innerText;
                var buildingid = buildingno;
                //获取当前楼层
                var floorno = document.getElementById('floorno').innerText;
                var floorid = floorno.substr(0, floorno.indexOf('楼'));
                var Code = params.name;
                $('#onedataid').text(Code);
                var pd = { "t": 5, "Code": Code, "projectid": projectid, "buildingid": buildingid, "floorid": floorid };
                $.ajax({
                    type: "post",
                    url: "Assets.ashx",
                    data: pd,
                    dataType: "json",//dataType不要写成datatype否则会变成undefined
                    success: function (data) {
                        var dataobj = eval("(" + data.status + ")");
                        $.each(dataobj.root, function (i, item) {
                            //用for in来获取json的属性名
                            for (pro in item) {
                                //除去默认字段
                                if (pro != 'SortNo'&&pro != 'Id'&&pro != 'Projects_Id'&&pro != 'Building_Id'&&pro != 'Floor_Id'&&pro != 'Code') {
                                    var id = pro;
                                    //jquery里面用变量作为id值的写法，不能直接写成'#id'，系统会寻找ID=id的对象
                                    $('#' + id).val(item[pro]);
                                }
                            }
                        })
                    },
                    error: function (err) { alert("错误"); }
                });
            });
            window.onresize = myChart1.resize;
        </script>
        <%--2楼地图--%>
        <script>
            var myChart2 = echarts.init(document.getElementById('2楼'));
            myChart2.showLoading();	//jquery的组件
            $.get('you2E2.json', function (geoJson) {

                myChart2.hideLoading();

                echarts.registerMap('HK', geoJson);

                myChart2.setOption(option = {
                    title: {
                        text: '天宇大厦E座2层',
                        left: 'center'

                    },
                    tooltip: {
                        trigger: 'item',
                        formatter: '{b}<br/>{c} (p / km2)'
                    },
                    series: [{
                        name: 'iphone3',
                        type: 'map',
                        mapType: 'HK',
                        aspectScale: 1,
                        itemStyle: {
                            normal: {
                                areaColor: 'orange',
                                label: {
                                    show: true
                                }
                            },
                            emphasis: {
                                label: {
                                    show: true
                                }
                            }
                        },
                        data: [{
                            name: '聖方濟各堂區',
                            value: 2
                        }],

                    }]
                });
            });
            window.onresize = myChart2.resize;
        </script>
        <%--3楼地图--%>
        <script>
            var myChart3 = echarts.init(document.getElementById('3楼'));
            myChart3.showLoading();	//jquery的组件
            $.get('you2E3.json', function (geoJson) {

                myChart3.hideLoading();

                echarts.registerMap('HK', geoJson);

                myChart3.setOption(option = {
                    title: {
                        text: '天宇大厦E座3层',
                        left: 'center'

                    },
                    tooltip: {
                        trigger: 'item',
                        formatter: '{b}<br/>{c} (p / km2)'
                    },
                    series: [{
                        name: 'iphone3',
                        type: 'map',
                        mapType: 'HK',
                        aspectScale: 1,
                        itemStyle: {
                            normal: {
                                areaColor: 'orange',
                                label: {
                                    show: true
                                }
                            },
                            emphasis: {
                                label: {
                                    show: true
                                }
                            }
                        },
                        data: [{
                            name: '聖方濟各堂區',
                            value: 2
                        }],

                    }]
                });
            });
            window.onresize = myChart3.resize;
        </script>


        <%--图表--%>
        <script type="text/javascript">
            var dom = document.getElementById("echarttest1");
            var myChartb = echarts.init(dom);
            var app = {};
            option = null;
            option = {
                title: {
                    text: '堆叠区域图'
                },
                tooltip: {
                    trigger: 'axis',
                    axisPointer: {
                        type: 'cross',
                        label: {
                            backgroundColor: '#6a7985'
                        }
                    }
                },
                legend: {
                    data: ['邮件营销', '联盟广告', '视频广告', '直接访问', '搜索引擎']
                },
                toolbox: {
                    feature: {
                        saveAsImage: {}
                    }
                },
                grid: {
                    left: '3%',
                    right: '4%',
                    bottom: '3%',
                    containLabel: true
                },
                xAxis: [
                    {
                        type: 'category',
                        boundaryGap: false,
                        data: ['周一', '周二', '周三', '周四', '周五', '周六', '周日']
                    }
                ],
                yAxis: [
                    {
                        type: 'value'
                    }
                ],
                series: [
                    {
                        name: '邮件营销',
                        type: 'line',
                        stack: '总量',
                        areaStyle: { normal: {} },
                        data: [120, 132, 101, 134, 90, 230, 210]
                    },
                    {
                        name: '联盟广告',
                        type: 'line',
                        stack: '总量',
                        areaStyle: { normal: {} },
                        data: [220, 182, 191, 234, 290, 330, 310]
                    },
                    {
                        name: '视频广告',
                        type: 'line',
                        stack: '总量',
                        areaStyle: { normal: {} },
                        data: [150, 232, 201, 154, 190, 330, 410]
                    },
                    {
                        name: '直接访问',
                        type: 'line',
                        stack: '总量',
                        areaStyle: { normal: {} },
                        data: [320, 332, 301, 334, 390, 330, 320]
                    },
                    {
                        name: '搜索引擎',
                        type: 'line',
                        stack: '总量',
                        label: {
                            normal: {
                                show: true,
                                position: 'top'
                            }
                        },
                        areaStyle: { normal: {} },
                        data: [820, 932, 901, 934, 1290, 1330, 1320]
                    }
                ]
            };


            myChartb.setOption(option, true);

        </script>
        <script type="text/javascript">
            var dom = document.getElementById("echarttest2");
            var myCharta = echarts.init(dom);
            var app = {};
            option = null;
            app.title = '极坐标系下的堆叠柱状图';

            option = {
                angleAxis: {
                },
                radiusAxis: {
                    type: 'category',
                    data: ['周一', '周二', '周三', '周四'],
                    z: 10
                },
                polar: {
                },
                series: [{
                    type: 'bar',
                    data: [1, 2, 3, 4],
                    coordinateSystem: 'polar',
                    name: 'A',
                    stack: 'a'
                }, {
                    type: 'bar',
                    data: [2, 4, 6, 8],
                    coordinateSystem: 'polar',
                    name: 'B',
                    stack: 'a'
                }, {
                    type: 'bar',
                    data: [1, 2, 3, 4],
                    coordinateSystem: 'polar',
                    name: 'C',
                    stack: 'a'
                }],
                legend: {
                    show: true,
                    data: ['A', 'B', 'C']
                }
            };
            ;

            myCharta.setOption(option, true);

        </script>
        <!--弹出信息框-->
        <script>
            //点击添加属性后显示相关的添加面板
            function addcolbutton(buttonid) {
                if (buttonid == 'addassetbutton') {
                    $('#popname').text('添加房源属性');
                }
                else
                    if (buttonid == 'addfloorbutton') {
                    $('#popname').text('添加楼层属性');
                }
                $('.bgPop,.pop').show();
            }
            //弹出框面板确定取消
            $(document).ready(
                function () {
                $('.pop-close').click(function () {
                    $('.bgPop,.pop').hide();
                });
                $('.pop-ok').click(function () {
                    var popname = document.getElementById('popname').innerText;
                    if (popname == '添加房源属性') {
                        addassetcol();
                    }
                    else if (popname == '添加楼层属性'){
                        addfloorcol();
                    }
                $('.bgPop,.pop').hide();
                });
            })
            
            </script>

        <!--楼层信息-->
        <script>
            //显示楼层数据
            function showfloorsdata() {
                //获取当前项目
                var projectno=document.getElementById('projectno').innerText;
                var projectid = projectno;
                //获取当前楼栋
                var buildingno=document.getElementById('buildingno').innerText;
                var buildingid = buildingno;
                var pd = { "t": 1, "projectid": projectid, "buildingid": buildingid };
                $.ajax({
                    type: "post",
                    url: "Floors.ashx",
                    data: pd,
                    dataType: "json",//dataType不要写成datatype否则会变成undefined
                    success: function (data) {
                        if (data.status != "-1") {
                            var dataobj = eval("(" + data.status + ")");
                            //alert('dddddd');
                            $.each(dataobj.root, function (i, item) {
                                //设置属性名
                                if (i == 0) {
                                    //用for in来获取json的属性名
                                    var num = 1;
                                    for (pro in item) {
                                        //不显示默认字段
                                        if (pro != 'SortNo' && pro != 'Id' && pro != 'Projects_Id' && pro != 'FloorCode' && pro != 'Building_Id') {
                                            var c = document.getElementById('floorstable');//获取表格信息
                                            var oTd = c.rows[0].insertCell();
                                            oTd.innerHTML = "<div style='width:250px'><button onclick=\"delfloorcol(" + (num++) + ")\">删除</button></div>";
                                            var lieming = c.rows[1].insertCell();
                                            lieming.innerHTML = pro;
                                        }
                                    }
                                }
                                var x = document.getElementById('floorstable').insertRow();
                                var num = 0;
                                i = i + 1;
                                for (pro in item) {
                                    //第一列只显示默认字段中与楼栋相关的Code字段，其他默认字段不显示，Code字段与地图数据的name字段匹配
                                    if (pro != 'SortNo' && pro != 'Id' && pro != 'Projects_Id' && pro != 'Building_Id') {
                                        var y = x.insertCell();
                                        num = num + 1;
                                        if (pro == 'FloorCode') {
                                            y.innerHTML = item[pro];
                                        }
                                        else {   //innerHTML中用参数的写法
                                            y.innerHTML = "<textarea rows='1' style='width:100%; height:100%;'onchange='savefloordata(this.id)' id='" + i + "s" + num + "' >" + item[pro] + "</textarea>";
                                        }
                                    }
                                }
                            })
                        }
                    },
                    error: function (err) { alert("错误"); }
                });
            }

            //楼层添加属性列 
            function addfloorcol() {
                var c = document.getElementById('floorstable');//获取表格信息
                var len = c.rows.length;//获得行数
                var ro = c.rows[0].cells;
                var len2 = ro.length;//获得列数
                var oTd = c.rows[0].insertCell(len2);
                oTd.innerHTML = "<div style='width:250px'><button onclick=\"delfloorcol(" + (len2) + ")\">删除</button></div>";
                var lieming = c.rows[1].insertCell(len2);
                var property = document.getElementById('propertyname').value;
                lieming.innerHTML = property;
                var pd = { "t": 2, "property": property, };
                $.ajax({
                    type: "post",
                    url: "Floors.ashx",
                    data: pd,
                    dataType: "json",//dataType不要写成datatype否则会变成undefined
                    success: function (data) {
                        alert('添加列成功');
                    },
                    error: function (err) { alert("错误"); }
                });
                for (var i = 2; i < len; i++) {
                    var x = c.rows[i].insertCell(len2);//依次向每一行的末尾插入一个新列
                    var ii = i - 1;
                    var num = len2 + 1;
                    x.innerHTML = "<textarea rows='1' id='" + ii + "s" + num + "' style='width:100%; height:100%;' onchange='savefloordata(this.id)'></textarea>";
                }

            }

            //楼层删除指定列
            function delfloorcol(columnId) {
                var c = document.getElementById('floorstable');//获取表格信息
                var len = c.rows.length;//获取表格的行数
                var ro = c.rows[0].cells//获取表格的列数
                var len2 = ro.length - 1;
                var property = c.rows[1].cells[columnId].innerHTML;
                var pd = { "t": 3, "property": property };
                $.ajax({
                    type: "post",
                    url: "Floors.ashx",
                    data: pd,
                    dataType: "json",//dataType不要写成datatype否则会变成undefined
                    success: function (data) {
                        alert('删除成功');
                    },
                    error: function (err) { alert("错误"); }
                });
                for (var i = 0; i < len; i++) {
                    var x = c.rows[i].deleteCell(columnId);//删除每一行末尾的单元格
                }
                for (var j = 1; j <= len2; j++) {
                    c.rows[0].cells[j].innerHTML = "<div align='center' style='width:250px'><button onclick=\"delfloorcol(" + (j) + ")\">删除</button></div>";
                }
                showfloorsdata();
            }

            //保存楼层表格数据
            function savefloordata(id) {
                //获取当前项目
                var projectno=document.getElementById('projectno').innerText;
                var projectid = projectno;
                //获取当前楼栋
                var buildingno=document.getElementById('buildingno').innerText;
                var buildingid = buildingno;
                var str = id;
                var floorcode = str.substr(0, str.indexOf('s'));
                var col = str.substr(str.indexOf('s') + 1) - 2;
                var proper = $("#floorstable").find('tr').eq(1).find('td').eq(col).text();//用text方法才获取到了单元格的值
                var value = $("#" + id).val();
                var pd = { "t": 4, "projectid": projectid, "buildingid": buildingid, "floorcode": floorcode, "proper": proper, "value": value };
                $.ajax({
                    type: "post",
                    url: "Floors.ashx",
                    data: pd,
                    dataType: "json",//dataType不要写成datatype否则会变成undefined
                    success: function (data) {
                        alert('成功')
                    },
                    error: function (err) { alert("错误"); }
                });
            }
        </script>
        <!--房源信息-->
        <script>
            //显示每层的房源数据
            function showassetsdata() {
                document.getElementById('basicpro').innerHTML = '';
                document.getElementById('assetstable').innerHTML = "<tr><td style='background-color: cornsilk'></td></tr><tr id='nameid'><th>ID</th></tr>";
                //获取当前项目
                var projectno=document.getElementById('projectno').innerText;
                var projectid = projectno;
                //获取当前楼栋
                var buildingno=document.getElementById('buildingno').innerText;
                var buildingid = buildingno;
                //获取当前楼层
                var floorno = document.getElementById('floorno').innerText;
                var floorid = floorno.substr(0, floorno.indexOf('楼'));
                var pd = { "t": 1, "projectid": projectid, "buildingid": buildingid, "floorid": floorid };
                $.ajax({
                    type: "post",
                    url: "Assets.ashx",
                    data: pd,
                    dataType: "json",//dataType不要写成datatype否则会变成undefined
                    success: function (data) {
                        if (data.status != "-1") {
                            var dataobj = eval("(" + data.status + ")");
                            //alert('dddddd');
                            $.each(dataobj.root, function (i, item) {
                                //设置属性名
                                if (i == 0) {
                                    //用for in来获取json的属性名
                                    var num = 1;
                                    for (pro in item) {
                                        //不显示默认字段
                                        if (pro != 'SortNo' && pro != 'Id' && pro != 'Building_Id' && pro != 'Projects_Id' && pro != 'Floor_Id' && pro != 'Code') {
                                            $('#basicpro').append('<div class="form-group input-group"><span class="input-group-addon">' + pro + '</span><input type="text" id="' + pro + '" class="form-control" onchange="saveoneassetdata(this.id)" placeholder="Username" /></div>');
                                            var c = document.getElementById('assetstable');//获取表格信息
                                            var oTd = c.rows[0].insertCell();
                                            oTd.innerHTML = "<div style='width:250px'><button onclick=\"delassetcol(" + (num++) + ")\">删除</button></div>";
                                            var lieming = c.rows[1].insertCell();
                                            lieming.innerHTML = pro;
                                        }
                                    }
                                }
                                var x = document.getElementById('assetstable').insertRow();
                                var num = 0;
                                i = i + 1;
                                for (pro in item) {
                                    //第一列只显示默认字段中与楼栋相关的Code字段，其他默认字段不显示，Code字段与地图数据的name字段匹配
                                    if (pro != 'SortNo' && pro != 'Id' && pro != 'Projects_Id' && pro != 'Floor_Id' && pro != 'Building_Id') {
                                        var y = x.insertCell();
                                        num = num + 1;
                                        if (pro == 'Code') {
                                            y.innerHTML = item[pro];
                                        }
                                        else {   //innerHTML中用参数的写法
                                            y.innerHTML = "<textarea rows='1' style='width:100%; height:100%;'onchange='saveassetdata(this.id)' id='" + i + "e" + num + "' >" + item[pro] + "</textarea>";
                                        }
                                    }
                                }
                            })
                        }
                    },
                    error: function (err) { alert("错误"); }
                });
            }

            //房源添加属性列 
            function addassetcol() {
                var c = document.getElementById('assetstable');//获取表格信息
                var len = c.rows.length;//获得行数
                var ro = c.rows[0].cells;
                var len2 = ro.length;//获得列数
                var oTd = c.rows[0].insertCell(len2);
                oTd.innerHTML = "<div style='width:250px'><button onclick=\"delassetcol(" + (len2) + ")\">删除</button></div>";
                var lieming = c.rows[1].insertCell(len2);
                var property = document.getElementById('propertyname').value;
                lieming.innerHTML = property;
                var pd = { "t": 2, "property": property, };
                $.ajax({
                    type: "post",
                    url: "Assets.ashx",
                    data: pd,
                    dataType: "json",//dataType不要写成datatype否则会变成undefined
                    success: function (data) {
                        alert('添加列成功');
                    },
                    error: function (err) { alert("错误"); }
                });
                for (var i = 2; i < len; i++) {
                    var x = c.rows[i].insertCell(len2);//依次向每一行的末尾插入一个新列
                    var ii = i - 1;
                    var num = len2 + 1;
                    x.innerHTML = "<textarea rows='1' id='" + ii + "e" + num + "' style='width:100%; height:100%;' onchange='saveassetdata(this.id)'></textarea>";
                }

                updateright();
            }

            //房源删除指定列
            function delassetcol(columnId) {
                var c = document.getElementById('assetstable');//获取表格信息
                var len = c.rows.length;//获取表格的行数
                var ro = c.rows[0].cells//获取表格的列数
                var len2 = ro.length - 1;
                var property = c.rows[1].cells[columnId].innerHTML;
                var pd = { "t": 3, "property": property };
                $.ajax({
                    type: "post",
                    url: "Assets.ashx",
                    data: pd,
                    dataType: "json",//dataType不要写成datatype否则会变成undefined
                    success: function (data) {
                        alert('删除成功');
                    },
                    error: function (err) { alert("错误"); }
                });
                for (var i = 0; i < len; i++) {
                    var x = c.rows[i].deleteCell(columnId);//删除每一行末尾的单元格
                }
                updateright();
                for (var j = 1; j <= len2; j++) {
                    c.rows[0].cells[j].innerHTML = "<div align='center' style='width:250px'><button onclick=\"delassetcol(" + (j) + ")\">删除</button></div>";
                }; 
            }

            //更改大表时改变右侧信息
            function updateright() {
                document.getElementById('basicpro').innerHTML = '';
                //获取当前项目
                var projectno=document.getElementById('projectno').innerText;
                var projectid = projectno;
                //获取当前楼栋
                var buildingno=document.getElementById('buildingno').innerText;
                var buildingid = buildingno;
                //获取当前楼层
                var floorno = document.getElementById('floorno').innerText;
                var floorid = floorno.substr(0, floorno.indexOf('楼'));
                var pd = { "t": 1, "projectid": projectid, "buildingid": buildingid, "floorid": floorid };
                $.ajax({
                    type: "post",
                    url: "Assets.ashx",
                    data: pd,
                    dataType: "json",//dataType不要写成datatype否则会变成undefined
                    success: function (data) {
                        if (data.status != "-1") {
                            var dataobj = eval("(" + data.status + ")");
                            $.each(dataobj.root, function (i, item) {
                                //设置属性名
                                if (i == 0) {
                                    //用for in来获取json的属性名
                                    var num = 1;
                                    for (pro in item) {
                                        //不显示默认字段
                                        if (pro != 'SortNo' && pro != 'Id' && pro != 'Building_Id' && pro != 'Projects_Id' && pro != 'Floor_Id' && pro != 'Code') {
                                            $('#basicpro').append('<div class="form-group input-group"><span class="input-group-addon">' + pro + '</span><input type="text" id="' + pro + '" class="form-control" onchange="saveoneassetdata(this.id)" placeholder="Username" /></div>');
                                        }
                                    }
                                }
                            })
                        }
                    },
                    error: function (err) { alert("错误"); }
                });
            }

            //保存房源表格数据
            function saveassetdata(id) {
                //获取当前项目
                var projectno=document.getElementById('projectno').innerText;
                var projectid = projectno;
                //获取当前楼栋
                var buildingno=document.getElementById('buildingno').innerText;
                var buildingid = buildingno;
                //获取当前楼层
                var floorno = document.getElementById('floorno').innerText;
                var floorid = floorno.substr(0, floorno.indexOf('楼'));
                var str = id;
                var code = str.substr(0, str.indexOf('e'));

                var col = str.substr(str.indexOf('e') + 1) - 2;
                var proper = $("#assetstable").find('tr').eq(1).find('td').eq(col).text();//用text方法才获取到了单元格的值
                var value = $("#" + id).val();
                var pd = { "t": 4, "projectid": projectid, "buildingid": buildingid, "floorid": floorid, "code": code, "proper": proper, "value": value };
                $.ajax({
                    type: "post",
                    url: "Assets.ashx",
                    data: pd,
                    dataType: "json",//dataType不要写成datatype否则会变成undefined
                    success: function (data) {
                        alert('成功')
                    },
                    error: function (err) { alert("错误"); }
                });
            }

            //保存右侧表格数据
            function saveoneassetdata(id) {
                //td标签不存在value属性，所以需要用innertext或者innerHTML来获取内部的值
                //用$()无法获取td的innertext，用getelementbyid可以
                var Code = document.getElementById('onedataid').innerText;
                var proper = id;
                //获取当前项目
                var projectno=document.getElementById('projectno').innerText;
                var projectid = projectno;
                //获取当前楼栋
                var buildingno=document.getElementById('buildingno').innerText;
                var buildingid = buildingno;
                //获取当前楼层
                var floorno = document.getElementById('floorno').innerText;
                var floorid = floorno.substr(0, floorno.indexOf('楼'));
                var value = document.getElementById(id).value;
                var pd = { "t": 4, "projectid": projectid, "buildingid": buildingid, "floorid": floorid, "Code": Code, "proper": proper, "value": value, };
                $.ajax({
                    type: "post",
                    url: "Assets.ashx",
                    data: pd,
                    dataType: "json",//dataType不要写成datatype否则会变成undefined
                    success: function (data) {
                        //alert('成功')
                    },
                    error: function (err) { alert("错误"); }
                });
                //更新大表中的值
                var row = parseInt(Code) + 1;//字符串要用parseInt转化为int才能与数字相加
                var tab = document.getElementById('assetstable');
                var cols = tab.rows.item(0).cells.length;
                for (var i = 1; i < cols; i++) {
                    //注意是cells不是cell
                    var aa = tab.rows[1].cells[i].innerHTML;
                    if (aa == proper) {
                        //只有用document.getelementbyid才能用rows和cells获取单元格，用$获取失败
                        document.getElementById('assetstable').rows[row].cells[i].innerHTML = "<textarea rows='1' style='width:100%; height:100%;'onchange='saveassetdata(this.id)' id='" + nameid + "s" + (i + 1) + "' >" + value + "</textarea>";
                    }
                }
            }
        </script>



    </form>
</body>
</html>
