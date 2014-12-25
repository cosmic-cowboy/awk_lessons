#!bin/sh

# < > <= >= == !=
# &&:and, ||:or, !:not  

awk '
	BEGIN {
		FS = ","
		print "-- start --"
	}
	NR < 7 && NR > 5{
		print "行数:" NR ", 値:" $0
	}
	$9 ~ /新城/ {
		print "行数:" NR ", 値:" $0
	}
	END{print "--  end  --"}
' $1

