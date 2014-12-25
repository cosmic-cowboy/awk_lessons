#!bin/sh

# printf 
# 文字列　%s
# 数値　%d
# 少数 %f
awk '
	BEGIN {
		FS = ","
		print "-- start --"
	}
	{
		printf("郵便番号:%10d 住所:%-10s%s\n", $3, $7, $8)
	}
	END{print "--  end  --"}
' $1

