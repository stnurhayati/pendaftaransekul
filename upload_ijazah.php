<?php include 'head.php'; 

if(isset($_POST['simpanijazah'])){
  $id_pendaftar=$_SESSION['id'];

  $nama   = $_FILES['rapot']['name'];
  $size   = $_FILES['rapot']['size'];
  $error  = $_FILES['rapot']['error'];
  $asal = $_FILES['rapot']['tmp_name'];
  
  $lokasi_foto="img/dokumen/ijazah/" . $nama;
  $format = pathinfo($nama, PATHINFO_EXTENSION);

  if($error === 0){

    if ($size > 9000){ 
    
          if($format === "jpg" || $format === "png" || $format === "JPG" || $format === "PNG" ){
            
            if(simpanijazah($id_pendaftar,$lokasi_foto)){
              echo "<script>window.location.href='dokumen.php'</script>";
              }else{
                echo mysqli_error($konek);
              } 
    
            move_uploaded_file($asal, "img/dokumen/ijazah/".$nama);
          }else{
            echo "Maaf format filenya harus jpg/png ";
          }
    
      }else{
        echo "file terlalu besar";
      }
  }else "Ada kesalahan saat upload";
}

?>