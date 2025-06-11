
<?php
function removeDuplicates(array $arr): array {
    $seen = [];
    $result = [];
    foreach ($arr as $value) {
        if (!isset($seen[$value])) {
            $seen[$value] = true;
            $result[] = $value;
        }
    }
    return $result;
}
$input = [1, 2, 2, 3, 4, 4, 5];
echo "[" . implode(", ", removeDuplicates($input)) . "]";
