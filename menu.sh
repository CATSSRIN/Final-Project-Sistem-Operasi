

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
                echo "Hak akses yang tersedia:"
                echo "1. 700 (rwx------)(file's owner has full permissions (read, write, and execute).)"
                echo "2. 755 (rwxr-xr-x)(owner have full permissions while others can read and execute)."
                echo "3. 644 (rw-r--r--)(owner can only read and write while other can only write)."
                echo "4. 600 (rw-------)(owner can read and write)."
                echo "5. 777 (rwxrwxrwx)(everyone have full permissions)."
                echo "rwx = read, write, execute (7)"
                echo "r-x = read, execute (5)"
                echo "rw- = read, write (6)"
                echo "r-- = read (4)"
                read -p "Pilih hak akses (1-5): " perm_choice

                    case $perm_choice in
                        1) permission=700 ;;
                        2) permission=755 ;;
                        3) permission=644 ;;
                        4) permission=600 ;;
                        5) permission=777 ;;
                        *) echo "Pilihan tidak valid, menggunakan hak akses default 755."; permission=755 ;;
                    esac

            chmod $permission $file
            echo "Hak akses berkas telah diubah."
            ;;

        2)
            echo "Pilih video yang ingin ditonton:"
            echo "1. fishe"
            echo "2. WE ARE JAPANESE GOBLIN"
            echo "3. WE ARE JAPANESE GOBLIN REMASTERED"
            echo "4. Hololime"
            echo "5. YO YO YO YO"
            echo "6. HoloGPS"
            echo "7. GG"
            echo "8. UmU"
            read -p "Pilih video (1-): " video_choice

            case $video_choice in
                1) xdg-open "https://youtu.be/poa_QBvtIBA?si=GKz9oP3SbL6fiTio" ;;
                2) xdg-open "https://youtu.be/Tc8iu0XFUQc?si=PGhCB1wkoGLtOkd6" ;;
                3) xdg-open "https://youtu.be/UIp6_0kct_U?si=fztoZAKBRk9qCG20" ;;
                4) xdg-open "https://youtu.be/fTIO1oEY1FU?si=FbXIreegN8fLjHgv" ;;
                5) xdg-open "https://youtu.be/Sfeoe7PWi4s?si=YcGogwg884d58ntD" ;;
                6) xdg-open "https://youtu.be/Y3nBX__WEVQ?si=WL6gm80igl3zkhe9" ;;
                7) xdg-open "https://youtu.be/9nXYsmTv3Gg?si=GfNjhxkOSG5inyBi" ;;
                8) xdg-open "https://youtu.be/oSjzMHQv-M8?si=n6TTV_gnHrCrQko2" ;;


                *) echo "Pilihan tidak valid." ;;
            esac

            echo "Video telah dibuka."
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