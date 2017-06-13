as yet unclassified
testWordNetSimilarToDefinesClusters

	self synsets do: [:s | 
		self assert: ((s similarTo notEmpty and: [s wordType ~= #adjective]) ==>
						[(s similarTo anyOne similarAdjectives includes: s) 
							and: [s similarTo allSatisfy: [:similar | similar isAdjective]]])]