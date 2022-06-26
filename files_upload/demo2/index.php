<?php
session_start(); 
?>
<!DOCTYPE html>
<html>
<head>
  <title>PHP File Upload</title>
  <style>
    .file-upload div.upload-wrapper {
      color: white;
      font-weight: bold;
      display: flex;
    } 
    .file-upload input[type="file"] {
      position: absolute;
      left: -9999px;
    } 
    .file-upload input[type="submit"] {
      border: 0px solid #555;
      color: white;
      background-color: #e33c28;
      margin: 10px 0;
      border-radius: 5px;
      font-weight: bold;
      padding: 10px 30px;
      cursor: pointer;
    } 
    .file-upload input[type="submit"]:hover {
      background: #555;
    } 
    .file-upload label[for="file-upload"] {
      padding: 0.7rem;
      display: inline-block;
      background-color: #e33c28;
      cursor: pointer;
      border: 3px solid #ca3103;
      border-radius: 0 5px 5px 0;
      border-left: 0;
    }
    .file-upload label[for="file-upload"]:hover {
      background: #ca3103;
    } 
    .file-upload span.file-name {
      padding: 0.7rem 3rem 0.7rem 0.7rem;
      white-space: nowrap;
      overflow: hidden;
      background-color: #355e92;
      color: white;
      border: 0px solid #f0980f;
      border-radius: 5px 0 0 5px;
      border-right: 0;
    }
  </style>
</head>
<body>
 
  <div class="file-upload"> 
    <form method="POST" action="upload.php" enctype="multipart/form-data">
      <div class="upload-wrapper">
        <span class="file-name">Choose a file...</span>
        <label for="file-upload">Browse<input type="file" id="file-upload" name="uploadedFile"></label>
      </div>
   
      <input type="submit" name="uploadBtn" value="Upload" />
    </form>
  </div>
</body>
</html>