
<?php
function sumEachRow(array $matrix): array {
    $rowSums = [];
    foreach ($matrix as $row) 
    {
        $current_sum = array_sum($row);
        $rowSums[] = $current_sum;
    }
    return $rowSums;
}
$matrix = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]
];
print_r(sumEachRow($matrix)); 
?>
