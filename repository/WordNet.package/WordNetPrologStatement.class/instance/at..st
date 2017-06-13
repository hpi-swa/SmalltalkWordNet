interpretation
at: database

	"The at operator defines the attribute relation between noun and adjective synset pairs in which the adjective is a value of the noun. For each pair, both relations are listed (ie. each synset_id is both a source and target)."

	| otherSynset otherSynsetId synset synsetId |
	synsetId := self parameters first.
	otherSynsetId := self parameters second.
	
	synset := database synsetForId: synsetId.
	otherSynset := database synsetForId: otherSynsetId.
	
	"This check is necessary to avoid installing the same relation
	in both directions. See schema documentation above. --pre"
	synset isNoun
		ifTrue: [synset addAttributeAdjective: otherSynset]
		ifFalse: [self assert: synset isAdjective.
				synset addAttributeOfNoun: otherSynset].