interpretation
g: database

	| synset synsetId text |
	synsetId := self parameters first.
	text := self parameters second.
	
	synset := database synsetForId: synsetId.
	synset glossary: text.