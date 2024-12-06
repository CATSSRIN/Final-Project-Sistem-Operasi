
if ! command -v bc &> /dev/null
then
    echo "package bc tidak ditemukan"
    exit
fi

echo -n "Masukkan panjang sisi persegi: "
read sisi

luas=$(echo "$sisi * $sisi" | bc)

echo "Luas persegi dengan panjang sisi $sisi adalah $luas"
