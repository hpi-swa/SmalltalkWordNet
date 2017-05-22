as yet unclassified
testWordNetMemberMeronymOnlyForNouns
	
	self synsets do: [:s | 
		self assert: (s memberMeronyms notEmpty or: [s memberHolonymOf notEmpty]) 
						==> [s wordType = #noun]]