<?php 
?>
<div class="container-fluid">
	<div class="row">
		<div class="col-lg-12">
			<button class="btn btn-primary float-right btn-sm" id="new_user"><i class="fa fa-plus"></i> New user</button>
		</div>
	</div>
	<br>
	<div class="row">
		<div class="card col-lg-12">
			<div class="card-body">
				
				<table class="table-striped table-bordered col-md-12">
					
						<thead>
						
						<tr>
							<th class="text-center">No</th>
							<th class="text-center">Name</th>
							<th class="text-center">Username</th>
							<th class="text-center">Action</th>
						</tr>
					
						</thead>
						<tbody>
							<center>
								<?php
									include 'db_connect.php';
									$users = $conn->
								query("SELECT * FROM users order by name asc"); $i = 1; while($row= $users->fetch_assoc()): ?>
								<tr>
									<td class="text-center">
										<?php echo $i++ ?></td>
									<td class="text-center">
										<?php echo $row['name'] ?></td>
									<td class="text-center">
										<?php echo $row['username'] ?></td>
									<td class="text-center">
										
										<div class="btn-group">
											<button type="button" class="btn btn-primary" style="background-color: #71b5ff;">Action</button>
											<button type="button" class="btn btn-primary dropdown-toggle dropdown-toggle-split" style="background-color: #71b5ff;" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
											<span class="sr-only" style="background-color: #71b5ff;">Toggle Dropdown</span>
											</button>
											<div class="dropdown-menu">
												<a class="dropdown-item edit_user" href="javascript:void(0)" data-id ='' '<?php echo $row['id'] ?>'>Edit</a>
												<div class="dropdown-divider"></div>
												<a class="dropdown-item delete_user" href="javascript:void(0)" data-id ='' '<?php echo $row['id'] ?>'>Delete</a>
											</div>
										</div>
									
									</td>
								</tr>
								<?php endwhile; ?>
							</center>
						</tbody>
					
				</table>	
			</div>
		</div>
	</div>
</div>
<script>
$('#new_user').click(function(){
	uni_modal('New User','manage_user.php')
})
$('.edit_user').click(function(){
	uni_modal('Edit User','manage_user.php?id='+$(this).attr('data-id'))
})
</script>