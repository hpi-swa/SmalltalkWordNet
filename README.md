# SmalltalkWordNet
Provides an object representation of the wordnet database.

## Setup
To use the wordnet objects in your image you need to put the Prolog database serialization of
wordnet (https://wordnet.princeton.edu/wordnet/download/) in a 'wordnet' folder in the default image folder.

You can then load the data through:

````Smalltalk
WordNetDatabase install.
````

This will provide a global object ````WordNet```` which provides access to the data.
