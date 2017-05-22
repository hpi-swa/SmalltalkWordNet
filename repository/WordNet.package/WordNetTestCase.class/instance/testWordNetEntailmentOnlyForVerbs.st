as yet unclassified
testWordNetEntailmentOnlyForVerbs

	self synsets do: [:s | 
		self assert: (s entailments notEmpty or: [s entailmentOf notEmpty]) 
						==> [s wordType = #verb]]