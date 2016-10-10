parsing
parseParameters

	self skipWhitespace.
	[stream peek = $)] whileFalse: [
		self 
			parseParameter;
			skipWhitespace.
		stream peek = $,
			ifTrue: [stream next]
			ifFalse: [
				stream peek = $) ifFalse: [Error signal: 'Parsing error']].
		self skipWhitespace.]. 
	