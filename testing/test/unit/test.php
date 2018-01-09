<?php
include "connect.php";
class olahdata
{
 
    public function Delete()
    {
    	$id_user='id_user' ;
    	$jabat='admin';	
		$idu=1;
	$input = "DELETE FROM users WHERE idu ='$idu'";
	$hasil = mysql_query($input);
	if($hasil){
		$input2 = mysql_query("DELETE FROM post WHERE idu ='$idu'");
		$input3 = mysql_query("DELETE FROM balas WHERE idu ='$idu'");		
		$nilai="berhasil";
		} else 
		{	
			$nilai="gagal";
		}

        return $nilai;
    }

public function HitungLihat()
    {

				$baselink=$_SERVER['PHP_SELF'];
				// jumlah data perhalaman 
				$rowsPerPage = 10; 
				//nilai halaman awal 
				$pageNum = 1; 
				if(!empty($_GET['page'])) {     
				$pageNum = $_GET['page']; } 
				$offset = ($pageNum - 1) * $rowsPerPage; 
	
				/* =================================mulai */
				$id_kategori = $_GET['id_kategori'];
				/*---------lihat------------ */
				$lihat = mysql_query("UPDATE kategori SET lihat=lihat+1 WHERE id_kategori='$id_kategori'");
				/* ---------akhir lihat------ */
				$_SESSION['id_kategori'] = $id_kategori;
				$no=1;
				$sql2="SELECT * FROM post,users WHERE '$id_kategori' = id_kategori AND post.idu = users.idu ORDER BY id DESC LIMIT $offset, $rowsPerPage";
				$result2=mysql_query($sql2) or die('Error');

				while($rows2=mysql_fetch_array($result2)){

				/* =================================akhir */
				return $resu;

}
