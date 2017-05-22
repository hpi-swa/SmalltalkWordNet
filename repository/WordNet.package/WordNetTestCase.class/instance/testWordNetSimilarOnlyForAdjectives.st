as yet unclassified
testWordNetSimilarOnlyForAdjectives

	self synsets do: [:s | 
		self assert: (s similarTo notEmpty or: [s similarAdjectives notEmpty]) ==> [#(adjective adjectiveSatellite) includes: s wordType]]