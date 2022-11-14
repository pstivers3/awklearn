# Print the grand total of all numeric fields in the file

{
    for (i = 1; i <= NF; i = i + 1) {
        sum = sum + $i
    }
}

END { print sum }
