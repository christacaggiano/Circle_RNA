# Circle_RNA

The effects of editing sites were probed using the Variant Effect Predictor from ENSEMBL:

	commands used to generate VEF input files - reference original perl scripts written by R. Rahman for the Rosbash Lab 2016 

	perl editsites_to_basecall.pl base_call_input.txt > base_call_even.txt 

	perl create_variant_predictor_input.pl -b base_call_even.txt -s UCSC_table_output_strandedness.txt > variant_predictor_output.txt
