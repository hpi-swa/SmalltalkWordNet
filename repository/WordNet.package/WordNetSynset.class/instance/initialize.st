initialize-release
initialize

	self synsetId: 0.
	self glossary: ''.
	self 
		words: Dictionary new;	
		hypernyms: Set new;
		hyponyms: Set new;
		instances: Set new;
		instanceOf: Set new;
		entailments: Set new;
		entailmentOf: Set new;
		similarTo: Set new;
		similarAdjectives: Set new;
		memberMeronyms: Set new;
		memberHolonymOf: Set new;
		substanceMeronyms: Set new;
		substanceHolonymOf: Set new;
		partMeronyms: Set new;
		partHolonymOf: Set new;
		causeOf: Set new;
		causedBy: Set new;
		attributeAdjectives: Set new;
		attributeOfNouns: Set new.