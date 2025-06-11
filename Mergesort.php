
<?php
function mergeSortedArrays(array $arr1, array $arr2):array 
{
    $merged = [];
    $pt1 = $pt2 = 0;
    $len1 = count($arr1);
    $len2 = count($arr2);
    while ($pt1 < $len1 && $pt2 < $len2)
     {
        if ($arr1[$pt1] < $arr2[$pt2]) 
        {
            $merged[] = $arr1[$pt1];
           $pt1++;
        } else 
        {
            $merged[] = $arr2[$pt2];
            $pt2++;
        }
    }
    while ($pt1 < $len1)
    {
        $merged[] = $arr1[$pt1];
        $pt1++;
    }
    while ($pt2 < $len2) {
        $merged[] = $arr2[$pt2];
        $pt2++;
    }

    return $merged;
}

$arr1 = [1, 3, 5, 7];
$arr2 = [2, 4, 6, 8];
print_r(mergeSortedArrays($arr1, $arr2));
echo "[" . implode(", ", mergeSortedArrays($arr1, $arr2)) . "]";
?>