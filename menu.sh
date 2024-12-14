#!/bin/bash

while true; do
    echo "Menu:"
    echo "1. Manipulasi hak akses berkas"
    echo "2. Membuka website YouTube"
    echo "3. Konversi satuan panjang (cm ke m)"
    echo "4. Konversi Celcius ke Fahrenheit"
    echo "5. Menghitung luas persegi"
    echo "6. Keluar"
    read -p "Pilih opsi (1-6): " choice

    case $choice in
        1)
            read -p "Masukkan nama berkas: " file
            read -p "Masukkan hak akses (misal: 755): " permission
            chmod $permission $file
            echo "Hak akses berkas telah diubah."
            ;;
        2)
            xdg-open "https://www.youtube.com/watch?v=dQw4w9WgXcQ"
            ;;
        3)
            read -p "Masukkan panjang dalam cm: " cm
            meter=$(echo "scale=2; $cm / 100" | bc)
            echo "$cm cm = $meter m"
            ;;
        4)
            read -p "Masukkan suhu dalam Celcius: " celcius
            fahrenheit=$(echo "scale=2; $celcius * 9 / 5 + 32" | bc)
            echo "$celcius C = $fahrenheit F"
            ;;
        5)
            read -p "Masukkan panjang sisi persegi: " sisi
            luas=$(echo "$sisi * $sisi" | bc)
            echo "Luas persegi dengan sisi $sisi adalah $luas"
            ;;
        6)
            echo "Keluar dari menu."
            break
            ;;
        *)
            echo "Pilihan tidak valid, silakan coba lagi."
            ;;
    esac
done