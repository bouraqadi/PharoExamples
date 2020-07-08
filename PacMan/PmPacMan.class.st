Class {
	#name : #PmPacMan,
	#superclass : #Object,
	#instVars : [
		'cell'
	],
	#category : #'PacMan-Kernel'
}

{ #category : #accessing }
PmPacMan >> cell [
	^ cell
]

{ #category : #accessing }
PmPacMan >> cell: anObject [
	cell := anObject.
	cell add: self
]

{ #category : #moving }
PmPacMan >> moveUp [
	^self
]
