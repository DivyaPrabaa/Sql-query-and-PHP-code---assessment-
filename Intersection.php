
<?php
function findIntersection($arr1, $arr2) {
    $seen = [];
    $intersection = [];
    foreach ($arr1 as $num) {
        $seen[$num] = true;
    }
    foreach ($arr2 as $num) {
        if (isset($seen[$num])) {
            $intersection[] = $num;
            unset($seen[$num]); 
        }
    }
    return $intersection;
}

$arr1 = [1, 2, 3, 4, 5];
$arr2 = [4, 5, 6, 7, 8];

print_r(findIntersection($arr1, $arr2));
echo "[" . implode(", ", findIntersection($arr1, $arr2)) . "]";
?>
