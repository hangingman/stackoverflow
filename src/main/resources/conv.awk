#!/usr/bin/awk -f

BEGIN {
    FS=" - ";
    OFS=",";
    print "page,datetime,ip,userAgent"
} {
    split($1, array, " ");
    print array[1],array[2] " " array[3],array[4],$2
}
