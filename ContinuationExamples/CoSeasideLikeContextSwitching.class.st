"
Example

""Evaluate this first""
s := CoSeasideLikeContextSwitching new.
result := s call: [Transcript cr; show: 'Computation stops here' ].
Transcript 
	cr; 
	show: 'Computation resumed';
	cr;
	show: 'Result is '; show: result.

""Next evaluate the following""
s answer: 42.
"
Class {
	#name : #CoSeasideLikeContextSwitching,
	#superclass : #Object,
	#instVars : [
		'continuation'
	],
	#category : #ContinuationExamples
}

{ #category : #'call-response' }
CoSeasideLikeContextSwitching >> answer: result [
	continuation value: {true. result}
]

{ #category : #'call-response' }
CoSeasideLikeContextSwitching >> call: aBlock [
	| response rootContext |
	response := Continuation currentDo: [: cc |
		continuation := cc.
		cc value: #(false)].
	response first ifTrue: [^response last].
	rootContext := thisContext.
	[rootContext sender sender isNil] whileFalse: [ rootContext := rootContext sender ].
	thisContext swapSender: rootContext.
	aBlock value.
	
]
