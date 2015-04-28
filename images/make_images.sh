SIZES=("200x400" "200x200" "300x200")
function GET_COLOR {
    echo "rgb( $((50 + $RANDOM % 200)),  $((50 + $RANDOM % 200)),  $((50 + $RANDOM % 200)) )"
}
COUNT=1
MAXCOUNT=30
while [ "$COUNT" -le $MAXCOUNT ]; do
    SIZE=${SIZES[ $(($RANDOM % 3)) ]} 
    convert -size $SIZE -background "$(GET_COLOR)" -gravity center pango:"${COUNT}\n<span><small><small><small>${SIZE}</small></small></small></span>" "img_${COUNT}.png"
    let "COUNT += 1"  # Нарастить счетчик.
done
