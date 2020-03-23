Class {
	#name : #MeMessageExamples,
	#superclass : #Object,
	#category : #MessageExamples
}

{ #category : #examples }
MeMessageExamples class >> assignments [
	<sampleInstance>
	| a b c d |
	d := (c := OrderedCollection with: (a := 42 factorial) with: (b := 2 * 10)) asSet collect: #printString.
	^{a. b. c. d}
	
]

{ #category : #examples }
MeMessageExamples class >> messages [
	<sampleInstance>
	^Set with: 24135 factorial + 195867 factorial with: -5 abs ** 231
]

{ #category : #examples }
MeMessageExamples class >> parenthesis [
	<sampleInstance>
	^(42 * (Array with: -3.14 with: 99.9)) rounded

]
