initialize-release
initialize

	self synsetId: 0.
	self glossary: ''.
	self words: Dictionary new.	
	self hypernyms: Set new.
	self hyponyms: Set new.
	self instances: Set new.
	self instanceOf: Set new.