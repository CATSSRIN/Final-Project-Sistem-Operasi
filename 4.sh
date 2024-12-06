# Title: Konversi Suhu Celcius ke Fahrenheit

if ! command -v bc &> /dev/null
then
    echo "Error: 'bc' could not be found. Please install it to proceed."
    exit 1
fi


echo -n "Masukkan suhu dalam Celcius: "
read celcius


if ! [[ "$celcius" =~ ^-?[0-9]+(\.[0-9]+)?$ ]]
then
    echo "Error: Input harus berupa angka."
    exit 1
fi


fahrenheit=$(echo "scale=2; ($celcius * 9 / 5) + 32" | bc)


echo "$celcius derajat Celcius sama dengan $fahrenheit derajat Fahrenheit."
