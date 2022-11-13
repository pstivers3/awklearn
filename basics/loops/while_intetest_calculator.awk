# compute compound interest
# input: amount rate year
# output: compounded value at the end of each year
# awk -f <this file name>.awk
#    <amount> <rate> <year>

{    i = 1
     interest = $2/100
     while (i <= $3) {
         printf("\t%.2f\n", $1 * (1 + interest) ^ i)
         i = i + 1
     }
}
