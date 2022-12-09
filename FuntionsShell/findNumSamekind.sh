#! /bin/sh
echo "What is the file you are looking for information"
read file

check_files()
{
    num=$(ls -1 "*.$1" | wc -l | sed 's/ //g')
    if [ "$?" = "0" ];then
        echo "The number of the files is $num.\nThanks."
    else
    
        echo "There is no files.\nThanks."

    fi 
}

check_files $file