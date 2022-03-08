
<!-- Main content -->
<section class="content">
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-3">

				<!-- Profile Image -->
				<div class="card card-primary card-outline">
					<div class="card-body box-profile">
						<div class="text-center">
							<img class="profile-user-img img-fluid img-circle"
								src="${pageContext.request.contextPath}/resources/app/img/user4-128x128.jpg"
								alt="User profile picture">
						</div>

						<h3 class="profile-username text-center">${f:h(account.lastName)}
							${f:h(account.firstName)}</h3>

						<p class="text-muted text-center">Software Engineer</p>

					</div>
					<!-- /.card-body -->
				</div>
			</div>
			<!-- /.col -->
			<div class="col-md-9">
				<div class="card">
					<div class="card-header p-2">
						<ul class="nav nav-pills">
							<li class="nav-item"><a class="nav-link active"
								href="#settings" data-toggle="tab">Profile</a></li>
							<li class="nav-item"><a class="nav-link" href="#todo"
								data-toggle="tab">ToDo</a></li>
						</ul>
					</div>
					<!-- /.card-header -->
					<div class="card-body">
						<div class="tab-content">
							<div class="active tab-pane" id="settings">
								<div class="form-group row">
									<label for="inputName" class="col-sm-2 col-form-label">ID</label>
									<div class="col-sm-10">${f:h(account.username)}</div>
								</div>
								<div class="form-group row">
									<label for="inputEmail" class="col-sm-2 col-form-label">氏名（姓）</label>
									<div class="col-sm-10">${f:h(account.lastName)}</div>
								</div>
								<div class="form-group row">
									<label for="inputName2" class="col-sm-2 col-form-label">氏名（名）</label>
									<div class="col-sm-10">${f:h(account.firstName)}</div>
								</div>

							</div>


							<div class="tab-pane" id="todo">
								<ul class="todo-list" data-widget="todo-list">
									<li>
										<!-- drag handle --> <span class="handle"> <i
											class="fas fa-ellipsis-v"></i> <i class="fas fa-ellipsis-v"></i>
									</span> <!-- checkbox -->
										<div class="icheck-primary d-inline ml-2"></div> <!-- todo text -->
										<span class="text">Design a nice theme</span> <!-- Emphasis label -->
										<small class="badge badge-danger"><i
											class="far fa-clock"></i> 2 mins</small> <!-- General tools such as edit or delete-->
										<div class="tools">
											<i class="fas fa-edit"></i> <i class="fas fa-trash-o"></i>
										</div>
									</li>
									<li><span class="handle"> <i
											class="fas fa-ellipsis-v"></i> <i class="fas fa-ellipsis-v"></i>
									</span>
										<div class="icheck-primary d-inline ml-2"></div> <span
										class="text">Make the theme responsive</span> <small
										class="badge badge-info"><i class="far fa-clock"></i>
											4 hours</small>
										<div class="tools">
											<i class="fas fa-edit"></i> <i class="fas fa-trash-o"></i>
										</div></li>
									<li><span class="handle"> <i
											class="fas fa-ellipsis-v"></i> <i class="fas fa-ellipsis-v"></i>
									</span>
										<div class="icheck-primary d-inline ml-2"></div> <span
										class="text">Let theme shine like a star</span> <small
										class="badge badge-warning"><i class="far fa-clock"></i>
											1 day</small>
										<div class="tools">
											<i class="fas fa-edit"></i> <i class="fas fa-trash-o"></i>
										</div></li>
									<li><span class="handle"> <i
											class="fas fa-ellipsis-v"></i> <i class="fas fa-ellipsis-v"></i>
									</span>
										<div class="icheck-primary d-inline ml-2"></div> <span
										class="text">Let theme shine like a star</span> <small
										class="badge badge-success"><i class="far fa-clock"></i>
											3 days</small>
										<div class="tools">
											<i class="fas fa-edit"></i> <i class="fas fa-trash-o"></i>
										</div></li>
									<li><span class="handle"> <i
											class="fas fa-ellipsis-v"></i> <i class="fas fa-ellipsis-v"></i>
									</span>
										<div class="icheck-primary d-inline ml-2"></div> <span
										class="text">Check your messages and notifications</span> <small
										class="badge badge-primary"><i class="far fa-clock"></i>
											1 week</small>
										<div class="tools">
											<i class="fas fa-edit"></i> <i class="fas fa-trash-o"></i>
										</div></li>
									<li><span class="handle"> <i
											class="fas fa-ellipsis-v"></i> <i class="fas fa-ellipsis-v"></i>
									</span>
										<div class="icheck-primary d-inline ml-2"></div> <span
										class="text">Let theme shine like a star</span> <small
										class="badge badge-secondary"><i class="far fa-clock"></i>
											1 month</small>
										<div class="tools">
											<i class="fas fa-edit"></i> <i class="fas fa-trash-o"></i>
										</div></li>
								</ul>
							</div>
							<!-- /.tab-pane -->
						</div>
						<!-- /.tab-content -->
					</div>
					<!-- /.card-body -->
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
