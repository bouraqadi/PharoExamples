Class {
	#name : #MiCar,
	#superclass : #MiVehicle,
	#instVars : [
		'gearbox'
	],
	#category : #MultipleInheritance
}

{ #category : #driving }
MiCar >> break: aDuration [
	Transcript cr; show: 'Breaking for '; show: aDuration
]

{ #category : #driving }
MiCar >> shiftTo: aGear [
	Transcript cr; show: 'Shifting to '; show: aGear
]
