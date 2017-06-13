as yet unclassified
testWordNetSimilarOnlyForAdjectives

	self synsets do: [:s | 
		self assert: (s similarTo notEmpty or: [s similarAdjectives notEmpty]) ==> [s isAdjective or: [s isAdjectiveSatellite]]]