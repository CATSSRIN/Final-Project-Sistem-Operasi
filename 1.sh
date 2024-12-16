# Function to convert Celsius to Fahrenheit
convert_celsius_to_fahrenheit() {
    read -p "Masukkan suhu dalam Celcius: " celcius
    fahrenheit=$(echo "scale=2; $celcius * 9 / 5 + 32" | bc)
    echo "$celcius C = $fahrenheit F"
}

# Function to convert Fahrenheit to Celsius
convert_fahrenheit_to_celsius() {
    read -p "Masukkan suhu dalam Fahrenheit: " fahrenheit
    celcius=$(echo "scale=2; ($fahrenheit - 32) * 5 / 9" | bc)
    echo "$fahrenheit F = $celcius C"
}

# Function to convert Celsius to Kelvin
convert_celsius_to_kelvin() {
    read -p "Masukkan suhu dalam Celcius: " celcius
    kelvin=$(echo "scale=2; $celcius + 273.15" | bc)
    echo "$celcius C = $kelvin K"
}

# Function to convert Kelvin to Celsius
convert_kelvin_to_celsius() {
    read -p "Masukkan suhu dalam Kelvin: " kelvin
    celcius=$(echo "scale=2; $kelvin - 273.15" | bc)
    echo "$kelvin K = $celcius C"
}

# Function to convert Fahrenheit to Kelvin
convert_fahrenheit_to_kelvin() {
    read -p "Masukkan suhu dalam Fahrenheit: " fahrenheit
    kelvin=$(echo "scale=2; ($fahrenheit - 32) * 5 / 9 + 273.15" | bc)
    echo "$fahrenheit F = $kelvin K"
}

# Function to convert Kelvin to Fahrenheit
convert_kelvin_to_fahrenheit() {
    read -p "Masukkan suhu dalam Kelvin: " kelvin
    fahrenheit=$(echo "scale=2; ($kelvin - 273.15) * 9 / 5 + 32" | bc)
    echo "$kelvin K = $fahrenheit F"
}

# Function to display a temperature conversion table
display_conversion_table() {
    echo "Celcius | Fahrenheit | Kelvin"
    for c in {0..100..10}; do
        f=$(echo "scale=2; $c * 9 / 5 + 32" | bc)
        k=$(echo "scale=2; $c + 273.15" | bc)
        echo "$c C | $f F | $k K"
    done
}

# Main menu
while true; do
    echo "Pilih konversi suhu:"
    echo "1. Celcius ke Fahrenheit"
    echo "2. Fahrenheit ke Celcius"
    echo "3. Celcius ke Kelvin"
    echo "4. Kelvin ke Celcius"
    echo "5. Fahrenheit ke Kelvin"
    echo "6. Kelvin ke Fahrenheit"
    echo "7. Tampilkan tabel konversi"
    echo "8. Keluar"
    read -p "Masukkan pilihan (1-8): " choice

    case $choice in
        1)
            convert_celsius_to_fahrenheit
            ;;
        2)
            convert_fahrenheit_to_celsius
            ;;
        3)
            convert_celsius_to_kelvin
            ;;
        4)
            convert_kelvin_to_celsius
            ;;
        5)
            convert_fahrenheit_to_kelvin
            ;;
        6)
            convert_kelvin_to_fahrenheit
            ;;
        7)
            display_conversion_table
            ;;
        8)
            echo "Keluar dari program."
            break
            ;;
        *)
            echo "Pilihan tidak valid. Silakan coba lagi."
            ;;
    esac
done