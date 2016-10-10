accessing
synsetForId: synsetId

	^ data at: synsetId
			ifAbsent: [data at: synsetId put: (WordNetSynset newWithId: synsetId)]