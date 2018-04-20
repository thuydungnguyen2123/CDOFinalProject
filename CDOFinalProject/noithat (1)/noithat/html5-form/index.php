
 
  
<style>
form .row {
  display: block;
  padding: 7px 8px;
  margin-bottom: 7px;
}
form .txt {
  display: inline-block;
  padding: 8px 9px;
  padding-right: 30px;
  width: 240px;
  font-family: 'Oxygen', sans-serif;
  font-size: 1.35em;
  font-weight: normal;
  color: #898989;
  background-color: #f0f0f0;
  background-image: url('checkmark.png');
  background-position: 110% center;
  background-repeat: no-repeat;
  border: 1px solid #ccc;
  text-shadow: 0 1px 0 rgba(255,255,255,0.75);
  -webkit-box-sizing: content-box;
  -moz-box-sizing: content-box;
  box-sizing: content-box;
  -webkit-border-radius: 3px;
  -moz-border-radius: 3px;
  border-radius: 3px;
  -webkit-box-shadow: 0 1px 2px rgba(25, 25, 25, 0.25) inset, -1px 1px #fff;
  -moz-box-shadow: 0 1px 2px rgba(25, 25, 25, 0.25) inset, -1px 1px #fff;
  box-shadow: 0 1px 2px rgba(25, 25, 25, 0.25) inset, -1px 1px #fff;
  -webkit-transition: all 0.3s linear;
  -moz-transition: all 0.3s linear;
  transition: all 0.3s linear;
}
form .txtarea {
  display: inline-block;
  padding: 8px 11px;
  padding-right: 30px;
  width: 320px;
  height: 120px;
  font-family: 'Oxygen', sans-serif;
  font-size: 1.35em;
  font-weight: normal;
  color: #898989;
  background-color: #f0f0f0;
  background-image: url('images/checkmark.png');
  background-position: 110% 4%;
  background-repeat: no-repeat;
  border: 1px solid #ccc;
  text-shadow: 0 1px 0 rgba(255,255,255,0.75);
  -webkit-box-sizing: content-box;
  -moz-box-sizing: content-box;
  box-sizing: content-box;
  -webkit-border-radius: 3px;
  -moz-border-radius: 3px;
  border-radius: 3px;
  -webkit-box-shadow: 0 1px 4px -1px #a8a8a8 inset;
  -moz-box-shadow: 0 1px 4px -1px #a8a8a8 inset;
  box-shadow: 0 1px 4px -1px #a8a8a8 inset;
  -webkit-transition: all 0.3s linear;
  -moz-transition: all 0.3s linear;
  transition: all 0.3s linear;
}
#submitbtn {
  height: 70px;
  width: 275px;
  padding: 0;
  cursor: pointer;
  font-family: 'Oxygen', Arial, sans-serif;
  font-size: 2.0em;
  color: #FFF;
  text-shadow: 1px 1px 0 rgba(255,255,255,0.65);
  border-width: 1px;
  border-style: solid;
  border-color: #317bd6 #3784e3 #2d74d5 #3774e3;
  -webkit-border-radius: 3px;
  -moz-border-radius: 3px;
  border-radius: 3px;
  background-color: #0C3;
  
  -moz-box-shadow: 1px 1px 3px rgba(0,0,0,0.4), 0 1px 0 rgba(255, 255, 255, 0.5) inset;
  -webkit-box-shadow: 1px 1px 3px rgba(0,0,0,0.4), 0 1px 0 rgba(255, 255, 255, 0.5) inset;
  box-shadow: 1px 1px 3px rgba(0,0,0,0.4), 0 1px 0 rgba(255, 255, 255, 0.5) inset;
  -webkit-transition: all 0.3s linear;
  -moz-transition: all 0.3s linear;
  transition: all 0.3s linear;
}
</style>

<div id="w">
	<h1>ComMent</h1>
<form id="contactform" name="contact" method="post" action="process.php">
  
  <div class="row">
    <label for="name" style="color:#FFF;">Your Name <span class="req">*</span></label>
    <input type="text" name="name" id="name" class="txt" tabindex="1" placeholder="Your Name" required>
  </div>
   
  <div class="row">
    <label for="email" style="color:#FFF;">E-mail Address <span class="req">*</span></label>
    <input type="email" name="email" id="email" class="txt" tabindex="2" placeholder="Email Address" required>
  </div>
   
  <div class="row">
    <label for="message" style="color:#FFF;">Message <span class="req">*</span></label>
    <textarea name="message" id="message" class="txtarea" tabindex="4" required></textarea>
  </div>
   
  <div class="center">
    <input type="submit" id="submitbtn" name="submitbtn" tabindex="5" value="Send Comment">
  </div>
  <div class="center">
    <input type="hidden"  name="idSP" value="<?php echo $_GET['idSP']?>">
  </div>
</form>
