interpretation
ms: database

	"The ms operator specifies that the second synset is a substance meronym of the first synset. This relation only holds for nouns. The reflexive operator, substance holonym, can be implied."

	| synset synsetId otherSynsetId otherSynset |
	synsetId := self parameters first.
	otherSynsetId := self parameters second.
	
	synset := database synsetForId: synsetId.
	otherSynset := database synsetForId: otherSynsetId.
	synset addSubstanceHolonymOf: otherSynset.
	otherSynset addSubstanceMeronymOf: synset.