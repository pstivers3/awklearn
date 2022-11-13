#! /bin/bash

# if field 3 > 0, print field 1 and (field 2 * field 3)
awk '$3 > 0 { print $1, $2 * $3 }' emp.data
echo

awk '$3 == 0 { print $1 }' emp.data
echo

awk '{ print $1 }' emp.data
echo

awk '$3 == 0' emp.data
echo

# NF = number of fields in a record (line)
awk '{ print NF, $1, $NF }' emp.data
echo

# print the line number (number of lines read so far) and the line
# prefixes a line number to each line
awk '{ print NR, $0 }' emp.data
echo

awk '{ printf("total pay for %-8s is $%6.2f\n", $1, $2 * $3) }' emp.data
echo

awk '$2 >= 4 && $3 >= 20' emp.data
echo

# print header and then the data
awk 'BEGIN { print "NAME RATE HOURS"; print "" }' emp.data
awk '{ print }' emp.data

