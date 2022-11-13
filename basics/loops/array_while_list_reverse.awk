# print input in reverse order by line

# read each line into the array
{ line[NR] = $0 }

# print lines in reverse order
END { i = NR
    while (i > 0) {
        print line[i]
        i = i -1
    }
}
