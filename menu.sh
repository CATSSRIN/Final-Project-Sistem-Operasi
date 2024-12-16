

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
            echo "Pilih genre video yang ingin ditonton:"
            echo "1. Music"
            echo "2. Hololive"
            echo "3. Memes"
            read -p "Pilih genre (1-3): " genre_choice

                case $genre_choice in
                    1) 
                        echo "Pilih music video yang ingin ditonton:"
                        echo "1. fishe"
                        echo "2. WE ARE JAPANESE GOBLIN"
                        echo "3. WE ARE JAPANESE GOBLIN REMASTERED"
                        echo "4. Geoxor - Moonlight"
                        echo "5. YO YO YO YO"
                        echo "6. Camellia - DENPA NEVER DIE"
                        echo "7. I AM JUST A FISHE"
                        echo "8. Nulbarich - Lost Game"
                        echo "9. kamome sano & you - Altair"
                        echo "10. TUYU - It Might Be Painful, but I Still Love It."

                        read -p "Pilih video (1-10): " video_music_choice

                        case $video_music_choice in
                            1) xdg-open "https://youtu.be/poa_QBvtIBA?si=GKz9oP3SbL6fiTio" ;;
                            2) xdg-open "https://youtu.be/Tc8iu0XFUQc?si=PGhCB1wkoGLtOkd6" ;;
                            3) xdg-open "https://youtu.be/UIp6_0kct_U?si=fztoZAKBRk9qCG20" ;;
                            4) xdg-open "https://youtu.be/hUs0-gqBulQ?si=P6OOGtuH-r8BSnDr" ;;
                            5) xdg-open "https://youtu.be/Sfeoe7PWi4s?si=YcGogwg884d58ntD" ;;
                            6) xdg-open "https://youtu.be/8k2f3JKPZmM?si=grKqSaSWW08B_Rks" ;;
                            7) xdg-open "https://youtu.be/keqhcFqp2pI?si=IE_J7jx2I_MPYVMR" ;;
                            8) xdg-open "https://youtu.be/AhGMZVnfmeU?si=HRJ9wP2MfSh15mIc" ;;
                            9) xdg-open "https://youtu.be/asNXxmaCwMg?si=ML4TuOWTpmvo9u_3" ;;
                            10) xdg-open "https://youtu.be/K8GZ8SoNfmE?si=RoPwEghq8koeHYzf";;

                            *) echo "Pilihan tidak valid." ;;
                        esac

                    2) 
                        echo "Pilih video Hololive yang ingin ditonton:"
                        echo "1. Hololime"
                        echo "2. YO YO YO YO"
                        echo "3. HoloGPS"
                        echo "4. GG"
                        echo "5. UmU"
                        echo "6. Botan Pats SSRB At High Speed"
                        echo "7. Suisei nanananana"
                        echo "8. Kanata's wall"
                        echo "9. Spinning Okayu"
                        echo "10. Laplus's Wifi"

                        read -p "Pilih video (1-10): " video_hololive_choice
                        
                        case $video_hololive_choice in
                        1) xdg-open "https://youtu.be/fTIO1oEY1FU?si=FbXIreegN8fLjHgv" ;;
                        2) xdg-open "https://youtu.be/Sfeoe7PWi4s?si=YcGogwg884d58ntD" ;;
                        3) xdg-open "https://youtu.be/Y3nBX__WEVQ?si=WL6gm80igl3zkhe9" ;;
                        4) xdg-open "https://youtu.be/9nXYsmTv3Gg?si=GfNjhxkOSG5inyBi" ;;
                        5) xdg-open "https://youtu.be/oSjzMHQv-M8?si=n6TTV_gnHrCrQko2" ;;
                        6) xdg-open "https://youtu.be/xP2UA20G430?si=qqRUFsImGhvpr0uC" ;;
                        7) xdg-open "https://youtu.be/_RPkBzv2jYc?si=fDSddYb0mIFpBRk3";;
                        8) xdg-open "https://youtu.be/kkXnWA0YzNQ?si=IZR9uIrfB3c2e1WD";;
                        9) xdg-open "https://youtu.be/W1z_z1bJSMo?si=vnRJ03N-5GL7yFXF";;
                        10) xdg-open "https://youtu.be/6jtHTfsHTas?si=AMYzgoV9TViQDPRH";;
                            *) echo "Pilihan tidak valid." ;;
                        esac








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