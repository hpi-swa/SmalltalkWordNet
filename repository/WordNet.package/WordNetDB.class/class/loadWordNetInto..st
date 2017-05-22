as yet unclassified
loadWordNetInto: database

	"This script loads WordNet and assumes that the Prolog database 
	export is in the image folder in a folder named 'wordnet'.
	The script only loads the synset and glossary data sets."
	
	| wordNetRootDirectory filesInLoadOrder statements |
	wordNetRootDirectory := FileDirectory default / 'wordnet'.
	
	filesInLoadOrder := {'wn_s.pl' . 'wn_g.pl' . 'wn_syntax.pl' . 'wn_hyp.pl' . 'wn_ins.pl' . 'wn_ent.pl' . 'wn_sim.pl' . 'wn_mm.pl' . 'wn_ms.pl' . 'wn_mp.pl'}.
	
	filesInLoadOrder do: [:fileName |
		statements := Set new.
		wordNetRootDirectory readOnlyFileNamed: fileName do: [:strm | 
			statements := WordNetParser new parseStream: strm.].
		statements do: [:stmt | stmt interpretIn: database]].