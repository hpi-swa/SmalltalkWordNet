query
synonymsFor: aWord

	^ ((wordIndex at: aWord asSymbol ifAbsent: [#()]) 
		gather: [:s | s wordSet collect: [:w | w word] ]) copyWithout: aWord