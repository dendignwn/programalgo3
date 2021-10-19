<?php
session_start();
include_once 'dbconnect.php';

if(!isset($_SESSION['userSession']))
{
 header("Location: login.php");
}
else{
$sql = "SELECT * FROM user WHERE user_id=".$_SESSION['userSession'];
$userquery = $MySQLi_CON->query($sql);
$userRow = $userquery->fetch_object();
$username = $userRow->username;
}
?>
<html>
<head>
		<link rel="stylesheet" type="text/css" href="style.css">
		<script type="application/javascript" src="jquery-2.1.3.js"></script>
		<script type="application/javascript" src="jquery-ui.js"></script>
		<script type="application/javascript" src="paging.js"></script> 
		<script>
			$(document).ready(function() {
                $('#tableData').paging({
				limit:10
				});
            });
		</script>
<title>STOK | NAMA BARANG</title>
	    <style type="text/css">
<!--
.style3 {color: #000000; }
-->
        </style>
</head>
	
<body>
		<header>
			<div class="left">Bengkong Indah Supermarket</div>
			<div class="right">
				Hi , <?php echo htmlentities($username) ?> |
				<a href="logout.php">Logout</a>
			</div>
		</header>
		<aside>
			<ul class="side">
				<a href="index.php"><li class="side">Home</li></a>
				<a href="tab-barang.php"><li class="side active">Nama Barang</li></a>
				<a href="tab-stok-barang.php"><li class="side">Stok Barang</li></a>
				<a href="tab-history.php"><li class="side">History</li>
				<a href="searching.php"><li class="side">Pencarian</li>
				<a href="sorting.php"><li class="side">Pengurutan</li>
				</a>
			</ul>
		</aside>
		<section class="content">
			<h1 class="content">&nbsp;</h1>
			<h2 align="center" class="style3">Pengurutan Barang</h2>
            <div align="center">
              <table width="592" border="1" align="center">
                <?php
require_once('koneksi.php');
$query1="select * from barang order by nama_barang ";

$pola='asc';
$polabaru='asc';
if(isset($_GET['orderby'])){
	$orderby=$_GET['orderby'];
	$pola=$_GET['pola'];
	
	$query1="SELECT * FROM  barang order by $orderby $pola ";
	if($pola=='asc'){
		$polabaru='desc';
		
	}else{
		$polabaru='asc';
	}
}
?>
                <tr>
                  <th class="style3"> </th>
                  <td class="style3"><a href='sorting.php?orderby=nama_barang&amp;pola=<?=$polabaru;?>'>sorting_nama_barang</a></td>
                  <td class="style3"><a href='sorting.php?orderby=jenis_barang&amp;pola=<?=$polabaru;?>'>sorting_jenis_barang</a></td>
                  <td class="style3"></th></td>
                  <?php
//query database 
$result=mysql_query($query1) or die(mysql_error());
$no=1; //penomoran 


while($rows=mysql_fetch_object($result)){
			?>
                </tr>
                <tr>
                  <td class="style3"><?php echo $no
				?></td>
                  <td class="style3"><?php		echo $rows -> nama_barang;?></td>
                  <td class="style3"><?php		echo $rows -> jenis_barang;?></td>
                </tr>
                <?php
$no++;
}?>
              </table>
            </div>
            <h2>&nbsp;</h2><h2 align="center" class="style3">&nbsp;</h2>
			<p>&nbsp;</p>
</section>
</body>
	<script>
		function confirmDelete(link) {
			if (confirm("Data ini akan dihapus ?")) {
				doAjax(link.href, "POST"); // doAjax needs to send the "confirm" field
			}
			return false;
		}
	</script>
	<?php $MySQLi_CON->close(); ?>
</html>