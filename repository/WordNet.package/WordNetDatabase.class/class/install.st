as yet unclassified
install
	
	| newDatabase |
	newDatabase := self new.
	self loadWordNetInto: newDatabase.
	newDatabase buildIndex.
	Smalltalk at: #WordNet put: newDatabase