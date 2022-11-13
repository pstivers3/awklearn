# apply these patterns to emp.data using the command...
# awk -f patterns-2.awk emp.data

{ print $1, length($1) }
