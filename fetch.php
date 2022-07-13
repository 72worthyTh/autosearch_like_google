<?php
if(isset($_GET["term"]))
{
 $connect = new PDO("mysql:host=localhost; dbname=testinga", "root", "");

 $query = "SELECT * FROM tbl_student WHERE student_name LIKE '%".$_GET["term"]."%' or resume LIKE '%".$_GET["term"]."%' or age LIKE '%".$_GET["term"]."%' or age LIKE '%".$_GET["term"]."%' ORDER BY student_name ASC";

 $statement = $connect->prepare($query);

 $statement->execute();

 $result = $statement->fetchAll();

 $total_row = $statement->rowCount();

 $output = array();
 if($total_row > 0)
 {
  foreach($result as $row){
   $temp_array = array();
   $temp_array['value'] = $row['student_name'];
   $temp_array['value'] = $row['student_phone'];
   $temp_array['value'] = $row['resume'];
   $temp_array['value'] = $row['age'];
   $temp_array['label'] = '<img src="images/'.$row['image'].'" width="70" />&nbsp;&nbsp;&nbsp;'.$row['student_name'].'&nbsp;&nbsp;&nbsp;'.$row['student_phone'].'&nbsp;&nbsp;&nbsp;'.$row['resume'].'&nbsp;&nbsp;&nbsp;'.$row['age'].'';
   $output[] = $temp_array;
  }
 }
 else
 {
  $output['value'] = '';
  $output['label'] = 'No Record Found';
 }

 echo json_encode($output);
}

?>