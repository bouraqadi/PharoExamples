Class {
	#name : #MiPlane,
	#superclass : #MiVehicle,
	#instVars : [
		'wingspan',
		'areFlapsExtended'
	],
	#category : #MultipleInheritance
}

{ #category : #driving }
MiPlane >> extendFlaps [
	areFlapsExtended := true
]

{ #category : #driving }
MiPlane >> retractFlaps [
	areFlapsExtended := false
]
