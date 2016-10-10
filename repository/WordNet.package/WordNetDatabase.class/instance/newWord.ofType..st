accessing
newWord: aString ofType: wordType

	^ WordNetWord new
		word: aString;
		wordType: wordType;
		yourself