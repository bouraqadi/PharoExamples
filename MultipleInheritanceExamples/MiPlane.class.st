Class {
	#name : #MiPlane,
	#superclass : #MiVehicle,
	#instVars : [
		'wingspan',
		'areFlapsExtended'
	],
	#category : #MultipleInheritanceExamples
}

{ #category : #driving }
MiPlane >> extendFlaps [
	areFlapsExtended := true
]

{ #category : #driving }
MiPlane >> retractFlaps [
	areFlapsExtended := false
]
