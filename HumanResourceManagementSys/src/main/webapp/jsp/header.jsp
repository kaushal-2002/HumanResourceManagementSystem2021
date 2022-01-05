<%@page import="ems.erp.util.CBEView"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet" type="text/css" href="../css/style.css">

<title>Insert title here</title>
</head>
<body>
	<%
		String adminUser = (String) session.getAttribute("adminUser");
		String empUser = (String) session.getAttribute("empUser");
		

		if (adminUser != null && empUser == null) {
	%>
	<ul>
	<li>
		<li><a href="<%=CBEView.ADD_EMP%>">Add Employee</a></li>
		<li><a href="<%=CBEView.ADD_SALARY%>">Add Salary</a></li>
		<li><a href="<%=CBEView.ADD_TimeSheet%>">Add TimeSheet</a></li>
		<li><a href="<%=CBEView.ADD_LEAVE%>">Add Leave</a></li>
		<li><a href="<%=CBEView.ADD_Admin%>">Create Admin</a></li>
		<li><a href="<%=CBEView.Add_Department%>">Add Department</a></li>


		<li><a href="<%=CBEView.VIEW_EMP_CTL%>">View Employee</a></li>
		<li><a href="<%=CBEView.VIEW_SALARY%>">Salary Report</a></li>
		<li><a href="<%=CBEView.VIEW_LEAVE%>">Leave Report</a></li>
		<li><a href="<%=CBEView.VIEW_TIMESHEET%>">TimeSheet Report</a></li>
		<li><a href="<%=CBEView.Department_List%>">View DepartMent</a></li>


		<li><a href="<%=CBEView.LOGOUT%>">Logout</a></li>
	</ul>


	<%
		} else if (adminUser == null && empUser == null ) {
	%>
	<ul>
		<li><a class="active" href="<%=CBEView.HOME%>">Home</a></li>
		<li><a href="<%=CBEView.EMP_LOGIN%>">Login</a></li>
		
		

	</ul>


	<%
		} else if (adminUser == null && empUser != null ) {
	%>

	<ul>
		<li><a class="active"
			href="<%=CBEView.Edit_Emp%>?email=<%=empUser%>">View Profile</a></li>
        <li><a href="<%=CBEView.ADD_TimeSheet%>">Add TimeSheet</a></li>
		<li><a href="<%=CBEView.VIEW_TIMESHEET_Jsp2%>">View TimeSheet</a></li>
		<li><a href="<%=CBEView.ADD_LEAVE%>">Apply for Leave</a></li>
		<li><a href="<%=CBEView.VIEW_LEAVE_Jsp2%>">View Leave</a></li>
		

		<li><a href="<%=CBEView.LOGOUT%>">Logout</a></li>
	</ul>

	<%
		} else if (adminUser == null && empUser == null) {
	%>

	<ul>
		<li><a class="active" href="<%=CBEView.ADD_PROPJECT%>">Create Project</a></li>
		<li><a  href="<%=CBEView.ProjectList%>">Project List</a></li>
		<li><a href="<%=CBEView.ADD_TimeSheet%>">Add TimeSheet</a></li>
			<li><a href="<%=CBEView.VIEW_TIMESHEET%>">TimeSheet Report</a></li>
				<li><a href="<%=CBEView.LOGOUT%>">Logout</a></li>

	</ul>
	<%
		}
	%>


</body>
</html>