<?php
  include("connection.php");
?>
<form action="" method="post">
    <input type="text" name="key" value="<?=$_POST['key']?>">
    <br>
    <input type="submit" value="Search">
</form>
<table class="table" width="50%">
	<tr bgcolor="#ABCAE0">
		<td>Os0</td>
        <td>Item name</td>
        <td>Item number</td>
		<td>Quantity</td>
	</tr>
	<?php
	    $where = "1 AND ";
		if($_POST){
		   $where .= "  os0 like '%".$_POST['key']."%'";
		   $where .= " OR item_name like '%".$_POST['key']."%'";
		   $where .= " OR item_number like '%".$_POST['key']."%'";
		   $where .= " OR quantity like '%".$_POST['key']."%'";
		}
		$sql = "SELECT * from items WHERE $where";
		//echo $sql;
		$result = $conn->query($sql);
		if ($result->num_rows > 0) {
			// output data of each row
			$arr = array();
			$i = 0;
			while ($data = mysqli_fetch_assoc($result)) {
				while (list ($key, $value) = each($data))
					$arr[$i][$key] = $value;
				$i ++;
			}
		}
	
		for ($i = 0; $i < count($arr); $i ++) {
        ?>
		<tr>
            <td><?=$arr[$i]['os0']?></td>
            <td><?=$arr[$i]['item_name']?></td>
            <td><?=$arr[$i]['item_number']?></td>
            <td><?=$arr[$i]['quantity']?></td>
	    </tr>
	<?php
    }
    ?>
</table>







