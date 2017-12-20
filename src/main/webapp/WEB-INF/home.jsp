<%--
  Created by LZHR.
  User: lizhongren1
  Date: 2017/12/6
  Time: 上午10:40
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>首页</title>
    <script src="/js/jquery-3.2.1.min.js"></script>
</head>
<body>

<h1>首页!</h1>


学生姓名: <input type="text"><br>
学生性别: <input type="text"><br>
<input type="submit" value="添加学生">


<a href="#" id="btn">显示所有学员</a>

<table id="tab"></table>

</body>
<script>

    // 给a标签绑定点击方法
//    $("#btn").click(function () {

        $.ajax({
            url:"/allstu",
            success:function (result) {

                if(result.code == "0") {

                    // 做成功之后的事
                    // 补全table

                    for (var i = 0; i < result.data.length; i++){

                        var stu = result.data[i];

//                        console.log(stu);

//                        $("<tr><td>" + stu.name + "</td><td>" + stu.sex+"</td></tr>").appendTo($("#tab"));


                        var tdName = $("<td></td>").text(stu.name)
                        var tdSex = $("<td></td>").text(stu.sex);
                        var tr = $("<tr></tr>").append(tdName).append(tdSex)
                        $("#tab").append(tr)



                    }
                }
            }
        });
//    });



</script>
</html>
