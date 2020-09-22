<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>表格</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
<%
//定义Student类     用Java方法中shift+alt+s快速生成  
	class Student {
		String id;
		String name;
		String sex;
		String classes;
		String score;
		public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getClasses() {
		return classes;
	}
	public void setClasses(String classes) {
		this.classes = classes;
	}
	public String getScore() {
		return score;
	}
	public void setScore(String score) {
		this.score = score;
	}

	}
	ArrayList<Student> list = new ArrayList<Student>();
	Student stu1 = new Student();
	stu1.setId("001");
	stu1.setName("李白");
	stu1.setSex("男");
	stu1.setClasses("01");
	stu1.setScore("723.0");

	Student stu2 = new Student();
	stu2.setId("002");
	stu2.setName("孟浩然");
	stu2.setSex("男");
	stu2.setClasses("02");
	stu2.setScore("689.0");

	Student stu3 = new Student();
	stu3.setId("003");
	stu3.setName("杨玉环");
	stu3.setSex("女");
	stu3.setClasses("03");
	stu3.setScore("600.0");

	list.add(stu1);
	list.add(stu2);
	list.add(stu3);
%>
<table align="center" width="450" border="1" bordercolor="black">
<tr align="center">
<td><b>学 号</b></td>
<td><b>姓 名</b></td>
<td><b>性 别</b></td>
<td><b>班 级</b></td>
<td><b>成 绩</b></td>
</tr>
<%
	for (Student student : list) {
%>
<tr align="center">
<td><%=student.getId()%></td>
<td><%=student.getName()%></td>
<td><%=student.getSex()%></td>
<td><%=student.getClasses()%></td>
<td><%=student.getScore()%></td>
</tr>
<%
	}
%>
</table>
  </body>
</html>
