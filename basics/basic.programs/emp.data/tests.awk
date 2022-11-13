#tests for bad data in err_emp.data

NF != 3   { printf("%-20s %5s\n", $0, "number of fields is not equal to 3") }
$2 < 3.35 { printf("%-20s %5s\n", $0, "rate is below minimum wage") }
$2 > 10   { printf("%-20s %5s\n", $0, "rate exceeds $10 per hour") }
$3 < 0    { printf("%-20s %5s\n", $0, "negative hours worked") }
$3 > 60   { printf("%-20s %5s\n", $0, "too many hours worked") }
