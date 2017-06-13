interpretation
cs: database

	"The cs operator specifies that the second synset is a cause of the first synset. This relation only holds for verbs."

	| secondSynset secondSynsetId synset synsetId |
	synsetId := self parameters first.
	secondSynsetId := self parameters second.
	
	synset := database synsetForId: synsetId.
	secondSynset := database synsetForId: secondSynsetId.
	
	secondSynset addCauseOf: synset.
	synset addCausedBy: secondSynset.
	