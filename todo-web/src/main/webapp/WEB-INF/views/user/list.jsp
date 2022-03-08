<!-- Main content -->
<section class="content">
	<div class="container-fluid">
		<div class="row">
			<div class="col-12">
				<div class="card">
					<div class="card-header">
						<h2 class="card-title">ユーザ情報一覧</h2>
					</div>
					<!-- /.card-header -->
					<div class="card-body">
						<table id="example2" class="table table-bordered table-hover">
							<thead>
								<tr>
									<th>ID</th>
									<th>氏名(姓)</th>
									<th>氏名(名)</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${userList}" var="u" varStatus="s">
									<tr>
										<td><c:out value="${u.username}" /></td>
										<td><c:out value="${u.lastName}" /></td>
										<td><c:out value="${u.firstName}" /></td>
									</tr>
								</c:forEach>
								
							</tbody>
						</table>
					</div>
					<!-- /.card-body -->
				</div>
				<!-- /.card -->

				<!-- /.card -->
			</div>
			<!-- /.col -->
		</div>
		<!-- /.row -->
	</div>
	<!-- /.container-fluid -->
</section>
<!-- /.content -->

<!-- Page specific script -->
