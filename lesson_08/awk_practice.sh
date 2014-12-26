#!bin/sh

# 変数
# 演算子 
awk '
	BEGIN {
		FS = ","
		print "-- start --"
	}
	# 数字関連の関数
	#{
	#	printf("%f  %d\n", rand(), int($1/3))
	#}
	# 文字関連の関数
	#length($1) > 4{
	#	print $0
	#}
	{
		print substr($1, 0, 2)
	}
	END{
		print "--  end  --"
	}
' $1

