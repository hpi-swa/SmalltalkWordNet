parsing
parsePredicate

	| predicateSymbol |
	predicateSymbol := ''.
	[stream peek isLetter or: [stream peek isDigit]]
		whileTrue: [predicateSymbol := predicateSymbol , stream next asString].
	currentStatement predicate: predicateSymbol asSymbol.