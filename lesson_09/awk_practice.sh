#!bin/sh

# 制御構造
awk '
	BEGIN {
		FS = ","
		print "-- start --"
	}
	{
		print NR ":" $0
		if(NR % 5 == 0){
			print "-------------------"
		} else {
			print "--"	
		}
	}
	END{
		print "--  end  --"
	}
' $1

