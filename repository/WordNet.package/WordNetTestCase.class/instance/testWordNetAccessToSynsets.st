as yet unclassified
testWordNetAccessToSynsets

	self assert: ((self wordnet synsetForId: 100001740) isKindOf: WordNetSynset)