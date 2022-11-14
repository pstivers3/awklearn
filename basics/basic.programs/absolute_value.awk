# Print every line after replacing negative fields by their absolute value.

{
    for (i = 1; i <= NF; i = i + 1) {
        if ($i < 0) {
            $i = -$i
        }
    }
    print
}
