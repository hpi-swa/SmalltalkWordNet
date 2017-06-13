as yet unclassified
testWordNetPartMeronymOnlyForNouns
	
	self synsets do: [:s | 
		self assert: (s partMeronyms notEmpty or: [s partHolonymOf notEmpty]) 
						==> [s isNoun]]