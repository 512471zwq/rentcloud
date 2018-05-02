<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Abuildings.aspx.cs" Inherits="Abuildings" %>

<!DOCTYPE html>
<%--develop分支测试--%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Buildings</title>
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
            box-shadow: 0 3px 18px rgba(100, 100, 100, .5);
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
                                        <!--获取可统计字段-->
                                        <ul class="dropdown-menu" id="showcountpro"></ul>
                                    </div>
                                </div>
                                <div class="panel-body">
                                    <div class="for_btn" id="ditu" style="height: 700px">
                                        <div id="first" style="height: 100%; width: 100%"></div>
                                    </div>
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
                                    <strong>楼栋基本信息</strong>
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
                                            </table>
                                        <table class="table table-striped table-bordered table-hover" style="width: 95%">
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


                        <%--<div class="row">--%>
                         <%-- 图表1开始--%>
                          <div class="col-md-12" id="chartstable" >
                            <div class="panel panel-default">
                                <div class="panel-heading aaa">
                                    图表显示
                                    <input type="button" class="btn btn-success" value="测试" style="float: right"  />
                                    <input type="button" class="btn btn-success" value="添加" style="float: right" />
                                </div>

                                <div id="chartdiv1" class="table-responsive" style="overflow: auto; border: 6px solid #e5e5e5; height: 500px"></div>

                            </div>
                        </div>
                        <%-- 图表1结束--%>
                        
                            <div class="col-md-8">
                                <div class="panel panel-default">
                                        <div class="panel-heading aaa">
                                            属性表
                                            <input type="button" class="btn btn-success" value="测试按钮" style="float: right" onclick="testetc()" />
                                            <input type="button" class="btn btn-success" value="添加属性" style="float: right" onclick="addcolbutton()" />


                                        </div>

                                        <div class="table-responsive" style="overflow: auto; border: 6px solid #e5e5e5; height: 500px">
                                            <table class="table table-striped table-bordered table-hover" id="dataTables-example" style="width: 20px">
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
                        <%-- 图表2开始--%>
                          <div class="col-md-12" >
                            <div class="panel panel-default">
                                <div class="panel-heading aaa">
                                    图表2显示
                                    <input type="button" class="btn btn-success" value="测试" style="float: right"  />
                                    <input type="button" class="btn btn-success" value="添加" style="float: right" />
                                </div>

                                <div id="chartdiv2" class="table-responsive" style="overflow: auto; border: 6px solid #e5e5e5; height: 900px"></div>

                            </div>
                        </div>
                        <%-- 图表2结束--%>
                        <%--</div>--%>
                    </div>
                </div>


                <%--<!--遮罩层-->
                <div class="bgPop"></div>--%>
                <!--弹出框-->
                <div class="pop">
                    <div class="pop-top">
                        <span class="pop-close">Ｘ</span>
                        <h2>课程介绍</h2>
                    </div>
                    <div class="pop-content">
                        <div class="pop-content-left">
                            <img src="" alt="" class="teathumb" />
                        </div>
                        <div class="pop-content-right">
                            <div class="form-group input-group">
                                <span class="input-group-addon">属性名</span>
                                <input type="text" class="form-control" id="propertyname" placeholder="Username" />
                            </div>
                            <div class="checkbox">
                                <label><input id="countYorN" name="countYorN" type="checkbox" value="" />统计数据</label>
                            </div>
                            <label>Selects</label>
                            <select class="form-control">
                                <option>数字</option>
                                <option>英文</option>
                                <option>汉字</option>
                                <option>日期</option>
                            </select>
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
                                        
        <script src="assets/js/jquery-1.11.0.min.js" type="text/javascript"></script>
        <!-- jQuery Js -->
        <script src="assets/js/jquery-1.10.2.js"></script>
        <!-- Bootstrap Js -->
        <script src="assets/js/bootstrap.min.js"></script>
        <!-- Metis Menu Js -->
        <script src="assets/js/jquery.metisMenu.js"></script>
        <!-- Custom Js -->
        <script src="assets/js/custom-scripts.js"></script>
        <script src="assets/js/dataTables/jquery.dataTables.js"></script>
        <script src="assets/js/dataTables/dataTables.bootstrap.js"></script>
        <script type="text/javascript" src="./lib/jquery-3.1.1.min.js"></script>
        <script type="text/javascript" src="./lib/echarts.min.js"></script>
        <script type="text/javascript" src="assets/js/bootstable.js"></script>
        <script type="text/javascript" src="assets/js/jquery.min.js"> </script>
        <script type="text/javascript" src="buildings.js"></script>
        
        <script>
            //fdfd测试用例函数
            function testetc() {
                $('#chartstable').hide();
            }
        </script>
        

        <%--加载页面显示表格--%>
        <script>
            //页面加载时调用showdata方法显示数据
            window.onload = function () {
                showdata();
            }
            //显示大表数据，传入的数据有项目ID，
            function showdata() {
                var projectid = '1';
                document.getElementById('basicpro').innerHTML = '';
                document.getElementById('dataTables-example').innerHTML = "<tr><td style='background-color: cornsilk'></td></tr><tr id='nameid'><th>ID</th></tr>";
                var pd = { "t": 1, "projectid": projectid };
                $.ajax({
                    type: "post",
                    url: "Handler.ashx",
                    data: pd,
                    dataType: "json",//dataType不要写成datatype否则会变成undefined
                    success: function (data) {
                        if (data.status != "-1") {
                            var dataobj = eval("(" + data.status + ")");
                            $.each(dataobj.root, function (i, item) {
                                if (i == 0) {//设置属性名
                                    var num = 1;
                                    for (pro in item) { //用for in来获取json的属性名
                                        if (pro != 'SortNo' && pro != 'Id' && pro != 'Projects_Id' && pro != 'Code') {//不显示默认字段
                                            $('#basicpro').append('<div class="form-group input-group"><span class="input-group-addon">' + pro + '</span><input type="text" id="' + pro + '" class="form-control" onchange="saveonedata(this.id)" placeholder="Username" /></div>');
                                            var c = document.getElementById('dataTables-example');//获取表格信息
                                            var oTd = c.rows[0].insertCell();
                                            oTd.innerHTML = "<div style='width:250px'><button onclick=\"delcol(" + (num++) + ")\">删除</button></div>";
                                            var lieming = c.rows[1].insertCell();
                                            lieming.innerHTML = pro;
                                        }
                                    }
                                }
                                var x = document.getElementById('dataTables-example').insertRow();
                                var num = 0;
                                i = i + 1;
                                for (pro in item) {
                                    //第一列只显示默认字段中与楼栋相关的Code字段，其他默认字段不显示，Code字段与地图数据的name字段匹配
                                    if (pro != 'SortNo' && pro != 'Id' && pro != 'Projects_Id') {
                                        var y = x.insertCell();
                                        num = num + 1;
                                        if (pro == 'Code') {
                                            y.innerHTML = item[pro];
                                        }
                                        else {   //innerHTML中用参数的写法
                                            y.innerHTML = "<textarea rows='1' style='width:100%; height:100%;'onchange='savedata(this.id)' id='" + i + "s" + num + "' >" + item[pro] + "</textarea>";
                                        }
                                    }
                                }
                            })
                        }
                    },
                    error: function (err) { alert("错误"); }
                });
                //获取能用来统计的字段
                var pd = { "t": 7, "projectid": projectid };
                document.getElementById('showcountpro').innerHTML = '';
                $.ajax({
                    type: "post",
                    url: "Handler.ashx",
                    data: pd,
                    dataType: "json",//dataType不要写成datatype否则会变成undefined
                    success: function (data) {
                        if (data.status != "-1") {
                            var dataobj = eval("(" + data.status + ")");
                            
                            $.each(dataobj.root, function (i, item) {
                                for (pro in item) {
                                        $('#showcountpro').append('<li><a href="#1" onclick="visualdata(this.innerHTML);">'+item[pro]+'</a></li>');
                                }
                            })
                            
                        }
                    },
                    error: function (err) { alert("错误"); }
                });
            }
        </script>
        <%--添加删除属性列--%>
        <script>
             //点击添加属性列时弹出信息框
            function addcolbutton() {
                $('.bgPop,.pop').show();
            }
            $(document).ready(function () {
                $('.pop-close').click(function () {
                    $('.bgPop,.pop').hide();
                });
                $('.pop-ok').click(function () {
                    //确认后添加一列属性
                    addcol();
                    $('.bgPop,.pop').hide();
                });
			})
            //添加一个属性列 
            function addcol() {
                var projectid = '1';
                var c = document.getElementById('dataTables-example');//获取表格信息
                var len = c.rows.length;//获得行数
                var ro = c.rows[0].cells;
                var len2 = ro.length;//获得列数
                var oTd = c.rows[0].insertCell(len2);
                oTd.innerHTML = "<div style='width:250px'><button onclick=\"delcol(" + (len2) + ")\">删除</button></div>";
                var lieming = c.rows[1].insertCell(len2);
                //获取弹出框中填写的属性名propertyname
                var property = document.getElementById('propertyname').value;
                lieming.innerHTML = property;
                var check=document.getElementsByTagName('input')[name="countYorN"];
                if (check.checked == true) {
                    var pd = { "t": 8, "projectid": projectid,"pcountpro": property };
                    $.ajax({
                        type: "post",
                        url: "Handler.ashx",
                        data: pd,
                        dataType: "json",//dataType不要写成datatype否则会变成undefined
                        success: function (data) {
                            //alert('添加列成功');
                        },
                        error: function (err) { alert("错误"); }
                    });
                }
                var pd = { "t": 2, "property": property };
                $.ajax({
                    type: "post",
                    url: "Handler.ashx",
                    data: pd,
                    dataType: "json",//dataType不要写成datatype否则会变成undefined
                    success: function (data) {
                        //alert('添加列成功');
                    },
                    error: function (err) { alert("错误"); }
                });
                for (var i = 2; i < len; i++) {
                    var x = c.rows[i].insertCell(len2);//依次向每一行的末尾插入一个新列
                    var ii = i - 1;
                    var num = len2 + 1;
                    x.innerHTML = "<textarea rows='1' id='" + ii + "s" + num + "' style='width:100%; height:100%;' onchange='savedata(this.id)'></textarea>";
                }
                showdata();
            }
            //删除指定属性列
            function delcol(columnId) {
                var projectid = '1';
                var c = document.getElementById('dataTables-example');//获取表格信息
                var len = c.rows.length;//获取表格的行数
                var ro = c.rows[0].cells//获取表格的列数
                var len2 = ro.length - 1;
                //获取要删除列的属性值
                var property = c.rows[1].cells[columnId].innerHTML;
                var pd = { "t": 3, "property": property };
                $.ajax({
                    type: "post",
                    url: "Handler.ashx",
                    data: pd,
                    dataType: "json",//dataType不要写成datatype否则会变成undefined
                    success: function (data) {
                    },
                    error: function (err) { alert("错误"); }
                });
                //删除每一行末尾的单元格
                for (var i = 0; i < len; i++) {
                    var x = c.rows[i].deleteCell(columnId);
                }
                updateright();//删除了大表属性后更新右侧的信息栏
                //更新删除键捆绑的属性列
                for (var j = 1; j <= len2; j++) {
                    c.rows[0].cells[j].innerHTML = "<div align='center' style='width:250px'><button onclick=\"delcol(" + (j) + ")\">删除</button></div>";
                }
            }
            //删除了大表属性后更新右侧的信息栏
            function updateright() {
               var projectid = '1';
               document.getElementById('basicpro').innerHTML = '';
               var pd = { "t": 1, "projectid": projectid };
               $.ajax({
                   type: "post",
                   url: "Handler.ashx",
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
                                       if (pro != 'SortNo' && pro != 'Id' && pro != 'Projects_Id' && pro != 'Code') {
                                           $('#basicpro').append('<div class="form-group input-group"><span class="input-group-addon">' + pro + '</span><input type="text" id="' + pro + '" class="form-control" onchange="saveonedata(this.id)" placeholder="Username" /></div>');
                                       }
                                   }
                               }
                           })
                       }
                   },
                   error: function (err) { alert("错误"); }
               });
            }
        </script>
        <%--修改数据后保存--%>
        <script>
            //保存大表数据
            function savedata(id) {
                var str = id;
                var projectid = '1';
                //获取id中's'前的字符串为第几行即楼栋的Code编号，'s'后的字符串为第几列
                var Code = str.substr(0, str.indexOf('s'));
                var col = str.substr(str.indexOf('s') + 1) - 2;
                //知道第几列后获取该列的属性名
                var proper = $("#dataTables-example").find('tr').eq(1).find('td').eq(col).text();//用text方法才获取到了单元格的值
                var value = $("#" + id).val();
                var pd = { "t": 4, "Code": Code, "proper": proper, "value": value, "projectid": projectid };
                $.ajax({
                    type: "post",
                    url: "Handler.ashx",
                    data: pd,
                    dataType: "json",//dataType不要写成datatype否则会变成undefined
                    success: function (data) {
                    },
                    error: function (err) { alert("错误"); }
                });
            }
            //保存单个表格数据
            function saveonedata(id) {
                //td标签不存在value属性，所以需要用innertext或者innerHTML来获取内部的值
                //用$()无法获取td的innertext，用getelementbyid可以
                var Code = document.getElementById('onedataid').innerText;
                var proper = id;
                var projectid = '1';
                var value = document.getElementById(id).value;
                var pd = { "t": 4, "Code": Code, "proper": proper, "value": value, "projectid": projectid };
                $.ajax({
                    type: "post",
                    url: "Handler.ashx",
                    data: pd,
                    dataType: "json",//dataType不要写成datatype否则会变成undefined
                    success: function (data) {
                    },
                    error: function (err) { alert("错误"); }
                });
                //更新大表中的值
                var row = parseInt(Code) + 1;//字符串要用parseInt转化为int才能与数字相加
                var tab = document.getElementById('dataTables-example');
                var cols = tab.rows.item(0).cells.length;
                for (var i = 1; i < cols; i++) {
                    //注意是cells不是cell
                    var aa = tab.rows[1].cells[i].innerHTML;
                    if (aa == proper) {
                        //只有用document.getelementbyid才能用rows和cells获取单元格，用$获取失败
                        document.getElementById('dataTables-example').rows[row].cells[i].innerHTML = "<textarea rows='1' style='width:100%; height:100%;'onchange='savedata(this.id)' id='" + nameid + "s" + (i + 1) + "' >" + value + "</textarea>";
                    }
                }
            }
        </script>
        <%--不同颜色显示数据--%>
        <script>
            //不同颜色显示数据
            function visualdata(proper) {
                var pd1 = { "t": 6, "pro": proper };
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

        <%--加载echarts图表--%>
        <script type="text/javascript">
            var dom = document.getElementById("first");
            var myChart = echarts.init(dom);
            var app = {};
            option = null;
            option = {
                backgroundColor: '#FCF9F2',
                title: {
                    text: '华清嘉园',
                    left: 'center'
                },
                tooltip: {
                    trigger: 'item',
                    formatter: '{b}<br/>{c} (p / km2)'
                },
                visualMap: {
                    left: 'right',
                    min: 0,
                    max: 28,
                    inRange: {
                        color: ['red', 'blue']
                    },
                    text: ['High', 'Low'],// 文本，默认为数值文本
                },
                series: [
                    {
                        name: '中国',
                        type: 'map',
                        mapType: 'buildings',
                        aspectScale: 1,
                        itemStyle: {
                            normal: {
                                areaColor: 'orange',
                                //label: {
                                //    show: true,
                                //    formatter: function (params) {
                                //        return params.data.allname;
                                //    }
                                //}
                            },
                            emphasis: {
                                label: {
                                    show: true
                                }
                            }
                        },
                        data: [{
                            name: '植被',
                            value: 1,
                            allname: 'ee'
                        },
                        {
                            name: '河',
                            value: 2
                        },
                        {
                            name: '1',//写成'name'或者1没有双引号都不会显示数据
                            value: '23',//但是value是数值好像没有什么问题
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
                        }, {
                            name: '12',
                            value: 12,
                        }, {
                            name: '13',
                            value: 13,
                        }, {
                            name: '14',
                            value: 14,
                        }, {
                            name: '15',
                            value: 15,
                        }, {
                            name: '16',
                            value: 16,
                        }, {
                            name: '17',
                            value: 17,
                        }, {
                            name: '18',
                            value: 18,
                        }, {
                            name: '19',
                            value: 19,
                        }, {
                            name: '20',
                            value: 20,
                        }, {
                            name: '21',
                            value: 21,
                        }, {
                            name: '22',
                            value: 22,
                        }, {
                            name: '23',
                            value: 23,
                        }, {
                            name: '24',
                            value: 24,
                        }, {
                            name: '25',
                            value: 25,
                        }, {
                            name: '26',
                            value: 26,
                        }, {
                            name: '27',
                            value: 27,
                        }, {
                            name: '28',
                            value: 28,
                        },]
                    }
                ]
            };;
            if (option && typeof option === "object") {
                myChart.setOption(option, true);
            }
            //updatecolor();
            /////ajax获取data值
            //function updatecolor() {
            //    var pd1 = { "name1": 1 };
            //    $.ajax({
            //        type: "post",
            //        url: "getdata.ashx",
            //        data: pd1,
            //        dataType: "text",
            //        success: function (data) {
            //            var varReceiver = jQuery.parseJSON(data);
            //            var varSeries = new Array(varReceiver.Count[0].total);
            //            for (var i = 0; i < varReceiver.Count[0].total; i++)
            //            { varSeries[i] = varReceiver.Rows[i]; }
            //            myChart3.setOption({
            //                title: { text: '抵达了' },
            //                series: [{
            //                    name: '测试',
            //                    data: varSeries
            //                }]
            //            });
            //        },
            //        error: function (XMLHttpRequest, textStatus, errorThrown) {
            //            alert(errorThrown);
            //        }
            //    });
            //}
            //myChart.on('dblclick', function (params) { if (params.name === '16') { window.location.href = "Abuilding1.aspx"; } });
            myChart.on('dblclick', function (params) { if (params.name === '1') { window.location.href = "Abuilding1.aspx?projectno=1&buildingno=1"; } });
            
            //myChart.on('dblclick', function (params) { if (params.name === '16') { window.open('Abuilding1.aspx'); } });
            //点击图表右边显示图的数据
            myChart.on('click', function (params) {
                var projectid = '1';
                var Code = params.name;
                $('#onedataid').text(Code);
                var pd = { "t": 5, "Code": Code, "projectid": projectid };
                $.ajax({
                    type: "post",
                    url: "Handler.ashx",
                    data: pd,
                    dataType: "json",//dataType不要写成datatype否则会变成undefined
                    success: function (data) {
                        var dataobj = eval("(" + data.status + ")");
                        $.each(dataobj.root, function (i, item) {
                            //用for in来获取json的属性名
                            for (pro in item) {
                                //除去默认字段
                                if (pro != 'SortNo'&&pro != 'Id'&&pro != 'Projects_Id'&&pro != 'Code') {
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
        </script>

        <script type="text/javascript">
            var dom = document.getElementById("echarttest1");
            var myChart1 = echarts.init(dom);
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
            myChart1.setOption(option, true);
        </script>

        <script type="text/javascript">
            var dom = document.getElementById("echarttest2");
            var myChart2 = echarts.init(dom);
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

            myChart2.setOption(option, true);

        </script>
      
        <script type="text/javascript">
var dom = document.getElementById("chartdiv2");
var myChart4 = echarts.init(dom);
var app = {};
option = null;
myChart4.showLoading();
var data = {
    "name": "flare",
    "children": [
        {
            "name": "flex",
            "children": [
                {"name": "FlareVis", "value": 4116}
            ]
        },
        {
            "name": "scale",
            "children": [
                {"name": "IScaleMap", "value": 2105},
                {"name": "LinearScale", "value": 1316},
                {"name": "LogScale", "value": 3151},
                {"name": "OrdinalScale", "value": 3770},
                {"name": "QuantileScale", "value": 2435},
                {"name": "QuantitativeScale", "value": 4839},
                {"name": "RootScale", "value": 1756},
                {"name": "Scale", "value": 4268},
                {"name": "ScaleType", "value": 1821},
                {"name": "TimeScale", "value": 5833}
           ]
        },
        {
            "name": "display",
            "children": [
                {"name": "DirtySprite", "value": 8833}
           ]
        }
    ]
};
    myChart4.hideLoading();

    echarts.util.each(data.children, function (datum, index) {
        index % 2 === 0 && (datum.collapsed = true);
    });

    myChart4.setOption(option = {
        tooltip: {
            trigger: 'item',
            triggerOn: 'mousemove'
        },
        series: [
            {
                type: 'tree',

                data: [data],

                top: '1%',
                left: '7%',
                bottom: '1%',
                right: '20%',

                symbolSize: 7,

                label: {
                    normal: {
                        position: 'left',
                        verticalAlign: 'middle',
                        align: 'right',
                        fontSize: 9
                    }
                },

                leaves: {
                    label: {
                        normal: {
                            position: 'right',
                            verticalAlign: 'middle',
                            align: 'left'
                        }
                    }
                },

                expandAndCollapse: true,
                animationDuration: 550,
                animationDurationUpdate: 750
            }
        ]
    });

if (option && typeof option === "object") {
    myChart4.setOption(option, true);
}
       </script>

        <script type="text/javascript">
            var dom = document.getElementById("chartdiv1");
            var myChart3 = echarts.init(dom);
            var app = {};
            option = null;
            var projectid = '1';
            //ajax获取图例名称(可统计字段)，获取x轴名称(项目1所有楼栋编号)，与x轴对应的值(可统计字段对应的值)
            
            option = {
                color: ['#103366', '#206699', '#fcabce', '#85323e'],
                tooltip: {
                    trigger: 'axis',
                    axisPointer: {
                        type: 'shadow'
                    }
                },
                legend: {
                    x: 'right',
                    data: []
                },
                toolbox: {
                    show: true,
                    orient: 'vertical',
                    left: 'right',
                    top: 'center',
                    feature: {
                        mark: {show: true},
                        dataView: {show: true, readOnly: false},
                        magicType: {show: true, type: ['line', 'bar', 'stack', 'tiled']},
                        restore: {show: true},
                        saveAsImage: {show: true}
                    }
                },
                calculable: true,
                xAxis: [
                    {
                        type: 'category',
                        axisTick: {show: true},//是否显示坐标轴刻度
                        data: ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', '20','21','22','23','24','25','26','27','28','29','30','31','32','33','34','35','36','37','38','39']
                    }
                ],
                yAxis: [
                    {
                        type: 'value'
                    }
                ],
                series: []
            };
            var pd1 = { "t": 7, "projectid": projectid };
            $.ajax({
                type: "post",
                url: "Handler.ashx",
                data: pd1,
                dataType: "json",
                success: function (data) {
                    if (data.status != "-1") {
                        var dataobj = eval("(" + data.status + ")");
                        var count = Object.keys(dataobj.root).length;
                        var countproname = new Array(count);
                        var i = 0;
                        var series1 = "["; 
                        $.each(dataobj.root, function (i, item) {
                            for (pro in item) {
                                countproname[i] = item[pro];//获取可统计字段作为图例
                                var countdata = getcountdata(countproname[i]);
                                series1 +="{'name':'"+countproname[i]+"','type':'bar','barGap':'40%','data':[" + countdata + "]},";
                                i++;
                            }
                        })
                    }
                    series1 += "]";
                    var json1 = eval('(' + series1 + ')');
                    myChart3.setOption({
                        legend: {
                            data: countproname
                        },
                        series:json1
                    })
                },
                error: function (err) { alert("错误");
                }
            });
            if (option && typeof option === "object") {
                myChart3.setOption(option, true);
            }
       </script> 
       
        <%--地图加载的时候显示统计字段柱状图的调用函数--%>
        <script>
        var countprodata = new Array(39);//写在外面
        function getcountdata(countproname) {
            var projectid = '1';
            var pd1 = { "t": 9, "projectid": projectid,"pcountpro":countproname };
            $.ajax({
                 async: false,//设为false
                 type: "post",
                 url: "Handler.ashx",
                 data: pd1,
                 dataType: "json",
                 success: function (data) {
                     if (data.status != "-1") {
                         var dataobj = eval("(" + data.status + ")");
                         //var count = Object.keys(dataobj.root).length;
                         //var countprodata = new Array(count);
                         var i = 0;
                         $.each(dataobj.root, function (i, item) {
                             for (pro in item) {
                                 countprodata[i] = item[pro];//获取可统计字段作为图例
                                 i++;
                             }
                         })
                     }
                 },
                 error: function (err) { alert("错误"); 
                 }
            });
            return countprodata;
		}
    </script>

    </form>
</body>
</html>
