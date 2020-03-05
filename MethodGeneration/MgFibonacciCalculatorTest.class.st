Class {
	#name : #MgFibonacciCalculatorTest,
	#superclass : #TestCase,
	#instVars : [
		'calculators',
		'iterativeFibo',
		'recursiveFibo',
		'compilingFibo',
		'cloningFibo'
	],
	#category : #MethodGeneration
}

{ #category : #running }
MgFibonacciCalculatorTest >> allCalculators [
	^{iterativeFibo. recursiveFibo}, self generativeCalculators
]

{ #category : #running }
MgFibonacciCalculatorTest >> generativeCalculators [
	^{compilingFibo. cloningFibo}

]

{ #category : #running }
MgFibonacciCalculatorTest >> setUp [
	super setUp.
	MgGenerativeFibonacciCalculator removeAllGeneratedFiboMethods.
	iterativeFibo := MgIterativeFibonacciCalculator new.
	recursiveFibo := MgRecurciveFibonacciCalculator new.
	compilingFibo := MgCompilingFibonacciCalculator new.
	cloningFibo := MgCloningFibonacciCalculator new.

]

{ #category : #running }
MgFibonacciCalculatorTest >> tearDown [
	super tearDown.
	MgGenerativeFibonacciCalculator removeAllGeneratedFiboMethods.

]

{ #category : #running }
MgFibonacciCalculatorTest >> testGenerationCost [
	| number coldGenerativeRunDuration hotGenerativeRunDuration |
	number := 30.
	self generativeCalculators do: [ : calculator | 
		coldGenerativeRunDuration := [ calculator fibo: number ] timeToRun. 
		hotGenerativeRunDuration := [ calculator fibo: number ] timeToRun. 
		self assert: hotGenerativeRunDuration < coldGenerativeRunDuration.
	]

]

{ #category : #running }
MgFibonacciCalculatorTest >> testSpeed [
	| iterations number  generativeRunDuration recursiveRunDuration |
	iterations := 50.
	number := 30.
	generativeRunDuration := [ iterations timesRepeat: [compilingFibo fibo: number] ] timeToRun.
	recursiveRunDuration := [ iterations timesRepeat: [recursiveFibo fibo: number] ] timeToRun. 
	self assert: generativeRunDuration < recursiveRunDuration.
	
]

{ #category : #running }
MgFibonacciCalculatorTest >> testValues [
	#(0 1 1 2 3 5 8 13 21 34 55 89 144) withIndexDo: [ : expectedFibo : number | 
		self allCalculators do: [ : each |
			self assert: (each fibo: number - 1) equals: expectedFibo.
		]
	]
]
