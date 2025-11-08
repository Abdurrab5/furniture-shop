<?php
require('head.php');
session_start();
$cat_res=mysqli_query($link,"select * from categories where status=1 order by categories asc");
$cat_arr=array();
while($row=mysqli_fetch_assoc($cat_res)){
	$cat_arr[]=$row;	
}
?>

 <div class="container">
	 <?php
										foreach($cat_arr as $list){
											?>
											<a  class="btn btn-primary"href="categ.php?pid=<?php echo $list['cat_id']?>"><?php echo $list['categories']?></a>
											<?php
										}
										?></div>
	  <div class="order">
	   <div class="row">
		  <div class="col-xl-12">
			 <div class="card">
				<div class="card-body">
							<?php
							$get_product=mysqli_query($link,"select * from products where status=1");
							foreach($get_product as $list){
							?>
                           <div class="col-md-12">
                            <div style="border:1px solid #333; background-color:#f1f1f1; border-radius:5px; padding:20px;" align="center">
                               
                                  <a href="addtocart.php?id=<?php echo $list['p_id']?>">
       <img src="<?php echo PRODUCT_IMAGE_SITE_PATH.$list['image']?>" alt="product images">
                             </a>           
                                   
                                    
                                  
                                       
                                            <h4 class="text-info"><?php echo $list['title']?></h4 >
                                            <h4 class="btn btn-danger">price#<?php echo $list['price']?></h4 >
											
                                        </div>
                            </div>
							<?php } ?>
                        </div>
        </div>
                </div>
            </div>
        </div>
         </div>
        				
