
<?php include 'head.php';

if(empty($id=$_SESSION['id'])){ ?>
  <script>window.location.href='index.php'</script>
<?php }else{
$result=tampilpendaftar($id);
$result1=tampildataortu($id);
$result2=tampilpendidikan($id);
$result3=tampildok($id);
?>


<style>

    
 .btn-primary.btn-lg-petunjuk{
  background: #FFA500;
        padding: 10px;
        color: white;
 }
    .block-web.success-box {
        background:#fcf080;
        padding: 10px;
         color: black; 
    }
    
    .header {
        background: #87ceeb;
        padding: 10px;
        margin-top: 10%;
        color: white;
    }
    
    .navbar {
        margin-bottom: 0;
    }
    
    .daftar {
        background-color: skyblue
    }
    
    #kepada {
        background-color:#fcf080;
    }

    .konfirm{
      background:#fcf080;
    }
</style>

<div class="container" style="center">
    <div class="col-md-6">
        <div class="header" >
            <h3>Informasi</h3>
        </div>
        <div class="block-web success-box">

            <div class="porlets-content">
                <?php while ($row=mysqli_fetch_array($result)) { ?>

                <p style="font-weight:bold">Yth Sdr-i.
                    <?php echo strtoupper($row['nama_lengkap']) ?>
                </p>

                <p>Selamat, Anda telah berhasil melakukan Aktivasi Pengisian Formulir. Silahkan lengkapi data lainnya.</p>
                <p>Pertanyaan dan Informasi, silahkan kontak Sekolah di info@smkwikrama1garut.sch.id (0262) 2802880 atau +62 856-93445-665</p>
            </div>
        </div>

    
        <div class="header">
            <h3>Progress Pengisian Blanko (Formulir)</h3>
        </div>
        <div class="block-web primary-box">

            <div class="porlets-content">

                <li class="list-group-item">
                <?php if($_SESSION['status']==1){ ?>
                    <a class="btn btn-success btn-block "><span class="glyphicon glyphicon-ok"></span>
                        ORANG TUA
                    </a>
                <?php }else{?>
                      <a href="orangtua.php" class="btn btn-primary btn-block ">
                        ORANG TUA
                    </a>
                <?php } ?>
                </li>

                <li class="list-group-item">
                <?php

                 if($_SESSION['statusdidik']==1){ ?>
                    <a class="btn btn-success btn-block "><span class="glyphicon glyphicon-ok"></span>
                       PENDIDIKAN
                    </a>
                <?php }else{?>
                    <a class="btn btn-primary btn-block ">
                        PENDIDIKAN
                    </a>
                <?php } ?>
                </li>

                <li class="list-group-item">
                <?php if($_SESSION['statusdok']==1){ ?>
                    <a class="btn btn-success btn-block "><span class="glyphicon glyphicon-ok"></span>
                      DOKUMEN
                    </a>
                <?php }else{?>
                    <a href="dokumen.php" class="btn btn-primary btn-block ">
                        DOKUMEN
                    </a>
                <?php } ?>
                </li>
               
        
            </div>
        </div>
    </div>

<?php } ?>
</form></div></div><br><br><br>
    <?php } include 'foot.php'; ?>

   