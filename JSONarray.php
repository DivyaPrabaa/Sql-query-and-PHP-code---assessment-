
<?php
function convertToJson(array $data): string {
    return json_encode($data);
}
$data = [
    "name" => "John",
    "age" => 25,
    "address" => [
        "city" => "New York",
        "country" => "USA"
          ]
];
echo convertToJson($data);
?>
