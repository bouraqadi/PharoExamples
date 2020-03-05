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
	anInteger < 2 ifTrue: [ ^anInteger ].
	^ [ self perform: (self fiboSelectorFor: anInteger) ]
		on: MessageNotUnderstood
		do: [ :exception | 
			self generateFiboMethodFor: anInteger.
			exception retry ]
]

{ #category : #calculating }
MgGenerativeFibonacciCalculator >> fiboSelectorFor: anInteger [
	^ #fibo , anInteger asString
]

{ #category : #calculating }
MgGenerativeFibonacciCalculator >> generateFiboMethodFor: anInteger [
	^self 
		generateMethod: (self fiboSelectorFor: anInteger)
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
