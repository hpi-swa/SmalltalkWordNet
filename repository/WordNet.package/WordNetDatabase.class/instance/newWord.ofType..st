accessing
newWord: aString ofType: wordType

	^ WordNetWord new
		word: aString;
		wordType: (self squeakSymbolForType: wordType);
		yourself