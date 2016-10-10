parsing
parseParameterNumber

	| number |
	number := ''.
	[stream peek isDigit]
		whileTrue: [number := number , stream next asString].
	currentStatement parameters add: number asNumber.