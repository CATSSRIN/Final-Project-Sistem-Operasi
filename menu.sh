

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
                echo "w-- = write (2)"
                echo "--x = execute (1)"
                echo "jika mau digabungkan maka 7+5+5 = 755"
                echo "dan untuk per user maka ditambah 4+2+1 = 7"

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
                        ;;

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
                        ;;

                    3)
                        echo "Pilih video memes yang ingin ditonton:"
                        echo "1. What you're seeing is Advanced Warfare"
                        echo "2. Top 5 Asian"
                        echo "3. are these fries"
                        echo "4. tactical thermonuclear gnome"
                        echo "5. My Name Is Skyler White, Yo"
                        echo "6. Are You Gonna Stick Me With That Broken Piece Of Plate?"
                        echo "7. habe u seen alien"
                        echo "8. Chernobyl dubbed with Half-Life SFX"
                        echo "9. The Terminator dubbed with Half-Life SFX"
                        echo "10. Give me a drink, bartender"
                        read -p "Pilih video (1-10): " video_memes_choice

                        case $video_memes_choice in
                            1) xdg-open "https://youtu.be/JaXZx34KyQc?si=VX-5zL57rzfsTUkC";;
                            2) xdg-open "https://youtu.be/67Eb2Ba46PE?si=0hz2eG4KkEjEEVOE";;
                            3) xdg-open "https://youtu.be/_CuzqZ9k87c?si=IggMesAfaz2DhB1a";;
                            4) xdg-open "https://youtu.be/YPW_HeOHA1E?si=p96b6rpcGlf3Wbb0";;
                            5) xdg-open "https://youtu.be/pOcg-AdC2Y8?si=Izd0bn1CRc0B65yS";;
                            6) xdg-open "https://youtu.be/sFVrvRjlXH4?si=uEqFmlTgShGhJNnr";;
                            7) xdg-open "https://youtu.be/EtxBvU21J28?si=PCZl0yOVAl968e3k";;
                            8) xdg-open "https://youtu.be/7F1ma_0vwog?si=jVx9EPvPmHjHNFvu";;
                            9) xdg-open "https://youtu.be/OwwkjgHE2mk?si=as5At9GrO2p1HXsq";;
                            10) xdg-open "https://youtu.be/T28LyXf8MlU?si=9w9JOFMgiJULRzG5";;
                            *) echo "Pilihan tidak valid." ;;
                        esac
                        ;;
                    esac
                    ;;

        3)
            echo "Pilih mau konversi cm ke::"
            echo "1. milimeter"
            echo "2. Meter"
            echo "3. Kilometer"
            read -p "Pilih (1-3): " cm_choice

            case $cm_choice in
                1)
                    read -p "Masukkan panjang dalam cm: " cm
                    mm=$(echo "$cm * 10" | bc)
                    echo "$cm cm = $mm mm"
                    ;;

                2)
                    read -p "Masukkan panjang dalam cm: " cm
                    meter=$(echo "scale=2; $cm / 100" | bc)
                    echo "$cm cm = $meter m"
                    ;;

                3)
                    read -p "Masukkan panjang dalam cm: " cm
                    kilometer=$(echo "scale=2; $cm / 100000" | bc)
                    echo "$cm cm = $kilometer km"
                    ;;

                *)
                    echo "Pilihan tidak valid, silakan coba lagi."
                    ;;
            esac
            ;;

        4)
            read -p "Masukkan suhu dalam Celcius: " celcius
            fahrenheit=$(echo "scale=2; $celcius * 9 / 5 + 32" | bc)
            echo "$celcius C = $fahrenheit F"
            ;;

        5)
            read -p "Masukkan panjang sisi persegi dalam cm: " sisi
            luas=$(echo "$sisi * $sisi" | bc)
            echo "Luas persegi dengan sisi $sisi cm adalah $luas cm^2"
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