as yet unclassified
testWordNetCauseRelationForVerbs

	self synsets do: [:s | 
		self assert: (s causeOf notEmpty or: [s causedBy notEmpty]) 
						==> [s isVerb]]
