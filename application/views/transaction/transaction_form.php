<?php
$this->load->view('template/head');
$this->load->view('template/topbar');
$this->load->view('template/sidebar');
?>


<!-- Content Header (Page header) -->
<section class="content-header">
    <h1>
        Data Transaction
    </h1>
    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Transaction</li>
    </ol>
</section>

<!-- Main content -->
<section class="content">
    
    <div class="box" style="padding : 15px">
        <h2 style="margin-top:0px"><?php echo $button ?> Transaction </h2>
        <form action="<?php echo $action; ?>" method="post">
	    <div class="form-group">
            <label for="varchar">Transaction Status <?php echo form_error('transaction_status') ?></label>       
            <br>
            <input list="transaction_status" name="transaction_status">
            <datalist id="transaction_status">
            <option value="Isi Detail">
            <option value="Tunggu Pembayaran">
            <option value="Konfirmasi Pembayaran">
            <option value="Barang dikirim">
            <option value="Barang diterima">
          </datalist>
        </div>
	    <div class="form-group">
            <label for="datetime">Transaction Time <?php echo form_error('transaction_time') ?></label>
            <input type="text" class="form-control" name="transaction_time" id="transaction_time" placeholder="Transaction Time" value="<?php echo $transaction_time; ?>" />
        </div>
	    <div class="form-group">
            <label for="int">User ID <?php echo form_error('user_ID') ?></label>
            <input type="text" class="form-control" name="user_ID" id="user_ID" placeholder="User ID" value="<?php echo $user_ID; ?>" />
        </div>
	    <div class="form-group">
            <label for="varchar">Destination Address <?php echo form_error('destination_address') ?></label>
            <input type="text" class="form-control" name="destination_address" id="destination_address" placeholder="Destination Address" value="<?php echo $destination_address; ?>" />
        </div>
	    <div class="form-group">
            <label for="information">Information <?php echo form_error('information') ?></label>
            <textarea class="form-control" rows="3" name="information" id="information" placeholder="Information"><?php echo $information; ?></textarea>
        </div>
        
      
	    <input type="hidden" name="transaction_ID" value="<?php echo $transaction_ID; ?>" /> 
	    <button type="submit" class="btn btn-primary"><?php echo $button ?></button> 
	    <a href="<?php echo site_url('transaction') ?>" class="btn btn-success">Cancel</a>
	</form>
    </div>
</section>


<?php
$this->load->view('template/js');
$this->load->view('template/foot');

?>
