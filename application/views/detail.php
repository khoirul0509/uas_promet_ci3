 
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Profile</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">User Profile</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-md-3">

            <!-- Profile Image -->
            <div class="card card-primary card-outline">
              <div class="card-body box-profile">
                <div class="text-center">
                  <img class="profile-user-img img-fluid img-circle"
                       src="<?php echo base_url('upload/').$u->foto ?>"
                       alt="User profile picture">
                </div>

                <h3 class="profile-username text-center"><?php echo $u->nama ?></h3>

               <?php if ($level == '1') { ?>
                <a href="<?php echo base_url('home/edit/'.$u->id_pegawai); ?>" class="btn btn-primary btn-block"><b>Update</b></a>
                 
               <?php } else { ?>
                 
                   <center><p>Data Pribadi</p></center>
              <?php } ?>
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->

            
            <!-- /.card -->
          </div>
          <!-- /.col -->
          <div class="col-md-9">
            <div class="card">
              <div class="card-header p-2">
                
              </div><!-- /.card-header -->
              <div class="card-body">
                <div class="tab-content">
                                   

                     
                    <!-- /.post -->
                  </div>
                  <!-- /.tab-pane -->
                  
                  <!-- /.tab-pane -->

                  <div class="tab-pane" id="settings">
                    <form class="form-horizontal">

                      <div class="form-group row">
                        <label for="inputName" class="col-sm-4 col-form-label">Nik</label>
                        <div class="col-sm-8">
                        <label for="inputName" class="col-sm-4 col-form-label">: <?php echo $u->nik ?></label>
                        </div>
                      </div>

                      <div class="form-group row">
                        <label for="inputName" class="col-sm-4 col-form-label">Name</label>
                        <div class="col-sm-8">
                        <label for="inputName" class="col-sm-4 col-form-label">: <?php echo $u->nama ?></label>
                        </div>
                      </div>

                      <div class="form-group row">
                        <label for="text" class="col-sm-4 col-form-label">Gelar Depan</label>
                        <div class="col-sm-8">
                         <label for="inputName" class="col-sm-4 col-form-label">: <?php echo $u->gelar_depan ?> </label>
                        </div>
                      </div>

                      <div class="form-group row">
                        <label for="text" class="col-sm-4 col-form-label">Gelar Belakang</label>
                        <div class="col-sm-8">
                         <label for="inputName" class="col-sm-4 col-form-label">: <?php echo $u->gelar_belakang ?> </label>
                        </div>

                      </div>
                      <div class="form-group row">
                       <label for="inputName" class="col-sm-4 col-form-label">Tempat Lahir</label>
                        <div class="col-sm-8">
                          <label for="inputName" class="col-sm-4 col-form-label">: <?php echo $u->tempat_lahir ?></label>
                        </div>

                      </div>
                      <div class="form-group row">
                        <label for="inputName" class="col-sm-4 col-form-label">Tanggal Lahir</label>
                        <div class="col-sm-8">
                          <label for="inputName" class="col-sm-4 col-form-label">: <?php echo $u->tgl_lahir ?></label>
                        </div>
                      </div>

                      <div class="form-group row">
                        <label for="inputName" class="col-sm-4 col-form-label">Jenis Kelamin</label>
                        <div class="col-sm-8">
                           <label for="inputName" class="col-sm-4 col-form-label">: <?php echo $u->jenis_kelamin ?></label>
                        </div>
                      </div>

                      <div class="form-group row">
                        <label for="inputName" class="col-sm-4 col-form-label">Status Kawin</label>
                        <div class="col-sm-8">
                           <label for="inputName" class="col-sm-4 col-form-label">: <?php echo $u->status_kawin ?></label>
                        </div>
                      </div>

                      <div class="form-group row">
                        <label for="inputName" class="col-sm-4 col-form-label">Agama</label>
                        <div class="col-sm-8">
                           <label for="inputName" class="col-sm-4 col-form-label">: <?php echo $u->agama ?></label>
                        </div>
                       </div>

                       <div class="form-group row">
                        <label for="inputName" class="col-sm-4 col-form-label">Alamat</label>
                        <div class="col-sm-8">
                           <label for="inputName" class="col-sm-6 col-form-label">: <?php echo $u->alamat ?> </label>
                        </div>
                       </div>

                       <div class="form-group row">
                        <label for="inputName" class="col-sm-4 col-form-label">Jenjang Pendidikan</label>
                        <div class="col-sm-8">
                           <label for="inputName" class="col-sm-4 col-form-label">: <?php echo $u->jenjang_pendidikan ?></label>
                        </div>
                       </div>

                       <div class="form-group row">
                        <label for="inputName" class="col-sm-4 col-form-label">Pendidikan</label>
                        <div class="col-sm-8">
                           <label for="inputName" class="col-sm-4 col-form-label">: <?php echo $u->pendidikan ?></label>
                        </div>
                       </div>

                       <div class="form-group row">
                        <label for="inputName" class="col-sm-4 col-form-label">Tanggal mulai kontrak awal</label>
                        <div class="col-sm-8">
                           <label for="inputName" class="col-sm-4 col-form-label">: <?php echo $u->tgl_mulai_kontrak_awal?></label>
                        </div>
                       </div>

                      <div class="form-group row">
                        <label for="inputName" class="col-sm-4 col-form-label">NO.SK Kontrak Awal</label>
                        <div class="col-sm-8">
                           <label for="inputName" class="col-sm-4 col-form-label">: <?php echo $u->no_kontrak_awal ?></label>
                        </div>
                      </div>

                      <div class="form-group row">
                        <label for="inputName" class="col-sm-4 col-form-label">Tanggal Akhir kontrak awal</label>
                        <div class="col-sm-8">
                           <label for="inputName" class="col-sm-4 col-form-label">: <?php echo $u->tgl_akhir_kontrak_awal ?></label>
                        </div>
                      </div>

                      <div class="form-group row">
                        <label for="inputName" class="col-sm-4 col-form-label">NPWP</label>
                        <div class="col-sm-8">
                           <label for="inputName" class="col-sm-4 col-form-label">: <?php echo $u->npwp ?></label>
                        </div>
                      </div>

                      <div class="form-group row">
                        <label for="inputName" class="col-sm-4 col-form-label">BPJS Ketenagakerjaan</label>
                        <div class="col-sm-8">
                           <label for="inputName" class="col-sm-4 col-form-label">: <?php echo $u->no_bpjs_tenagakerja ?></label>
                        </div>
                      </div>

                      <div class="form-group row">
                        <label for="inputName" class="col-sm-4 col-form-label">BPJS Kesehatan</label>
                        <div class="col-sm-8">
                           <label for="inputName" class="col-sm-4 col-form-label">: <?php echo $u->no_bpjs_kesehatan ?></label>
                        </div>
                      </div>

                      <div class="form-group row">
                        <label for="inputExperience" class="col-sm-4 col-form-label">Pekerjaan</label>
                        <div class="col-sm-8">
                           <label for="inputName" class="col-sm-4 col-form-label">: <?php echo $u->pekerjaan ?></label>
                        </div>
                      </div>

                      <div class="form-group row">
                        <label for="inputExperience" class="col-sm-4 col-form-label">Unit Kerja</label>
                        <div class="col-sm-8">
                          <label for="inputName" class="col-sm-4 col-form-label">: <?php echo $u->kdunor ?></label></input>
                        </div>
                      </div>


                      <div class="form-group row">
                        <label for="inputExperience" class="col-sm-4 col-form-label">Status Kontrak</label>
                        <div class="col-sm-8">
                          <label for="inputName" class="col-sm-4 col-form-label">: <?php echo $u->status_kontrak ?></label></input>
                        </div>
                      </div>

                      <!-- <div class="form-group row">
                        <div class="offset-sm-4 col-sm-8">
                          <button type="submit" class="btn btn-danger">Submit</button>
                        </div>
                      </div> -->
                    </form>
                  </div>
                  <!-- /.tab-pane -->
                </div>
                <!-- /.tab-content -->
              </div><!-- /.card-body -->
            </div>
            <!-- /.nav-tabs-custom -->
          </div>
          <!-- /.col -->
        </div>
        <!-- /.row -->
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
  