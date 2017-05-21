baseline
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [
			spec
				package: 'WordNet';
				yourself.
			spec
				group: 'default' with: #('WordNet');
				yourself ]