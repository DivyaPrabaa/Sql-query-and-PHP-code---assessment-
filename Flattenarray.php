
<?php
function flattenArray(array $array): array 
{
    $result = []; 
    foreach ($array as $item) 
    {
        if (is_array($item)) 
        {
            $result = array_merge($result, flattenArray($item));
        } else 
        {
            $result[] = $item;
        }
    }
    return $result;
}
$nestedArray = [1, [2, 3], [4, [5, 6]]];
print_r(flattenArray($nestedArray));
echo "[" . implode(", ", flattenArray($nestedArray)) . "]";
?>
