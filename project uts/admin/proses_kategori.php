<?php 
require_once '../dbkoneksi.php';
?>
<?php 
   if(isset($_GET['iddel'])){
      $ar_data[]=$_GET['iddel'];// ? 
        $sql = "DELETE FROM produk WHERE id=?";
   } else {
        $_nama_kategori = $_POST['nama_kategori'];
        $_proses = $_POST['proses'];

      // array data
        $ar_data[]=$_nama_kategori;

      if($_proses == "Simpan"){
      // data baru
      $sql = "INSERT INTO kategori (nama_kategori) VALUES (?)";
      }else if($_proses == "Update"){
      $ar_data[]=$_POST['idedit'];// ? 5
      $sql = "UPDATE kategori SET nama_kategori=? WHERE id=?";
      } 
   }
   
   if(isset($sql)){
    $st = $dbh->prepare($sql);
    $st->execute($ar_data);
   }
   echo '<meta http-equiv="refresh" content="0;url=daftar_kategori.php">'
?>