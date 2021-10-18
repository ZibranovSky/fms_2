<style>
	
</style>

<nav id="sidebar" class='mx-lt-5' style="background-color:#e7e7e7;" >
	<div class="sidebar-list">
			<a href="index.php?page=home" class="nav-item nav-home" style="background-color:#cdcdcd;"><span class='icon-field' style="margin-right:20px;"><i class="fa fa-home"></i></span> Home</a>
			<a href="index.php?page=files" class="nav-item nav-files" style="background-color:#cdcdcd;"><span class='icon-field' style="margin-right:25px;"><i class="fa fa-file"></i></span> Manage Files</a>
			<?php if($_SESSION['login_type'] == 1): ?>
				<a href="index.php?page=users" class="nav-item nav-users" style="background-color:#cdcdcd;"><span class='icon-field' style="margin-right:20px;"><i class="fa fa-users"></i></span> Users</a>
			<?php endif; ?>
	</div>
</nav>
<script>
	$('.nav-<?php echo isset($_GET['page']) ? $_GET['page'] : '' ?>').addClass('active')
</script>