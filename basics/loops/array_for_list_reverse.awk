# print input in reverse order by line

# read each line into the array
{ line[NR] = $0 }

# print lines in reverse order
END 
{ 
    for (i = NR; i > 0; i = i - 1) 
        print line[i]
}
