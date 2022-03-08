
<!-- Main content -->
<section class="content">
	<div class="container-fluid">
		<div class="row">
			<!-- /.col -->
			<div class="col-md-9">
				<div class="card">
					<form:form
						action="${pageContext.request.contextPath}/user/ceate/do"
						method="post" modelAttribute="user">
						<div class="form-group row">
							<label for="inputName" class="col-sm-2 col-form-label">ID(重複不可)</label>
							<div class="col-sm-10">
								<form:input path="username" />
								<%-- 									<input type="text" class="form-control" name="username" value='${f:h(account.username)}' disabled="disabled"> --%>
							</div>
						</div>
						<div class="form-group row">
							<label for="inputName" class="col-sm-2 col-form-label">パスワード</label>
							<div class="col-sm-10">
								<form:input type="password" path="password" />
							</div>
						</div>
						
						<div class="form-group row">
							<label for="inputEmail" class="col-sm-2 col-form-label">氏名（姓）</label>
							<div class="col-sm-10">
								<form:input path="lastName" />
								<%-- 									<input type="text" class="form-control" name="lastName" value='${f:h(account.lastName)}'> --%>
							</div>
						</div>
						<div class="form-group row">
							<label for="inputName2" class="col-sm-2 col-form-label">氏名（名）</label>
							<div class="col-sm-10">
								<form:input path="firstName" />
							</div>
						</div>

						<input type="submit" value="新規登録"
							class="btn btn-success float-right">
					</form:form>
				</div>
				<!-- /.card -->
			</div>
			<!-- /.col -->
		</div>
		<!-- /.row -->
	</div>
	<!-- /.container-fluid -->
</section>
<!-- /.content -->
