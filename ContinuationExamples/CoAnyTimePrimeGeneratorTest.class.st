Class {
	#name : #CoAnyTimePrimeGeneratorTest,
	#superclass : #TestCase,
	#instVars : [
		'generator'
	],
	#category : #ContinuationExamples
}

{ #category : #tests }
CoAnyTimePrimeGeneratorTest >> setUp [
	super setUp.
	generator := CoAnyTimPrimesGenerator new.

]

{ #category : #tests }
CoAnyTimePrimeGeneratorTest >> testFindMaxPrime [
	self assert: generator findMaxPrime equals: 997.
	self assert: generator findMaxPrime equals: 1999.
	self assert: generator findMaxPrime equals: 2999.
]

{ #category : #tests }
CoAnyTimePrimeGeneratorTest >> testPrimesUpTo [
	| max actualPrimes expectedPrimes |
	max := 1000.
	actualPrimes := generator primesUpTo: max.
	expectedPrimes := Integer primesUpTo: max.
	self assertCollection: actualPrimes hasSameElements: expectedPrimes
]
