"
Example

""Evaluate this first""
s := CoContextSwitching new.
result := s call: [Transcript cr; show: 'Compuation stops here' ].
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

{ #category : #'ffi-calls' }
CoSeasideLikeContextSwitching >> answer: result [
	continuation value: {false. result}
]

{ #category : #'ffi-calls' }
CoSeasideLikeContextSwitching >> call: aBlock [
	| response |
	response := Continuation currentDo: [: cc |
		continuation := cc.
		cc value: #(true)].
	response first ifTrue: [
		thisContext terminateTo: thisContext sender sender.
		^aBlock value].
	^response last
]
