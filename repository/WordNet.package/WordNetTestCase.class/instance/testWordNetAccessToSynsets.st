as yet unclassified
testWordNetAccessToSynsets

	self assert: ((WordNet synsetForId: 100001740) isKindOf: WordNetSynset)