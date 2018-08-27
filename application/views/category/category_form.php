<?php
$this->load->view('template/head');
$this->load->view('template/topbar');
$this->load->view('template/sidebar');
?>


<!-- Content Header (Page header) -->
<section class="content-header">
    <h1>
        Data Category
    </h1>
    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Category</li>
    </ol>
</section>

<!-- Main content -->
<section class="content">
    
    <div class="box" style="padding : 15px">
        <h2 style="margin-top:0px"><?php echo $button ?> Category </h2>
        <form action="<?php echo $action; ?>" method="post">
	    <div class="form-group">
            <label for="varchar">Category Name <?php echo form_error('category_name') ?></label>
            <input type="text" class="form-control" name="category_name" id="category_name" placeholder="Category Name" value="<?php echo $category_name; ?>" required/>
        </div>
	    <div class="form-group">
            <label for="varchar">Category Type <?php echo form_error('category_type') ?></label>
            <select class="form-control" name="category_type" id="category_type" required>
                <?php
                    echo "<option>- Pilih Category Type -</option>";
                    $data = $category_type['list'];
                    for ($i=0; $i < sizeof($data); $i++) { 

                        echo "<option ";
                        if( $data[$i] == ($category_type['checked']) ) {
                            echo "selected";
                        };

                        echo " value='".$data[$i]."'>".$data[$i]."</option>";
                    }
                ?>
            </select>
        </div>
	    <input type="hidden" name="category_ID" value="<?php echo $category_ID; ?>" /> 
	    <button type="submit" class="btn btn-primary"><?php echo $button ?></button> 
	    <a href="<?php echo site_url('category') ?>" class="btn btn-success">Cancel</a>
	</form>
    </div>
</section>


<?php
$this->load->view('template/js');
$this->load->view('template/foot');

?>
