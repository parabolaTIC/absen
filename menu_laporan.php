<<<<<<< HEAD
<?php 
echo "<div>
<h2 class='head'>LAPORAN ABSENSI PER-PERIODE</h2>
<form action='laporan_absensi.php' method='POST' target='_blank'>";
combonamabln(1, 12, bulan, 1);
$now =  date("Y");
combothn(2000, $now, tahun, 1);
echo"<input type=submit name=submit value=Tampilkan></form>
</div>";
=======
<?php 
echo "<div>
<h2 class='head'>LAPORAN ABSENSI PER-PERIODE</h2>
<form action='laporan_absensi.php' method='POST' target='_blank'>";
combonamabln(1, 12, bulan, 1);
$now =  date("Y");
combothn(2000, $now, tahun, 1);
echo"<input type=submit name=submit value=Tampilkan></form>
</div>";
>>>>>>> 334e962f67bae0a7a4a9203c6d07977d7cd2f49f
?>