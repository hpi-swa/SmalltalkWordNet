interpretation
mm: database

	"The mm operator specifies that the second synset is a member meronym of the first synset. This relation only holds for nouns. The reflexive operator, member holonym, can be implied."

	| synset synsetId otherSynsetId otherSynset |
	synsetId := self parameters first.
	otherSynsetId := self parameters second.
	
	synset := database synsetForId: synsetId.
	otherSynset := database synsetForId: otherSynsetId.
	synset addMemberHolonymOf: otherSynset.
	otherSynset addMemberMeronymOf: synset.