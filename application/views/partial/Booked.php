<div class="content-wrapper"><!-- Content wrapper -->
    <!-- Content area -->
    <div class="content">
        <div class="row">
            <div class="row">
                    <div class="col-md-10 col-md-offset-1">
                    <?php if($this->session->flashdata('addFromValErr')){ ?>
                        <div class="alert bg-danger alert-styled-left">
                            <button type="button" class="close" data-dismiss="alert"><span>&times;</span><span class="sr-only">Close</span></button>
                            <span class="text-semibold"> Opps! </span><?php echo $this->session->flashdata('addFromValErr'); ?>
<!--                            Name of the Vehicle and Vehicle Description should not be empty.-->
                        </div>
                    <?php }?>
                        <?php if($this->session->flashdata('addFromSucc')){ ?>
                            <div class="alert bg-success alert-styled-left">
                                <button type="button" class="close" data-dismiss="alert"><span>&times;</span><span class="sr-only">Close</span></button>
                                <span class="text-semibold">Well done!</span> You successfully added a vehicle in the record.
                            </div>
                        <?php } ?>
                    </div>
            </div>
            <!-- Basic datatable -->
					<div class="panel panel-flat">
						<div class="panel-heading">
							<h5 class="panel-title">Booked Hotels</h5>
							<div class="heading-elements">
								<ul class="icons-list">
			                		<li><a data-action="collapse"></a></li>
			                		<li><a data-action="reload"></a></li>
			                		<li><a data-action="close"></a></li>
			                	</ul>
		                	</div>
						</div>

						<div class="panel-body">
							</div>

						<table class="table datatable-basic">
							<thead>
								<tr>
									<th>Hotel Name</th>
									<th>Hotel City </th>
									<th>User Name</th>
									<th>Mail</th>
									<th>Nights </th>
									<th>Total</th>
								</tr>
							</thead>
							<tbody>
							 <?php
							 if($bookedData){
			                    foreach ($bookedData as $row)
			                    {?>
								<tr>
									<td><?php echo $row['h_name'];?></td>
									<td><a href="#"><?php echo $row['city'];?></a></td>
									<td><?php echo $row['name'];?></td>
									<td><?php echo $row['mail'];?></td>
									<td><?php echo $row['nights'];?></td>
									<td><?php echo $row['grand'];?></td>
									
								</tr>
								
							<?php }
								}
							?>
								
							</tbody>
						</table>
					</div>
					<!-- /basic datatable -->

        </div>
    </div>
</div>
