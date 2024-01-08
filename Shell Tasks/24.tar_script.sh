#rite shell script to compress the log files by taking input from user.

#!/bin/bash
read -p "Please provide path of log file: " src_path
read -p "Please provide destination location of archive file: " dest_path
echo -e "Please select compression method \n 1.tar \n 2.gunzip \n 3.bunzip: " 
read compression_type

file_name=$(basename "$dest_path")

if [ -n "$src_path" ]; then
    if [ -n "$dest_path" ]; then
        if [ -n "$compression_type" ]; then

            for i in {tar,gunzip,bunzip}; do
                if [ $i == "$compression_type" ]; then
                    found=true
                    break
                else
                    found=false
                fi
            done


            if [ $found == true ]; then
                
            echo "Source path: $src_path"
            echo "Destination path: $dest_path"
            echo "Archive type: $compression_type"

                if [ '$compression_type' == "tar" ]; then
                    echo "Archiving the file with tar"
                    tar cvf "$dest_path/$file_name".tar $src_path
                
    
                elif [ '$compression_type' == "gunzip" ]; then
                    echo "Archiving the file with gzip"
                    tar cvfz "$dest_path/$file_name".gz $src_path
                
    
                elif [ '$compression_type' == "bunzip" ]; then
                    echo "Archiving the file with bzip"
                    tar cvfj "$dest_path/$file_name".bz $src_path
                fi
            else
                echo "Please select proper compression type"
            fi

        else
            echo "Please select compression method"
        fi
    else
        echo "Please provide destincation path"
    fi
else
    echo "Please provide log file path"
fi
