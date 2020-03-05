Class {
	#name : #MgCloningFibonacciCalculator,
	#superclass : #MgGenerativeFibonacciCalculator,
	#category : #MethodGeneration
}

{ #category : #calculating }
MgCloningFibonacciCalculator >> fiboTemplate [
	^#result
]

{ #category : #calculating }
MgCloningFibonacciCalculator >> generateMethod: selector returning: result [
	| fiboMethod |
	fiboMethod := self templateMethod clone.
	fiboMethod literalAt: 1 put: result.
	self class
		addAndClassifySelector: selector 
		withMethod: fiboMethod 
		inProtocol: self generatedFiboMethodsProtocol.

]

{ #category : #calculating }
MgCloningFibonacciCalculator >> templateMethod [
	^self class compiledMethodAt: #fiboTemplate
]
