<?php 
require_once 'dbkoneksi.php';
?>
<?php 
   if(isset($_GET['iddel'])){
      $ar_data[]=$_GET['iddel'];// ? 
        $sql = "DELETE FROM pesanan WHERE id=?";
   } else {
        $_namapelanggan = $_POST['namapelanggan'];
        $_tanggal = $_POST['tanggal'];
        $_produk_id = $_POST['produk_id'];
        $_quantity = $_POST['quantity'];
        $_proses = $_POST['proses'];

      // array data
        $ar_data[]=$_namapelanggan;
        $ar_data[]=$_tanggal;
        $ar_data[]=$_produk_id;
        $ar_data[]=$_quantity;

      if($_proses == "Simpan"){
      // data baru
      $sql = "INSERT INTO pesanan (namapelanggan, tanggal, produk_id, quantity) VALUES (?,?,?,?)";
      }else if($_proses == "Update"){
      $ar_data[]=$_POST['idedit'];// ? 5
      $sql = "UPDATE pesanan SET namapelanggan=?,tanggal=?,produk_id=?,quantity=? WHERE id=?";
      } 
   }
   
   if(isset($sql)){
    $st = $dbh->prepare($sql);
    $st->execute($ar_data);
   }
   echo "<script>alert('Pesanan Anda Berhasil Disimpan');window.location='home.php'</script>";
?>