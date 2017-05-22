as yet unclassified
install
	
	| newDatabase |
	newDatabase := self new.
	self loadWordNetInto: newDatabase.
	newDatabase postLoadProcessing.
	Instance := newDatabase