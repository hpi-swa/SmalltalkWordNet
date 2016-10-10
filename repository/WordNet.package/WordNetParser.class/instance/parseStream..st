public
parseStream: aStream

	result := OrderedCollection new.
	stream := aStream.
	self parseStatements.
	^ result