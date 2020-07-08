Class {
	#name : #PmGame,
	#superclass : #Object,
	#instVars : [
		'pacMan',
		'board'
	],
	#category : #'PacMan-Kernel'
}

{ #category : #initialization }
PmGame >> addPacManAtCenter [
	| halfLength centerCell |
	halfLength := board length//2.
	centerCell := board cellAtRow: halfLength column: halfLength.
	centerCell add: pacMan.
]

{ #category : #accessing }
PmGame >> board [
	^ board
]

{ #category : #accessing }
PmGame >> board: anObject [
	board := anObject
]

{ #category : #initialization }
PmGame >> emptyBoard [
	board := PmBoard new.

]

{ #category : #initialization }
PmGame >> initialize [
	super initialize.
	pacMan := PmPacMan new.

]

{ #category : #accessing }
PmGame >> pacMan [
	^ pacMan
]

{ #category : #accessing }
PmGame >> pacMan: anObject [
	pacMan := anObject
]
