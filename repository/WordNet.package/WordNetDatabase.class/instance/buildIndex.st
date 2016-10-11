private
buildIndex

	wordIndex := IdentityDictionary new.
	self data valuesDo: [:sEntry | sEntry wordSet do: [:word |
			(wordIndex at: word word asSymbol ifAbsent: [wordIndex at: word word put: Set new])
				add: sEntry]]
	