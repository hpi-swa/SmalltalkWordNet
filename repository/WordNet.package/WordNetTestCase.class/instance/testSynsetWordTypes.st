as yet unclassified
testSynsetWordTypes

	self synsets do: [:s | 
		self assert: (#(noun verb adjective adjectiveSatellite adverb) includes: s wordType) ]