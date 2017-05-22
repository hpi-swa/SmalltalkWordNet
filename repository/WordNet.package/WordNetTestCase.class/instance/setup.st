as yet unclassified
setUp

	self timeout: 20 minutes asSeconds.
	Smalltalk at: #WordNet ifAbsent: [
		WordNetDatabase install].