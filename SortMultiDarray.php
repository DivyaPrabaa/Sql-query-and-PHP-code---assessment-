<?php
function sortByKey(array $arr, string $key): array {
    $map = [];
    foreach ($arr as $item) {
        $k = $item[$key];
        if (!isset($map[$k])) {
            $map[$k] = [];
        }
        $map[$k][] = $item;
    }
    ksort($map); 
    $sorted = [];
    foreach ($map as $bucket) {
        foreach ($bucket as $item) {
            $sorted[] = $item;
        }
    }
    return $sorted;
}
$students = [
    ["name" => "Alice", "age" => 22],
    ["name" => "Bob", "age" => 20],
    ["name" => "Charlie", "age" => 25]
];
print_r(sortByKey($students, "age"));
?>
