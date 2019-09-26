<style type="text/css">
	.flexigrid div.bDiv td div .tools{
		float: right;
	}
</style>
<?php 

	$column_width = (int)(80/count($columns));
	
	if(!empty($list)){
?><div class="bDiv" >
		<table cellspacing="0" cellpadding="0" border="0" id="flex1">
		<thead>
			<tr class='hDiv'>
				<th align="center" abbr="no" axis="col1" class="" width='3%'>
					<div class="text-center">No</div></th>
				<?php foreach($columns as $column){?>
				<th width='<?php echo $column_width?>%'>
					<div class="text-center field-sorting <?php if(isset($order_by[0]) &&  $column->field_name == $order_by[0]){?><?php echo $order_by[1]?><?php }?>" 
						rel='<?php echo $column->field_name?>'>
						<?php echo $column->display_as?>
					</div>
				</th>
				<?php }?>
				<?php if(!$unset_delete || !$unset_edit || !$unset_read || !empty($actions)){?>
				<th align="left" abbr="tools" axis="col1" class="" width='17%'>
					<div class="text-center">
						<?php echo $this->l('list_actions'); ?>
					</div>
				</th>
				<?php }?>
			</tr>
		</thead>		
		<tbody>
<?php 
		$no = 1;
		foreach($list as $num_row => $row){ ?>        
		<tr  <?php if($num_row % 2 == 1){?>class="erow"<?php }?>>
			<td align="center">
				<div class="text-center"><?php echo $no++; ?></div></th>
			<?php foreach($columns as $column){?>
			<td width='<?php echo $column_width?>%' class='<?php if(isset($order_by[0]) &&  $column->field_name == $order_by[0]){?>sorted<?php }?>'>
				<div class='text-left'><?php echo $row->{$column->field_name} != '' ? $row->{$column->field_name} : '&nbsp;' ; ?></div>
			</td>
			<?php }?>
			<?php if(!$unset_delete || !$unset_edit || !$unset_read || !empty($actions)){?>
			<center><td align="center" width='20%' >
				<div class='tools text-center' float="center">
					<?php 
					if(!empty($row->action_urls)){
						foreach($row->action_urls as $action_unique_id => $action_url){ 
							$action = $actions[$action_unique_id];
					?>	
					<!-- class="<?php echo $action->css_class; ?> crud-action"  -->
							<a href="<?php echo $action_url; ?>" title="<?php echo $action->label?>"><?php 
								if(!empty($action->image_url))
								{
									?><button type="button" class="btn btn-default" float="right">
										<img src="<?php echo $action->image_url; ?>" alt="<?php echo $action->label?>" width="20px"/>
									</button><?php 	
								}
							?></a>		
					<?php }
					}
					?>					
                    <?php if(!$unset_edit){?>
						<a href='<?php echo $row->edit_url?>' data-toggle="popover" data-trigger="hover" title='<?php echo $this->l('list_edit')?> <?php echo $subject?>' class="edit_button">
						<button type="button" class="btn btn-primary" style="background: #70B859;" data-toggle="popover"><span class='fa fa-pencil'></span></button></a>
					<?php }?>
					<?php if(!$unset_read){?>
						<a href='<?php echo $row->read_url?>' data-toggle="popover" data-trigger="hover" title='<?php echo $this->l('list_view')?> <?php echo $subject?>'>
						<button type="button" class="btn btn-primary" style="background: #25668F;" data-toggle="popover"><span class='fa fa-eye'></span></button></a>
					<?php }?>
					<?php if(!$unset_delete){?>
                    	<a href='<?php echo $row->delete_url?>' title='<?php echo $this->l('list_delete')?> <?php echo $subject?>' class="delete-row">
                    	<button type="button" class="btn btn-primary" float="right" style="background: #E9594D;" data-toggle="popover"><span class='fa fa-trash-o'></span></button></a>
                    <?php }?>				
                    <div class='clear'></div>
				</div>
			</td></center>
			<?php }?>
		</tr>
<?php } ?>        
		</tbody>
		</table>
	</div>
<?php }else{?>
	<br/>
	&nbsp;&nbsp;&nbsp;&nbsp; <?php echo $this->l('list_no_items'); ?>
	<br/>
	<br/>
<?php }?>	
<script type="text/javascript">
$(document).ready(function(){
    $('[data-toggle="popover"]').popover({
        placement : 'top',
        trigger : 'hover'
    });
});
</script>
