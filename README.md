# Circle_RNA

The effects of editing sites were probed using the Variant Effect Predictor from ENSEMBL:

	commands used to generate VEF input files - reference original perl scripts written by R. Rahman for the Rosbash Lab 2016 

	perl editsites_to_basecall.pl base_call_input.txt > base_call_even.txt 

	perl create_variant_predictor_input.pl -b base_call_even.txt -s UCSC_table_output_strandedness.txt > variant_predictor_output.txt

Introns flanking known circular RNA were found using UCSC table browser and bedtools: 
	
---dm6 introns were generated using the table browser 
Assembly- dm6
Group- genes and gene predictions 
Track- refSeq
Table- refGene
Output- bed 
Create one bed ouput per- introns 

---flanking regions were generated from known circular rna bed file 

	bedtools flank -i mmc_dm6_bed.txt -g genome.fa.fai -b 300 > flankOut.txt

---known introns were compared to flanking regions and reported using bedtools left outer join 

	bedtools intersect -a flankOut.txt -b dm6_introns_bed.txt -loj > intron_intersect.txt 




