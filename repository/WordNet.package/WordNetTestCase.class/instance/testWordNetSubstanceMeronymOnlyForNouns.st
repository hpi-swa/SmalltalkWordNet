as yet unclassified
testWordNetSubstanceMeronymOnlyForNouns
	
	self synsets do: [:s | 
		self assert: (s substanceMeronyms notEmpty or: [s substanceHolonymOf notEmpty]) 
						==> [s isNoun]]