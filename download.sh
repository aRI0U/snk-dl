base_url=https://attaquetitans.com/manga/shingeki-no-kyojin-scan
dest_dir=~/Documents/Scans/Shingeki\ no\ Kyojin

mkdir -p "$dest_dir"

for ((chapter=1; chapter<=139; ++chapter))
do
    echo Chapitre $chapter 
    # create chapter dir
    chapter_dir=$dest_dir/Chapitre\ $chapter
    mkdir -p "$chapter_dir"
    
    # build url
    if (( $chapter < 130 ))
    then
        url=$base_url-$chapter/
    else
        url=$base_url-$chapter-vf/
    fi    
    
    # parse html
    curl $url | xmllint --xpath '//meta[@property="og:image"]/@content' --nowarning --html - | grep -Po 'content="\K[^"]*' | while read img; do
        # download
        wget -nc -nv -P "$chapter_dir" $img
    done
done
