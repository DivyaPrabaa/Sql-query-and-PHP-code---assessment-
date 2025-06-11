
<?php
function secondLargest($arr) {
    $n = count($arr);
    if ($n < 2) {
        return "Array must contain at least two elements.";
    }

    $first = $second = PHP_INT_MIN;

    foreach ($arr as $num) {
        if ($num > $first) {
            $second = $first;
            $first = $num;
        } elseif ($num > $second && $num != $first) {
            $second = $num;
        }
    }

    if ($second == PHP_INT_MIN) {
        return "No second largest element found.";
    }

    return $second;
}
echo secondLargest([10, 20, 5, 40, 25]); 
?>