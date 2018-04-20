<%--
  Created by IntelliJ IDEA.
  User: LH
  Date: 2017/11/29
  Time: 10:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>chronic - disease</title>
    <jsp:include page="../public/css.jsp"></jsp:include>
    <jsp:include page="../public/tcss.jsp"></jsp:include>
</head>
<body>
<jsp:include page="../public/navbar.jsp"></jsp:include>

<div id="wrapper">
    <div id="page-wrapper">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">
                   monitor<small>overview</small>
                </h1>
                <h3 class="current-time">

                </h3>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">

                <div>
                    <select  id="val1"  name="val1" >
                        <option >2014</option>
                        <option >2016</option>
                        <option >2018</option>
                    </select>
                    <select  id="val2"  name="val2" >
                        <option >Hypertension</option>
                        <option >Chronic sinusitis (disorder)</option>
                        <option >History of appendectomy</option>
                    </select>
                    <button id="sub" type="button">确定</button>
                </div>
            </div>
        </div>

        <!-- /.row -->
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <i class="fa fa-cogs fa-fw"></i> 总体指标
                        <div id="main" style="height:600px;border:1px solid #ccc;padding:10px">
                        </div>
                    </div>
                    <!-- /.panel-heading -->
                    <div class="panel-body">
                        <div class="panel-heading">
                            <i class="fa fa-cogs fa-fw"></i>详细数据
                        </div>
                        <table id="result" class="table table-bordered table-condensed"
                               width="100%">
                            <thead>
                            <tr>
                                <th>省市</th>
                                <th>用户数量</th>
                                <th>高血压患病人数</th>
                                <th>体重超标人数</th>
                                <th>XXX</th>
                                <th>详细情况</th>
                            </tr>
                            </thead>
                        </table>
                    </div>
                </div>
                <!-- /.col-lg-4 -->
            </div>
            <!-- /.row -->
        </div>

    </div>
</div>
</body>

<script src="http://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
<script type="text/javascript">
    $(function (){
        $('#sub').click(function(){

            var value1 = $('#val1').val();
            var value2 = $('#val2').val();
            console.log(value1+value2);
            $.ajax({
                url:"/ke/monitor/whole_country/getData?value1="+value1+"&value2="+value2,
                type:"get",
                dataType:'json',
                success:function(returnValue){

                }
            })
        })
    })
</script>


<script type="text/javascript" src="/ke/media/js/monitor/jquery.js"></script>
<script type="text/javascript" src="/ke/media/js/monitor/echarts.js"></script>
<script type="text/javascript" src="/ke/media/js/monitor/bmap.js"></script>
<script type="text/javascript" src="/ke/media/js/monitor/china.js"></script>
<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=ogQzr2weGLe00PmSAZWf1eZ912ldWp1s"></script>
<script type="text/javascript" src="/ke/media/js/monitor/whole_location.js"></script>
<jsp:include page="../public/script.jsp">
    <jsp:param value="main/patient/currentTime.js" name="loader" />
</jsp:include>
<jsp:include page="../public/tscript.jsp"></jsp:include>

</html>