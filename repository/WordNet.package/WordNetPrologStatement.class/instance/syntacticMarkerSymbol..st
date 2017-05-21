interpretation
syntacticMarkerSymbol: prologSymbol

	prologSymbol = #p ifTrue: [^ #predicate].
	prologSymbol = #a ifTrue: [^ #attributive].
	prologSymbol = #ip ifTrue: [^ #immediatelyPostnominal].