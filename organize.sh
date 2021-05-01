dest_dir=~/Documents/Scans/Shingeki\ no\ Kyojin
vol_pattern='Volume [0-9]+'

while read line
do
    if [[ $line =~ $vol_pattern ]]
    then
        vol_dir=$dest_dir/"$line"
        mkdir -p "$vol_dir"
    else
        num_chapter=$(echo $line | cut -d " " -f 1)
        title_chapter=$(echo $line | cut -d " " -f 2-)
        mv "$dest_dir/Chapitre $num_chapter" "$vol_dir/Chapitre $num_chapter : $title_chapter"
    fi
done < chapters.txt
