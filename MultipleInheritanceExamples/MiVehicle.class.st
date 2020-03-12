Class {
	#name : #MiVehicle,
	#superclass : #Object,
	#instVars : [
		'seatsCount',
		'passengers',
		'speed',
		'throttle'
	],
	#category : #MultipleInheritanceExamples
}

{ #category : #accessing }
MiVehicle >> passengers [
	^ passengers
]

{ #category : #accessing }
MiVehicle >> passengers: anObject [
	passengers := anObject
]

{ #category : #accessing }
MiVehicle >> seatsCount [
	^ seatsCount
]

{ #category : #accessing }
MiVehicle >> seatsCount: anObject [
	seatsCount := anObject
]

{ #category : #accessing }
MiVehicle >> speed [
	^ speed
]

{ #category : #accessing }
MiVehicle >> speed: anObject [
	speed := anObject
]

{ #category : #accessing }
MiVehicle >> throttle [
	^ throttle
]

{ #category : #accessing }
MiVehicle >> throttle: anObject [
	throttle := anObject
]
