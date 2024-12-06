
if ! command -v bc &> /dev/null
then
    echo "bc could not be found, please install it to proceed."
    exit
fi

echo -n "Masukkan panjang sisi persegi: "
read sisi

luas=$(echo "$sisi * $sisi" | bc)

echo "Luas persegi dengan panjang sisi $sisi adalah $luas"
