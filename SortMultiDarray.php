<?php
function sortByKey(array $arr, string $key): array {
    // Step 1: Find min and max age
    $min = PHP_INT_MAX;
    $max = PHP_INT_MIN;
    
    foreach ($arr as $item) {
        $min = min($min, $item[$key]);
        $max = max($max, $item[$key]);
    }

    $range = $max - $min + 1;
    $buckets = array_fill(0, $range, []);

    foreach ($arr as $item) {
        $index = $item[$key] - $min;
        $buckets[$index][] = $item;
    }
    $sorted = [];
    foreach ($buckets as $bucket) {
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
