parsing
parseStatements

	[stream atEnd] whileFalse: [
		currentStatement := nil.
		self parseStatement.
		result add: currentStatement.]