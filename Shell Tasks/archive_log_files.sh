#!/bin/bash
read -p "Please provide path of log file: " src_path
read -p "Please provide destination location of archive file: " dest_path
echo -e "Please select compression method \n 1.tar \n 2.gzip \n 3.bzip: "
read compression_type

# Get the filename from source path
file_name=$(basename "$src_path")

# Check the source path, destination path and compression type
if [ -f "$src_path" ]; then
    if [ -d "$dest_path" ]; then
        if [ -n "$compression_type" ]; then

            # Validate the compression method
            for i in {tar,gzip,bzip}; do
                if [ $i == "$compression_type" ]; then
                    found=true
                    break
                else
                    found=false
                fi
            done

            # Make sure compression type is correct
            if [ $found == true ]; then

                echo "Source path: $src_path"
                echo "Destination path: $dest_path"
                echo "Archive type: $compression_type"
                echo " "
                if [ "$compression_type" == "tar" ]; then
                    echo "==========Archiving the file with tar============-"
                    tar cvf "$dest_path/$file_name.tar" "$src_path"

                elif [ "$compression_type" == "gzip" ]; then
                    echo ""==========Archiving the file with gzip"=========="
                    tar cvzf "$dest_path/$file_name.tar.gz" "$src_path"

                elif [ "$compression_type" == "bzip" ]; then
                    echo ""==========Archiving the file with bzip"=========="
                    tar -cvfj "$dest_path/$file_name.tar.bz" "$src_path"
                fi
            else
                echo "Please select proper compression type"
            fi

        else
            echo "Please select compression method"
        fi
    else
        echo "Destination path does not exists"
    fi
else
    echo "Source path does not exisis"
fi
