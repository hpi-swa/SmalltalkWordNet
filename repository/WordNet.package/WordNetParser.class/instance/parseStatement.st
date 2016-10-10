parsing
parseStatement

	currentStatement := WordNetPrologStatement new.
	self 
		skipWhitespace;
		parsePredicate;
		skipWhitespace.
		
	stream peek = $(
		ifTrue: [stream next]
		ifFalse: [Error signal: 'Parsing error'].
		
	self
		parseParameters;
		skipWhitespace.
		
	stream peek = $)
		ifTrue: [stream next]
		ifFalse: [Error signal: 'Parsing error'].
		
	stream peek = $.
		ifTrue: [stream next]
		ifFalse: [Error signal: 'Parsing error'].
	
	stream atEnd ifTrue: [^ true].
	self skipWhitespace.
	