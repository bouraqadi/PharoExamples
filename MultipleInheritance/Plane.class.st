Class {
	#name : #Plane,
	#superclass : #Vehicle,
	#instVars : [
		'wingspan',
		'areFlapsExtended'
	],
	#category : #MultipleInheritance
}

{ #category : #driving }
Plane >> extendFlaps [
	areFlapsExtended := true
]

{ #category : #driving }
Plane >> retractFlaps [
	areFlapsExtended := false
]
