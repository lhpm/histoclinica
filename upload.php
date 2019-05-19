<?php
// A list of permitted file extensions
$allowed = array('png', 'jpg', 'gif','zip');

if(isset($_FILES['foto']) && $_FILES['foto']['error'] == 0){

	$extension = pathinfo($_FILES['foto']['name'], PATHINFO_EXTENSION);

	if(!in_array(strtolower($extension), $allowed)){
		echo '{"status":"error"}';
		exit;
	}

	$nombre_foto = $_POST['id_foto'];
	if(move_uploaded_file($_FILES['foto']['tmp_name'], 'uploads/'.$nombre_foto)){
	echo '{"status":"success"}';
		exit;
	}
}
echo '{"status":"error"}';
exit;
?>