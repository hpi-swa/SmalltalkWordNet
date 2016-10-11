as yet unclassified
postLoadProcessing

	self data values do: [:synset | synset words collect: [:w | w word: (self normalize: w word)]].
	super postLoadProcessing.
	