Class {
	#name : #MgRecurciveFibonacciCalculator,
	#superclass : #MgFibonacciCalculator,
	#category : #MethodGeneration
}

{ #category : #calculating }
MgRecurciveFibonacciCalculator >> fibo: anInteger [
	anInteger < 2 ifTrue: [ ^anInteger ].
	^(self fibo: anInteger - 2) + (self fibo: anInteger - 1)
]
