#!bin/sh

# 変数
# 演算子 
awk '
	BEGIN {
		FS = ","
		print "-- start --"
		sum = 0
	}
	{
		# sum = sum + $1
		sum += $1
	}
	END{
		printf("合計:%d\n", sum)
		print "--  end  --"
	}
' $1

