 #!/bin/bash
        find /Users/ctitc/Seachal2017/SeachalGit/Java/book-linxiliang-javase7-samples-source -name *.java -type f | \
        (while read file;
            do if [[ "$file" != *.DS_Store* ]]; then
            if [[ "$file" != *-utf8* ]]; then
                iconv -f gbk -t UTF-8 "$file" > "$file-utf8";
                rm $file;
                echo mv "$file-utf8" "$file";
                mv "$file-utf8" "$file";
            fi
        fi 
        done);