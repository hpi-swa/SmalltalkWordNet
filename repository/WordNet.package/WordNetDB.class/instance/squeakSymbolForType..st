accessing
squeakSymbolForType: aWordType

	aWordType = #n ifTrue: [^ #noun].
	aWordType = #v ifTrue: [^ #verb].
	aWordType = #a ifTrue: [^ #adjective].
	aWordType = #s ifTrue: [^ #adjectiveSatellite].
	aWordType = #r ifTrue: [^ #adverb].