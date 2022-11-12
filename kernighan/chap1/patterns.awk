# apply these patterns to emp.data using the command...
# awk -f patterns.awk emp.data

# print header and then the data
BEGIN { print ""; print "NAME RATE HOURS" }
{ print }
END { print "" }

# count the number of employees who worked more than 15 hrs
$3 > 15 {emp=emp+1}
END { print emp, "employees worked more than 15 hours"; print "" }

# calculate average pay
    { pay = pay + $2 * $3 }
END { print NR, "employees"
      print "total pay is", pay
      print "average pay is", pay/NR
      print ""
    }

# find the first employ with max pay rate
# If more than one employee has the same max pay rate, this will only print the first one
$2 > maxrate { maxrate =$2; maxemp =$1 }
END { print "highest hourly rate:", maxrate, "for", maxemp }
END { print "" }

# print all the names
# concatenates each of the string values on the righ side of the equation; previous value of names, filed 1, a space
    { names = names $1 " " }
END { print names }
END { print "" }

# print last line of file, another way. Note $0 does not retain its value at END. NR does.
    { last = $0 }
END { print last }
