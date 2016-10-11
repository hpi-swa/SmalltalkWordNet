as yet unclassified
install
	
	| newDatabase |
	newDatabase := self new.
	self loadWordNetInto: newDatabase.
	newDatabase postLoadProcessing.
	Smalltalk at: #WordNet put: newDatabase