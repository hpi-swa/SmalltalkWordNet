interpretation
s: database

	| synset synsetId word wordObject wordType wordNumber |
	synsetId := self parameters first.
	wordNumber := self parameters second.
	word := self parameters third. 
	wordType := self parameters fourth. 
	
	synset := database synsetForId: synsetId.
	wordObject := database newWord: word ofType: wordType.
	synset addWord: wordObject at: wordNumber.
	wordObject partOfSynset: synset.