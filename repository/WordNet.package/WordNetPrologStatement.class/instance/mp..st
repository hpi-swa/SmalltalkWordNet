interpretation
mp: database

	"The mp operator specifies that the second synset is a part meronym of the first synset. This relation only holds for nouns. The reflexive operator, part holonym, can be implied."

	| synset synsetId otherSynsetId otherSynset |
	synsetId := self parameters first.
	otherSynsetId := self parameters second.
	
	synset := database synsetForId: synsetId.
	otherSynset := database synsetForId: otherSynsetId.
	synset addPartHolonymOf: otherSynset.
	otherSynset addPartMeronymOf: synset.