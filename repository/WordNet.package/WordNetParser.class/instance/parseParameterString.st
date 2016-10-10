parsing
parseParameterString

	| string char |
	string := ''.
	
	stream next. "To skip the ' at the beginning."
	
	char := stream next.
	[char = $' and: [stream peek ~~ $']]
		whileFalse: [
			char = $' ifTrue: [
				"We are seeing an escaped tick so skip one character."
				stream next].
			string := string , char asString.
			char := stream next.].
	
	"The ' at the end is already skipped."
	
	currentStatement parameters add: string.