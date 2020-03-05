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
MgFibonacciCalculatorTest >> testSpeedGenerativeVsIterative [
	| generativeRunDuration iterativeRunDuration number repetitions |
	number := 200.
	repetitions := 5000.
	generativeRunDuration := self timeToRunFibo: number with: compilingFibo repeat: repetitions.
	iterativeRunDuration := self timeToRunFibo: number with: iterativeFibo repeat: repetitions.
	self assert: generativeRunDuration < iterativeRunDuration.

]

{ #category : #running }
MgFibonacciCalculatorTest >> testSpeedGenerativeVsRecursive [
	| generativeRunDuration recursiveRunDuration  number repetitions |
	number := 30.
	repetitions := 50.
	generativeRunDuration := self timeToRunFibo: number with: compilingFibo repeat: repetitions.
	recursiveRunDuration := self timeToRunFibo: number with: recursiveFibo repeat: repetitions.
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

{ #category : #running }
MgFibonacciCalculatorTest >> timeToRunFibo: number with: calculator repeat: iterations [
	^[iterations timesRepeat: [ calculator fibo: number ]] timeToRun. 

]
