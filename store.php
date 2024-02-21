<?php
require('includes/db_connect.php');

 
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $targeted = $_POST['targeted'];
    $implemented = $_POST['implemented'];

    for ($i = 1; $i <= 5; $i++) {
        $targetedValue = intval($targeted[$i]);
        $implementedValue = intval($implemented[$i]);
        if ($targetedValue < 0 || $targetedValue > 5 || $implementedValue < 0 || $implementedValue > 5) {
            echo json_encode(['status'=>'warning', 'message'=>'Invalid input! Values should be between 0 and 5']);
            exit();
        } else {
            $data_targeted[]= ['key' => $i, 'value' => $targetedValue];
            $data_implemented[]= ['key' => $i, 'value' => $implementedValue];
        }
    }
    
    $insertData = array(
        "targetted" => json_encode($data_targeted),
        "implemented" => json_encode($data_implemented),
    );

    $tableName = "submission";
    $conn->insertData($tableName, $insertData);

    $lastInsertedId = $conn->getLastInsertedId();

    $selectedColumns = array("targetted", "implemented");
    $fetchResult = $conn->fetchDataById($tableName, $lastInsertedId, $selectedColumns);



    $conn->closeConnection();

    echo json_encode(['status'=>'success', 'message'=>'Data has been successfully stored!', 'data'=>  $fetchResult]);     
}
