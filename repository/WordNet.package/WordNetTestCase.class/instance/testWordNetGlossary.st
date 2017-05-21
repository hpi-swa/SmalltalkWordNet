as yet unclassified
testWordNetGlossary

	self synsets do: [:s | 
		self assert: s glossary notEmpty]