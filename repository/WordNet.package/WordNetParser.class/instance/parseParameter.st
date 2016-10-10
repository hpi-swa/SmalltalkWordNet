parsing
parseParameter

	stream peek isDigit ifTrue: [
		^ self parseParameterNumber ].
	
	stream peek isLetter ifTrue: [
		^ self parseParameterSymbol ].
	
	stream peek = $' ifTrue: [
		^ self parseParameterString ].