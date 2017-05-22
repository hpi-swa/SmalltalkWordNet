interpretation
ins: database

	"The ins operator specifies that the first synset is an instance of the second synset. This relation holds for nouns. The reflexive operator, has_instance, implies that the second synset is an instance of the first synset."

	| synset synsetId otherSynsetId otherSynset |
	synsetId := self parameters first.
	otherSynsetId := self parameters second.
	
	synset := database synsetForId: synsetId.
	otherSynset := database synsetForId: otherSynsetId.
	synset addInstanceOf: otherSynset.
	otherSynset addInstance: synset.