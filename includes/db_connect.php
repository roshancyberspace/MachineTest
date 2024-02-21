<?php

class Database {
    private $servername;
    private $username;
    private $password;
    private $dbname;
    private $conn;

    public function __construct($servername, $username, $password, $dbname) {
        $this->servername = $servername;
        $this->username = $username;
        $this->password = $password;
        $this->dbname = $dbname;

        $this->connect();
    }

    private function connect() {
        $this->conn = new mysqli($this->servername, $this->username, $this->password, $this->dbname);
        if ($this->conn->connect_error) {
            die("Connection failed: " . $this->conn->connect_error);
        }
    }

    public function closeConnection() {
        if ($this->conn) {
            $this->conn->close();
        }
    }

    public function executeQuery($sql, $params = array()) {
        $stmt = $this->conn->prepare($sql);
        if ($stmt === false) {
            die("Error in prepared statement: " . $this->conn->error);
        }
        if (!empty($params)) {
            $types = str_repeat('s', count($params));
            $stmt->bind_param($types, ...$params);
        }

        $stmt->execute();
        $result = $stmt->get_result();
        $stmt->close();
        return $result;
    }

    public function insertData($table, $data) {
        $columns = implode(", ", array_keys($data));
        $values = array_values($data);
        $placeholders = str_repeat("?, ", count($values) - 1) . "?";
        $sql = "INSERT INTO $table ($columns) VALUES ($placeholders)";
        $this->executeQuery($sql, $values);
    }

    public function fetchDataColumns($table, $columns, $condition = "", $params = array()) {
        $columnList = implode(", ", $columns);
        $sql = "SELECT $columnList FROM $table";

        if ($condition !== "") {
            $sql .= " WHERE $condition";
        }

        $result = $this->executeQuery($sql, $params);

        $data = array();
        while ($row = $result->fetch_assoc()) {
            $data[] = $row;
        }

        return $data;
    }

    public function getLastInsertedId() {
        return $this->conn->insert_id;
    }

     
    public function fetchDataById($table, $id, $columns = array()) {
        $columnList = empty($columns) ? "*" : implode(", ", $columns);
        $sql = "SELECT $columnList FROM $table WHERE id = ?";
        $params = array($id);

        $result = $this->executeQuery($sql, $params);

        $data = array();
        while ($row = $result->fetch_assoc()) {
            $data[] = $row;
        }

        return $data;
    }
}

 
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "machine_test";

$conn = new Database($servername, $username, $password, $dbname);
 
?>
