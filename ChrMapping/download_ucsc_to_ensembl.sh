wget -O chromAlias.txt.gz https://hgdownload.soe.ucsc.edu/goldenPath/$1/database/chromAlias.txt.gz
zcat chromAlias.txt.gz | awk '/ensembl/  {print $2"\t"$1}' > $1_ucsc_to_ensembl.txt
