interpretation
cls: database

	"The cls operator specifies that the first synset has been classified as a member of the class represented by the second synset. Either of the w_num’s can be 0, reflecting that the pointer is semantic in the original WordNet database."

	"synsetId := self parameters first.
	wordNumber := self parameters second.
	otherSynsetId := self parameters third.
	anotherWordNumber := self parameters fourth.
	classType := self parameters fifth."
	
	"synset := database synsetForId: synsetId.
	otherSynset := database synsetForId: otherSynsetId.
	synset addEntailment: otherSynset.
	otherSynset addEntailmentOf: synset."