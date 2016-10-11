as yet unclassified
normalize: aString

	| tokens |

	tokens := self splitIdentifier: aString.
	^ tokens joinSeparatedBy: '_'