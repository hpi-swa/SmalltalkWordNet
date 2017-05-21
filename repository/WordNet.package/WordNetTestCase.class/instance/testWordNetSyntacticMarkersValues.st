as yet unclassified
testWordNetSyntacticMarkersValues

	| syntacticMarkers |
	syntacticMarkers := (self words collect: [:w | w syntacticMarker ]) asSet.
	self assert: (syntacticMarkers includes: #predicate).
	self assert: (syntacticMarkers includes: #attributive).
	self assert: (syntacticMarkers includes: #immediatelyPostnominal).
	self assert: (syntacticMarkers includes: #none).
	self assert: syntacticMarkers size = 4.