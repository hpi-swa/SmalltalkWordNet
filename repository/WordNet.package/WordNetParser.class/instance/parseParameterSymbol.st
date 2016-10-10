parsing
parseParameterSymbol

	| symbol |
	symbol := ''.
	[stream peek isLetter]
		whileTrue: [symbol := symbol , stream next asString].
	currentStatement parameters add: symbol asSymbol