<style>@page { size: A4 }</style>

<!-- begin #content -->
<div id="content" class="content">
	<!-- begin breadcrumb -->
	<ol class="breadcrumb hidden-print pull-right">
		<li class="breadcrumb-item"><a href="<?php echo base_url(); ?>">Dashboard</a></li>
		<li class="breadcrumb-item"><a href="<?php echo base_url(); ?>rents">All Rent</a></li>
		<li class="breadcrumb-item active">Invoice</li>
	</ol>
	<!-- end breadcrumb -->
	<!-- begin page-header -->
	<h1 class="page-header hidden-print">
		Invoice#<?php echo $invoice_number; ?>
	</h1>
	<!-- end page-header -->
	<?php $tenant_id = $this->db->get_where('tenant_rent', array('invoice_number' => $invoice_number))->row()->tenant_id; ?>
	<!-- begin invoice -->
	<div class="invoice print-body">
        <!-- begin invoice-company -->
        <div class="invoice-company text-inverse f-w-600">
            <span class="pull-right hidden-print">
	            <a href="javascript:;" onclick="window.print()" class="btn btn-sm btn-white m-b-10 p-l-5 hidden-print">
					<i class="fa fa-print t-plus-1 fa-fw fa-lg"></i> Print
				</a>
            </span>
            <?php echo html_escape($this->db->get_where('setting', array('name' => 'tagline'))->row()->content); ?>
        </div>
        <!-- end invoice-company -->
        <!-- begin invoice-header -->
        <div class="invoice-header">
            <div class="invoice-from">
                <small>from</small>
                <address class="m-t-5 m-b-5">
                    <strong class="text-inverse">
						<?php echo html_escape($this->db->get_where('setting', array('name' => 'system_name'))->row()->content); ?>
					</strong><br />
                    <?php echo $this->db->get_where('setting', array('name' => 'address'))->row()->content; ?>
                </address>
            </div>
            <div class="invoice-to">
                <small>to</small>
                <address class="m-t-5 m-b-5">
                    <strong class="text-inverse">
						<?php echo $this->db->get_where('tenant_rent', array('invoice_number' => $invoice_number))->row()->tenant_name; ?>
					</strong><br />
                    <?php echo $this->db->get_where('tenant', array('tenant_id' => $tenant_id))->row()->work_address; ?>
                </address>
            </div>
            <div class="invoice-date">
                <small>Invoice / <?php echo $this->db->get_where('tenant_rent', array('invoice_number' => $invoice_number))->row()->month; ?> period</small>
                <div class="date text-inverse m-t-5">
					#<?php echo $invoice_number; ?>
				</div>
                <div class="invoice-detail">
					Due Date: <b><?php echo date('d M, Y', $this->db->get_where('tenant_rent', array('invoice_number' => $invoice_number))->row()->due_date); ?></b>
                    <br />
                    Status:
					<?php
						if ($this->db->get_where('tenant_rent', array('invoice_number' => $invoice_number))->row()->status)
							echo '<b>Paid</b>';
						else if ($this->db->get_where('tenant_rent', array('invoice_number' => $invoice_number))->row()->status)
							echo '<b>Partially Paid</b>';
						else
							echo '<b>Due</b>';
					?>
                </div>
            </div>
        </div>
        <!-- end invoice-header -->
        <!-- begin invoice-content -->
        <div class="invoice-content">
        	<!-- begin table-responsive -->
            <div class="table-responsive">
                <table class="table table-invoice">
                    <thead>
                        <tr>
                            <th>DESCRIPTION</th>
                            <th class="text-center" width="10%">MONTH</th>
                            <th class="text-center" width="10%">YEAR</th>
                            <th class="text-right" width="20%">ROW TOTAL</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><span class="text-inverse">Monthly Rent</span></td>
                            <td class="text-center"><?php echo $this->db->get_where('tenant_rent', array('invoice_number' => $invoice_number))->row()->month; ?></td>
                            <td class="text-center"><?php echo $this->db->get_where('tenant_rent', array('invoice_number' => $invoice_number))->row()->year; ?></td>
                            <td class="text-right">
								<?php echo $this->db->get_where('setting', array('name' => 'currency'))->row()->content; ?>
								<?php echo $rent = $this->db->get_where('tenant_rent', array('invoice_number' => $invoice_number))->row()->amount; ?>
							</td>
                        </tr>
						<?php if ($this->db->get_where('tenant_rent', array('invoice_number' => $invoice_number))->row()->advance): ?>
                        <tr>
                            <td><span class="text-inverse">Advance</span></td>
                            <td class="text-center"><?php echo $this->db->get_where('tenant_rent', array('invoice_number' => $invoice_number))->row()->month; ?></td>
                            <td class="text-center"><?php echo $this->db->get_where('tenant_rent', array('invoice_number' => $invoice_number))->row()->year; ?></td>
                            <td class="text-right">
								<?php echo $this->db->get_where('setting', array('name' => 'currency'))->row()->content; ?>
								<?php echo $advance = $this->db->get_where('tenant_rent', array('invoice_number' => $invoice_number))->row()->advance; ?>
							</td>
                        </tr>
                         <tr>
                            <td><span class="text-inverse">Remaining</span></td>
                            <td class="text-center"><?php echo $this->db->get_where('tenant_rent', array('invoice_number' => $invoice_number))->row()->month; ?></td>
                            <td class="text-center"><?php echo $this->db->get_where('tenant_rent', array('invoice_number' => $invoice_number))->row()->year; ?></td>
                            <td class="text-right">
								<?php echo $this->db->get_where('setting', array('name' => 'currency'))->row()->content; ?>
								<?php echo $rent - $advance; ?>
							</td>
                        </tr>
						<?php
							else:
								$advance = 0;
							endif;
						?>
                    </tbody>
                </table>
            </div>
        	<!-- end table-responsive -->
        	<!-- begin invoice-price -->
            <div class="invoice-price">
                <div class="invoice-price-left">
                    <div class="invoice-price-row">
                        <div class="sub-price">
                            <small>SUBTOTAL</small>
                            <span class="text-inverse">
								<?php echo $this->db->get_where('setting', array('name' => 'currency'))->row()->content; ?>
								<?php echo $rent; ?>
							</span>
                        </div>
                    </div>
                </div>
                <div class="invoice-price-right">
                    <small>TOTAL</small>
					<span class="f-w-600">
						<?php echo $this->db->get_where('setting', array('name' => 'currency'))->row()->content; ?>
						<?php echo $rent; ?>
					</span>
                </div>
            </div>
        	<!-- end invoice-price -->
        </div>
        <!-- end invoice-content -->
    </div>
	<!-- end invoice -->
</div>
<!-- end #content -->

<style>
	@media print {
		.hidden-print {
			display: none;
		}

		.invoice-header {
		  	display: grid;
		  	grid-template-columns: 1fr 1fr 1fr;
		}
		.invoice-to {
			margin-top: 0 !important;
			text-align: center !important;
		}
		.invoice-date {
			margin-top: 0 !important;
			text-align: right !important;
		}

		.invoice-price {
			display: grid;
			grid-template-columns: repeat(4, 1fr);
			grid-gap: 10px;
			grid-auto-rows: 100px;
			grid-template-areas:
			"a a a a b b b b"
			"c c c c d d d d";
			align-items: end;
		}
		.invoice-price-left {
			grid-area: b;
		}
		.invoice-price-right {
			grid-area: d;
		}
	}
</style>
