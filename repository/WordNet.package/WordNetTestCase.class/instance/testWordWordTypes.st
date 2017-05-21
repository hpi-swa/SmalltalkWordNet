as yet unclassified
testWordWordTypes

	self words do: [:s | 
		self assert: (#(noun verb adjective adjectiveSatellite adverb) includes: s wordType) ]