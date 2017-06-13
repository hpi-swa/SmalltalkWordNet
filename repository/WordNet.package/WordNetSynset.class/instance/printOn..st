printing
printOn: aStream

	aStream nextPutAll: 'Synset ('; nextPutAll: self wordType asString; nextPutAll: ') '.
	
	(self words at: 1) printOn: aStream.
	
	