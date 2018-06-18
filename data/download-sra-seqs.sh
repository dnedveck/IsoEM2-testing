accessions=`cat SRR_Acc_List.txt`

mkdir sra-seqs

for acc in $accessions
do
	echo "Downloading ${acc}"
	fastq-dump -O ./sra-seqs --gzip --split-files --readids $acc
done
