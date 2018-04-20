<?php
session_start();
if(isset($_POST['ok']))
{
 if($_POST['txtCaptcha'] == NULL)
 {
  echo "Please enter your code";
 }
 else
 {
  if($_POST['txtCaptcha'] == $_SESSION['security_code'])
  {
   echo "ma lenh hop le";
  }
  else
  {
   echo "Ma lenh khong hop le";
  }
 }
}
?>
<form action="form.php" method="post">
<table border="0">
 <tbody><tr>
  <td align="left">
   <label for="captcha">Captcha</label>
  </td>
  <td>
   <input type="text" name="txtCaptcha" maxlength="10" size="32" />
  </td>
  <td>
   <img src="capcha.php" alt="viet-ung-dung-voi-capche" />
  </td>
 </tr>
 <tr>
  <td>&nbsp;</td>
  <td>
   <input name="ok" type="submit" value="Check" />
  </td>
 </tr>
</tbody></table>
</form>