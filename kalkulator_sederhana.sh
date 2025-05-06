#!/bin/bash

while true; do
    clear
    echo "==== Kalkulator Sederhana ===="
    echo "1. Penjumlahan"
    echo "2. Pengurangan"
    echo "3. Perkalian"
    echo "4. Pembagian"
    echo "5. Keluar"
    echo -n "Pilih operasi (1-5): "
    read pilihan

    if [ "$pilihan" -eq 5 ]; then
        echo "Keluar dari kalkulator..."
        break
    fi


  if [[ "$pilihan" =~ ^[1-4]$ ]]; then
    echo -n "Masukkan angka pertama: "
    read angka1
    echo -n "Masukkan angka kedua: "
    read angka2

    case $pilihan in
        1)
            hasil=$((angka1 + angka2))
            echo "Hasil: $angka1 + $angka2 = $hasil"
            ;;
        2)
            hasil=$((angka1 - angka2))
            echo "Hasil: $angka1 - $angka2 = $hasil"
            ;;
        3)
            hasil=$((angka1 * angka2))
            echo "Hasil: $angka1 * $angka2 = $hasil"
            ;;
        4)
            if [ "$angka2" -eq 0 ]; then
                echo "Error: Pembagian dengan nol tidak diperbolehkan."
            else
                hasil=$(echo "scale=2; $angka1 / $angka2" | bc)
                echo "Hasil: $angka1 / $angka2 = $hasil"
            fi
            ;;
       esac
    else
        echo "Pilihan harus antara 1-5"
    fi

    read -p "Tekan Enter untuk kembali ke menu..."
done

