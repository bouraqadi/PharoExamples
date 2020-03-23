"
Anytime prime number generators. Finds the largest prime within a finite amount of time (see metho findMaxPrimeWithin:). Remembers all primes generated. Successive calls add up and allow finding even bigger numbers.

Computes prime numbers based on Sieve of Eratosthenes algorithm (https://en.wikipedia.org/wiki/Sieve_of_Eratosthenes)
"
Class {
	#name : #CoAnyTimePrimesGenerator,
	#superclass : #Object,
	#instVars : [
		'isTimeToAnswer',
		'primes',
		'startTime',
		'searchDuration',
		'currentUpBound'
	],
	#category : #ContinuationExamples
}

{ #category : #generating }
CoAnyTimePrimesGenerator >> basicFindMaxPrime [
	[ 
		currentUpBound := currentUpBound + 1000.
		self primesUpTo: currentUpBound.
		self isTimeToAnswer ifTrue: [ ^ self maxPrime ] 
	] repeat
]

{ #category : #generating }
CoAnyTimePrimesGenerator >> findMaxPrime [
	^self findMaxPrimeWithin: 500 milliSeconds
]

{ #category : #generating }
CoAnyTimePrimesGenerator >> findMaxPrimeWithin: aDuration [
	searchDuration := aDuration.
	startTime := self now.
	^self basicFindMaxPrime
]

{ #category : #generating }
CoAnyTimePrimesGenerator >> initialize [
	super initialize.
	primes := OrderedCollection with: 2.
	currentUpBound := 0.


]

{ #category : #generating }
CoAnyTimePrimesGenerator >> isTimeToAnswer [
	^(self now - startTime) < searchDuration
]

{ #category : #generating }
CoAnyTimePrimesGenerator >> maxPrime [
	^ primes last
]

{ #category : #generating }
CoAnyTimePrimesGenerator >> now [
	^DateAndTime now
]

{ #category : #accessing }
CoAnyTimePrimesGenerator >> primes [
	^primes
]

{ #category : #generating }
CoAnyTimePrimesGenerator >> primesUpTo: maxCandidate [
	| minCandidate candidates newPrime |
	minCandidate := self maxPrime + 1.
	candidates := (minCandidate to: maxCandidate) asOrderedCollection.
	primes do: [ : currentPrime |
		self removeFrom: candidates compositesOf: currentPrime
	].
	[candidates isEmpty] whileFalse: [
		newPrime := candidates removeFirst.
		primes add: newPrime.
		self removeFrom: candidates compositesOf: newPrime
	].
	^primes
]

{ #category : #generating }
CoAnyTimePrimesGenerator >> removeFrom: aCollection compositesOf: prime [
	| max |
	aCollection ifEmpty: [ ^self ].
	max := aCollection last.
	2 to: (max/prime) floor do: [ : factor |
			aCollection remove: factor * prime ifAbsent: nil
	]		

]
