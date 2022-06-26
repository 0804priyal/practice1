<?php 
$conn = mysqli_connect("localhost", "root", "", "sandip");
$select = "SELECT * FROM members";
$data = $conn->query($select);

?>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
  <style>
    .modal-content {
      display: flex;
      width: 100%;
      height: auto;
      flex-direction: column;
    }
    .modal-body {
      padding: 20px 50px;
    }
    table {
      width:60% !important;
    }
    table.center {
      margin-left: auto; 
      margin-right: auto;
    }
  </style>

</head>
<body>

<div class="container mt-3">
  <div class="all_members">
    <h2>Members List</h2>
       <?php
        $conn = mysqli_connect("localhost", "root", "", "sandip");

        all_memmers(0);
        function all_memmers($parent_id){
        global $conn;
         
        $sql = "select * from members where parent_id ='".$parent_id."'";
        $result = $conn->query($sql);
         
        while($row = mysqli_fetch_object($result)):
        $i = 0;
        if ($i == 0) echo '
        <ul>';
         echo '
        <li>' . $row->Name;
         all_memmers($row->Id);
         echo '</li>
         
        ';
        $i++;
         if ($i > 0) echo '</ul>
         
        ';
        endwhile;
        }
      
      ?>
  </div>
 
  <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#myModal">
    Open modal
  </button>
  
</div>


<div class="modal" id="myModal">
  <div class="modal-dialog modal-sm">
    <div class="modal-content">
      <div class="modal-header">
        <h4 class="modal-title">Modal Heading</h4>
        <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
      </div>
      <div class="modal-body">
          <div class="dropdown">
            <label for="exampleFormControlSelect1">Select Parent:</label>
              <select class="form-control" name="parent_id" id="parent_id">
              <?php
                 $select = "SELECT * FROM members";
                $data = $conn->query($select);
                if($data->num_rows>0) {
              ?>
              <ul class="dropdown-menu">
                <?php              
                  while($row=$data->fetch_assoc()) {
                   $id = $row['Id'];
                   $parent_id = $row['parent_id'];
                   $Name = $row['Name'];
                ?>
                
                <option value="<?php echo $id; ?>"><?php echo $Name; ?></option>
                <?php 
                  }
                }
              ?>
            </select>
            
          </div>
          
            <div class="mb-3 mt-3">
              <label for="childname" class="form-label">Child Name:</label>
              <input type="text" class="form-control" id="name" name="name" placeholder="Enter Child Name">
            </div>
            <button type="button" name="save_members" id="save_membersbt" onclick="saveMembers()" class="btn btn-primary">Save Members</button>
      </div>
    </div>
  </div>
</div>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
  function saveMembers(str) {
      jQuery('#save_membersbt').attr('disabled','disabled');
      var membersid = $('#parent_id :selected').val();
       var name = jQuery('#name').val();
       $.ajax({
            type: "POST",
            url: 'list.php',
            data: {membersid:membersid, name:name},
            success: function(response)
            {
               jQuery('.all_members').html(response);
               jQuery('.btn-close').click();
           }
       }); 
  }


</script>

</body>
</html>
