<?php
session_start();
include_once 'koneksi.php';
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
			<h2>Pencarian Data</h2>
            <form action='searching.php'method="POST">
              <input type='text' value='' name='qcari'>
              <input type='submit' value='cari'
	 >
              <a href='searching.php' >All</a>
            </form>
            <table border="1" width="500px">
  <th>
    <td>Nama Barang</td>
    <td>Jenis Barang</td>
    </th>
    <?php
require_once('koneksi.php');
$query1="select * from barang ";


if(isset($_POST['qcari'])){
	$qcari=$_POST['qcari'];
	$query1="SELECT * FROM  barang 
	where nama_barang like '%$qcari%'
	or jenis_barang like '%$qcari%'  ";
}

$result=mysql_query($query1) or die(mysql_error());
$no=1; //penomoran 
while($rows=mysql_fetch_object($result)){
			?>
  <tr>
    <td><?php echo $no
				?></td>
    <td><?php		echo $rows -> nama_barang;?></td>
    <td><?php		echo $rows -> jenis_barang;?></td>
  </tr>
  <?php
$no++;
}?>
            </table>
</section></body>
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