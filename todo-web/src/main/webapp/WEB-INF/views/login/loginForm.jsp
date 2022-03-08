<div id="wrapper">
	<c:if test="${param.containsKey('error')}">
		<!-- (2) -->
		<t:messagesPanel messagesType="error"
			messagesAttributeName="SPRING_SECURITY_LAST_EXCEPTION" />
	</c:if>

	<div class="login-box">
		<div class="login-logo">XXXXXシステム</div>
		<!-- /.login-logo -->
		<div class="card">
			<div class="card-body login-card-body">
				<p class="login-box-msg">ログインしてください。</p>

				<form:form action="${pageContext.request.contextPath}/login">
					<div class="input-group mb-3">
						<input type="text" class="form-control" placeholder="名前"
							id="username" name="username">
						<div class="input-group-append">
							<div class="input-group-text">
								<span class="fas fa fa-user"></span>
							</div>
						</div>
					</div>
					<div class="input-group mb-3">
						<input type="password" class="form-control" placeholder="パスワード"
							id="password" name="password">
						<div class="input-group-append">
							<div class="input-group-text">
								<span class="fas fa-lock"></span>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-8">
							<div class="icheck-primary">
								<input type="checkbox" id="remember"> <label
									for="remember"> Remember Me </label>
							</div>
						</div>
						<!-- /.col -->
						<div class="col-4">
							<button type="submit" class="btn btn-primary btn-block">Login</button>
						</div>
						<!-- /.col -->
					</div>
				</form:form>


			</div>
			<!-- /.login-card-body -->
		</div>
	</div>
</div>
<!-- /.login-box -->

