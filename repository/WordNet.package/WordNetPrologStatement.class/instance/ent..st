interpretation
ent: database

	"The ent operator specifies that the second synset is an entailment of first synset. This relation only holds for verbs."

	| synset synsetId otherSynsetId otherSynset |
	synsetId := self parameters first.
	otherSynsetId := self parameters second.
	
	synset := database synsetForId: synsetId.
	otherSynset := database synsetForId: otherSynsetId.
	synset addEntailment: otherSynset.
	otherSynset addEntailmentOf: synset.