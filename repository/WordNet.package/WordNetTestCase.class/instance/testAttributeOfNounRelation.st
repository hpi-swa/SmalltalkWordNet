as yet unclassified
testAttributeOfNounRelation

	self synsets do: [:s |
		self assert: s attributeOfNouns notEmpty 
			==> [s isAdjective and: [s attributeOfNouns allSatisfy: [:os | os isNoun]]].
			
		self assert: s attributeAdjectives notEmpty 
			==> [s isNoun and: [s attributeAdjectives allSatisfy: [:os | os isAdjective]]]. ]