<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <title>Dashboard 1 | Zircos - Responsive Bootstrap 4 Admin Dashboard</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta content="Responsive bootstrap 4 admin template" name="description" />
    <meta content="Coderthemes" name="author" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    
    <?php include('includes/head.php') ?>
   <style>
       .option-target.hidden {
            display: none;
        }
   </style>


</head>

<body>
    <!-- Begin page -->
    <div id="wrapper">

        <?php include('includes/header.php') ?>
        <!-- ============================================================== -->
        <!-- Start Page Content here -->
        <!-- ============================================================== -->

        <div class="content-page">
            <div class="content">

                <!-- Start Content-->
                <div class="container-fluid">

                    <!-- start page title -->
                    <div class="row">
                        <div class="col-12">
                            <div class="page-title-box">
                                <div class="page-title-right">
                                    <ol class="breadcrumb m-0">
                                        <li class="breadcrumb-item"><a href="javascript: void(0);">Admin</a></li>
                                        <li class="breadcrumb-item"><a href="javascript: void(0);">Dashboard </a></li>
                                        <li class="breadcrumb-item active">Add Supplier Master</li>
                                    </ol>
                                </div>
                                <h4 class="page-title">Add Supplier Master</h4>
                            </div>
                        </div>
                    </div>
                    <!-- end page title -->

    

                    <div class="row">
                        <div class="col-xl-12">
                            <div class="card-box">
                                <!--<h4 class="header-title mb-4">Add Supplier</h4>-->
                                <?php if(!empty($this->session->flashdata('Success'))){ ?>
                                    <div class="alert alert-success" role="alert">  
                                        <i class="fa fa-check" aria-hidden="true"></i>&nbsp; <?= $this->session->flashdata('Success') ?>  
                                    </div>
                                <?php }else if(!empty($this->session->flashdata('Error'))){ ?>
                                    <div class="alert alert-danger" role="alert">  
                                        <?= $this->session->flashdata('Error') ?>
                                    </div>
                                <?php } ?>

                                <form action="<?= base_url('supplier'); ?>" id="supplier_add" method="POST" enctype="multipart/form-data" data-parsley-validate novalidate >

                                    <div class="row">
                                        <div class="col-md-12">
                                            <h4 class="header-title mb-4">Supplier Master</h4>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group row">
                                                <label class="col-md-2 control-label">Ledger</label>
                                                <div class="col-md-10">
                                                    <input class="form-control" type="text" name="ledger" id="ledger" parsley-trigger="change" required  value="">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group row">
                                                <label class="col-md-2 control-label">Group</label>
                                                <div class="col-md-10">
                                                    <select class="form-control " name="group" id="group" parsley-trigger="change" required="">
                                                        <option value="Sundry Creditors" >Sundry Creditors</option>
                                                        <option value="Sundry Creditors1" >Sundry Creditors1</option>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group row">
                                                <label class="col-md-2 control-label">Desktop A/C code</label>
                                                <div class="col-md-10">
                                                    <input class="form-control" type="text" name="desktop_code" id="desktop_code" parsley-trigger="change" required  value="">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group row">
                                                <label class="col-md-2 control-label">Vendor</label>
                                                <div class="col-md-10">
                                                    <select class="form-control " name="vendor" id="vendor" parsley-trigger="change" required="">
                                                        <option value="No">No</option>
                                                        <option value="Yes">Yes</option>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="yes" class="option-target hidden">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group row">
                                                <label class="col-md-2 control-label">Partner Login Id</label>
                                                <div class="col-md-10">
                                                    <input class="form-control" type="text" name="partner_login_id" id="partner_login_id" parsley-trigger="change" required  value="">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group row">
                                                <label class="col-md-2 control-label">Login Password</label>
                                                <div class="col-md-10">
                                                    <input class="form-control" type="text" name="login_password" id="login_password" parsley-trigger="change" required  value="">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-12">
                                            <h4 class="header-title mb-4">Address Information</h4>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="form-group row">
                                                <label class="col-md-1 control-label">Address</label>
                                                <div class="col-md-11">
                                                    <input class="form-control" type="text" name="address" id="address" required placeholder="Name" value="">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group row">
                                                <label class="col-md-3 control-label">City</label>
                                                <div class="col-md-9">
                                                    <input class="form-control" type="text" name="city" id="city" required  value="">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group row">
                                                <label class="col-md-3 control-label">Pin code</label>
                                                <div class="col-md-9">
                                                    <input class="form-control" type="text" name="pincode" id="pincode" required  value="">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group row">
                                                <label class="col-md-3 control-label">State</label>
                                                <div class="col-md-9">
                                                    <input class="form-control" type="text" name="state" id="state" required  value="">
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-12">
                                            <h4 class="header-title mb-4">Contact Information</h4>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group row">
                                                <label class="col-md-2 control-label">Name</label>
                                                <div class="col-md-10">
                                                    <input class="form-control" type="text" name="name" id="name" required placeholder="Name" value="">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group row">
                                                <label class="col-md-2 control-label">Email</label>
                                                <div class="col-md-10">
                                                    <input class="form-control" type="email" name="email" id="email" required placeholder="Email" value="">
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="form-group account-btn text-center mt-2">
                                        <div class="col-12">
                                            <button class="btn width-md btn-bordered btn-danger waves-effect waves-light" type="submit">Submit</button>
                                        </div>
                                    </div>
                                    <br><br>
                                </form>
                                
                            </div>
                            <!-- end card -->
                        </div>
                        <!-- end col -->


                    </div>
                    <!-- end row -->

                </div>
                <!-- end container-fluid -->

            </div>
            <!-- end content -->


            <?php include('includes/footer.php') ?>

        </div>

        <!-- ============================================================== -->
        <!-- End Page content -->
        <!-- ============================================================== -->

    </div>
    <!-- END wrapper -->


    <?php include('includes/right_sidebar.php') ?>
    <?php include('includes/scripts.php') ?>
    <script>
        (function(){
          // Opt-in to Bootstrap functionality
          $('[data-toggle="tooltip"]').tooltip();
          $('[data-toggle="popover"]').popover();
          // Create variables
          var optionsList = document.getElementById('vendor'),
              allTargets = $('.option-target'),
              currentOption,
              currentTarget;
          // Create Hide and Show Functionality
          function hideShowTargets(){
            allTargets.each(function(){
              this.classList.add('hidden');
            });
            currentOption = optionsList.value;
            currentTarget = document.getElementById(currentOption);
            if(currentTarget){
              currentTarget.classList.remove('hidden');
            }
          }
          // Add event listener
          optionsList.addEventListener('change', hideShowTargets);
        })();
    </script>

</body>

</html>