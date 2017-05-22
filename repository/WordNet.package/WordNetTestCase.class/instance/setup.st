as yet unclassified
setUp

	Smalltalk at: #WordNet ifAbsent: [
		WordNetDatabase install].
	
	self timeout: 20 minutes asSeconds.