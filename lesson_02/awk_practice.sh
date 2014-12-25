#!bin/sh

# $n:行のn番目のカラム内容
# FS カラムの区切り文字（デフォルトは改行）
awk 'BEGIN{FS = ","}{print $3}' $1
