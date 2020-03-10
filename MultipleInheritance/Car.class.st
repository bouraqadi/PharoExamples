Class {
	#name : #Car,
	#superclass : #Vehicle,
	#instVars : [
		'gearbox'
	],
	#category : #MultipleInheritance
}

{ #category : #driving }
Car >> break: aDuration [
	Transcript cr; show: 'Breaking for '; show: aDuration
]

{ #category : #driving }
Car >> shiftTo: aGear [
	Transcript cr; show: 'Shifting to '; show: aGear
]
