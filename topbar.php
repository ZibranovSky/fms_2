<style>
	.logo {
    margin: auto;
    font-size: 20px;
    background: white;
    padding: 5px 11px;
    border-radius: 50% 50%;
    color: #000000b3;
}
</style>

<nav class="navbar navbar-dark fixed-top " style="padding:0; background-color:#55a7ff;">
  <div class="container-fluid mt-2 mb-2">
  	<div class="col-lg-12">
  		<div class="col-md-2 float-left" style="display: flex;color:white;">
		  Administrator
  			<!-- <div class="logo">
  				<i class="fa fa-share-alt"></i>
  			</div> -->
  		</div>
	  	<div class="col-md-2 float-right" >
	  		<a href="ajax.php?action=logout" style="color:white;"><?php echo $_SESSION['login_name'] ?> <i class="fa fa-power-off"></i></a>
	    </div>
    </div>
  </div>
  
</nav>