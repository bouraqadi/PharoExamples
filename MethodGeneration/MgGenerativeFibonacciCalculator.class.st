Class {
	#name : #MgGenerativeFibonacciCalculator,
	#superclass : #MgFibonacciCalculator,
	#category : #MethodGeneration
}

{ #category : #calculating }
MgGenerativeFibonacciCalculator class >> generatedFiboMethodsProtocol [
	^#generated
]

{ #category : #calculating }
MgGenerativeFibonacciCalculator class >> removeAllGeneratedFiboMethods [
	<script>
	self withAllSubclassesDo: #removeGeneratedFiboMethods
]

{ #category : #calculating }
MgGenerativeFibonacciCalculator class >> removeGeneratedFiboMethods [
	self removeProtocol: self generatedFiboMethodsProtocol
]

{ #category : #calculating }
MgGenerativeFibonacciCalculator >> basicFibo: anInteger [
	^(self fibo: anInteger - 2) + (self fibo: anInteger - 1)
]

{ #category : #calculating }
MgGenerativeFibonacciCalculator >> fibo: anInteger [
	| fiboSelector |
	anInteger < 2 ifTrue: [ ^anInteger ].
	fiboSelector := self fiboSelectorFor: anInteger.
	^ [ self perform: fiboSelector ]
		on: MessageNotUnderstood
		do: [ :exception | 
			self generateFiboMethod: fiboSelector for: anInteger.
			exception retry ]
]

{ #category : #calculating }
MgGenerativeFibonacciCalculator >> fiboSelectorFor: anInteger [
	^ Symbol streamContents: [ :str | 
		str 
			<< #fibo;
			print: anInteger]
]

{ #category : #calculating }
MgGenerativeFibonacciCalculator >> generateFiboMethod: fiboSelector for: anInteger [
	^self 
		generateMethod: fiboSelector
		returning: (self basicFibo: anInteger)
]

{ #category : #calculating }
MgGenerativeFibonacciCalculator >> generateMethod: selector returning: result [
	self subclassResponsibility
]

{ #category : #calculating }
MgGenerativeFibonacciCalculator >> generatedFiboMethodsProtocol [
	^self class generatedFiboMethodsProtocol
]
