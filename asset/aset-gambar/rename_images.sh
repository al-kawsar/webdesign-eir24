#!/bin/bash

# Path ke folder gallery
FOLDER="avif"

# Counter untuk penamaan
count=1

# Mengubah nama semua file gambar dalam folder
for file in "$FOLDER"/*.{jpg,png,jpeg,gif,JPG,PNG,mp4,mp3,avif}; do
    if [ -f "$file" ]; then
        # Ekstensi file
        extension="${file##*.}"
        
        # Nama file baru
        new_name="${count}.${extension}"
        
        # Mengubah nama file
        mv "$file" "$FOLDER/$new_name"
        
        # Menambah counter
        count=$((count + 1))
    fi
done

echo "Semua file telah diubah namanya secara berurutan dari 1 hingga $((count-1))."
