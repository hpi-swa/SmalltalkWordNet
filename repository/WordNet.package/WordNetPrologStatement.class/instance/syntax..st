interpretation
syntax: database

	| synset synsetId wordObject wordNumber syntaxSymbol |
	synsetId := self parameters first.
	wordNumber := self parameters second.
	syntaxSymbol := self parameters third asSymbol.
	
	synset := database synsetForId: synsetId.
	wordObject := synset words at: wordNumber asNumber.
	wordObject syntacticMarker: (self syntacticMarkerSymbol: syntaxSymbol).