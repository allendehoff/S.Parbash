#index fasta reference
bwa index s_paradoxus_mt.fa

#bwa mem and convert fastq to sam
bwa mem s_paradoxus_mt.fa SRR1868831.fastq > SPAR31.sam

#convert sam to bam
samtools view -b -o SPAR31.bam -S SPAR31.sam

#sort bam
samtools sort SPAR31.bam SPAR31.sorted

#index sorted bam
samtools index SPAR31.sorted.bam

#index reference
samtools faidx s_paradoxus_mt.fa

#call SNPs
samtools mpileup -gf s_paradoxus_mt.fa SPAR31.sorted.bam | bcftools view -vcg - > SPAR31_snps_indels.vcf











