Class {
	#name : #Vehicle,
	#superclass : #Object,
	#instVars : [
		'seatsCount',
		'passengers',
		'speed',
		'throttle'
	],
	#category : #MultipleInheritance
}

{ #category : #accessing }
Vehicle >> passengers [
	^ passengers
]

{ #category : #accessing }
Vehicle >> passengers: anObject [
	passengers := anObject
]

{ #category : #accessing }
Vehicle >> seatsCount [
	^ seatsCount
]

{ #category : #accessing }
Vehicle >> seatsCount: anObject [
	seatsCount := anObject
]

{ #category : #accessing }
Vehicle >> speed [
	^ speed
]

{ #category : #accessing }
Vehicle >> speed: anObject [
	speed := anObject
]

{ #category : #accessing }
Vehicle >> throttle [
	^ throttle
]

{ #category : #accessing }
Vehicle >> throttle: anObject [
	throttle := anObject
]
