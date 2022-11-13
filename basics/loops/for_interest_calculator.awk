# compute compound interest
# input: amount rate year
# output: compounded value at the end of each year

# awk -f <this file name>.awk
#    <amount> <rate in %> <year>

{ 
    interest = $2/100 
    for (i = 1; i <= $3; i = i + 1)
        printf("\t%.2f\n", $1 * (1 + interest) ^ i)
}
