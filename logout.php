<?php
session_start();
 include('db/config.php');
 $_SESSION['username']=="";
date_default_timezone_set('Asia/Dhaka');
$ldate=date('d-m-Y h:i:s A', time());
mysqli_query($con, "UPDATE `loginlog` SET `logOut`='$ldate' WHERE `user_name`= '".$_SESSION['username']."' ORDER BY id DESC LIMIT 1");
session_unset();
?>
<script language="javascript">
document.location="index";
</script>
