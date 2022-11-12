# print header and then the data
BEGIN { print "NAME RATE HOURS" }
{ print }
END { print "" }

# count the number of employees who worked more than 15 hrs
$3 > 15 {emp=emp+1}
END { print emp, "employees worked more than 15 hours"; print "" }

END { print NR, "employees"; print "" }

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
