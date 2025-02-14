<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<style type="text/css">
* {
	margin: 0px;
	padding: 0px;
}

/*####################################################################################################
	header section
    ####################################################################################################*/
header {
	margin: auto;
	background-color: #5d2e2e;
	height: 118px;
}

img {
	margin: auto;
	padding: 5px;
	display: block;
	width: 70px;
	border-radius: 40px;
}

h1 {
	text-align: center;
	margin: 0px;
	padding-top: 30px;
	color: white;
}

.navbar {
	background-color: orange;
}

.navbar ul {
	overflow: auto;
	margin-top: 45px;
}

.navbar li {
	float: right;
	list-style: none;
	margin: 10px 10px;
}

.navbar li a {
	color: white;
	padding: 3px 40px;
	text-decoration: none;
}

.navbar li a:hover {
	color: orange;
}

/*######################################################################################################
main or body content
######################################################################################################*/
main {
	width: 100%;
	height: 65.3vh;
	background-image: linear-gradient(rgba(0, 0, 0, 0.2), rgba(0, 0, 0, 0.4)),
		url('/images/2.jpg');
	background-repeat: no-repeat;
	background-size: cover;
	background-color: lightblue;
	background-color: lightblue;
	display: flex;
	justify-content: center;
	align-items: center;
	text-align: center;
	color: white;
}

section h3 {
	font-size: 35px;
	font-weight: 200;
	letter-spacing: 3px;
}

section h1 {
	margin: 30px 0 20px 0;
	font-size: 45px;
	font-weight: 700;
	text-shadow: 2px 1px 5px black;
	text-transform: uppercase;
}

section p {
	font-size: 15px;
	word-spacing: 2px;
	margin-bottom: 15px;
	text-shadow: 1px 1px 1px black;
}

section a {
	padding: 12px 30px;
	border-radius: 4px;
	outline: none;
	font-size: 13px;
	font-weight: 500;
	text-decoration: none;
	letter-spacing: 1px;
	color: blue;
}

section .btn_login {
	background: orange;
}

section .btn_signup {
	background: orange;
}

.errormsg {
	color: red;
	font-style: bold;
}

/*####################################################################################################
	footer section
####################################################################################################*/
footer {
	width: 100%;
	height: 5vh;
	background-color: #5d2e2e;
	text-align: center;
	padding-top: 5px;
}

footer a {
	font-size: 15px;
	font-weight: 500;
	text-decoration: none;
	letter-spacing: 1px;
	color: white;
}
</style>
</head>
<body>
	<!-- ######################################## Header  content  ################################## -->
	<header>
		<h1>Welcome To Course Registration App</h1>
		<nav class="navbar">
			<ul>
				<li><a href="${pageContext.request.contextPath}/view/courses">All
						Courses</a></li>
				<li><a href="${pageContext.request.contextPath}/view/profile">My
						Profile</a></li>
			</ul>
		</nav>
	</header>
	<br>
	<br>

	<h2 align="center">
		Welcome ${pageContext.request.userPrincipal.name} | <a
			onclick="document.forms['logoutForm'].submit()">Logout</a>
	</h2>
	<c:if test="${pageContext.request.userPrincipal.name != null}">
		<form id="logoutForm" method="POST" action="${contextPath}/logout">
			<input type="hidden" name="${_csrf.parameterName}"
				value="${_csrf.token}" />
		</form>
	</c:if>
	<!-- ######################################## main or body  content  ################################## -->
	<main>
		<section>
			<h1>
				<u>Edit Course Details</u>
			</h1>
			<form:form method="POST"
				action="${pageContext.request.contextPath}/course/update"
				modelAttribute="courseUpdate">
				<table>
					<tr>
						<td>Course Id</td>
						<td><form:input path="courseid" readonly="true" /></td>
					</tr>

					<tr>
						<td>Course Name :</td>
						<td><form:input path="courseName" /></td>
						<td><form:errors path="courseName" cssClass="errormsg" /></td>
					</tr>
					<tr>
						<td>Topic Name :</td>
						<td><form:input path="topicName" /></td>
						<td><form:errors path="topicName" cssClass="errormsg" /></td>
					</tr>
					<tr>
						<td>Ref Url Text :</td>
						<td><form:input path="refUrlText" /></td>
						<td><form:errors path="refUrlText" cssClass="errormsg" /></td>
					</tr>
					<tr>
						<td>Ref Url Video :</td>
						<td><form:input path="refUrlVideo" /></td>
						<td><form:errors path="refUrlVideo" cssClass="errormsg" /></td>
					</tr>
					<tr>
						<td></td>
						<td><input type="submit" value="Update" /></td>
					</tr>
				</table>
			</form:form>
		</section>
	</main>
	<footer>
		<a href="#">copy_write@Arjitj's_blog_spot</a>
	</footer>
</body>
</html>
