# S.Parbash

bash script for creating vcf table for S. Paradoxus 31

Allen DeHoff
19SEP2016

SPAR31.sh is the script and all relevant files too big for git are located in my directory for class.

SPAR31.snps.tx is the txt file containing all SNPs with a quality score greater than 100.

Here is the code I used to create the table:
	grep -v 'INDEL' SPAR31_snps_indels.vcf | grep -v '##' | awk '{print $2, "\t", $4, "\t", $5, "\t", $6}' | awk  '$4 > 100' | sort -k 4nr | less -SN > SPAR31.snps.txt	
