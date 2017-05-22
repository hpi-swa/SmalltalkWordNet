as yet unclassified
testWordNetInstancesOnlyForNouns

	self synsets do: [:s | 
		self assert: (s instances notEmpty or: [s instanceOf notEmpty]) 
						==> [s wordType = #noun]]