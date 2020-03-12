Class {
	#name : #MgIterativeFibonacciCalculator,
	#superclass : #Object,
	#category : #MethodGenerationExamples
}

{ #category : #calculating }
MgIterativeFibonacciCalculator >> fibo: anInteger [
	| fiboN1 fiboN2 fibo |
	anInteger < 2 ifTrue: [ ^anInteger ].
	fiboN1 := 1.
	fiboN2 := 0.
	(anInteger - 1) timesRepeat: [
		fibo := fiboN2 + fiboN1.
		fiboN2 := fiboN1.
		fiboN1 := fibo. 
	].
	^fibo
]
