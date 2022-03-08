<div id="wrapper">
	<h1 id="title">Hello world!</h1>
	<p>The time on the server is ${serverTime}.</p>
	<p>Welcome ${f:h(account.firstName)} ${f:h(account.lastName)} !!</p>
	<ul>
		<li><a href="${pageContext.request.contextPath}/account">view
				account</a></li>
	</ul>
	<a href="${pageContext.request.contextPath}/login">Loginへ</a> <a
		href="${pageContext.request.contextPath}/dash">ダッシュボードへ</a>
	<form:form action="${pageContext.request.contextPath}/logout">
		<button type="submit">Logout</button>
	</form:form>
</div>
