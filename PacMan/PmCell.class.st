Class {
	#name : #PmCell,
	#superclass : #Object,
	#instVars : [
		'contents',
		'board',
		'row',
		'column'
	],
	#category : #'PacMan-Kernel'
}

{ #category : #'as yet unclassified' }
PmCell class >> board: board row: row column: column [
	^self new
		board: board;
		row: row;
		column: column;
		yourself
]

{ #category : #accessing }
PmCell >> add: anObject [
	anObject cell: self.
	self contents add: anObject.

]

{ #category : #accessing }
PmCell >> board [
	^ board
]

{ #category : #accessing }
PmCell >> board: anObject [
	board := anObject
]

{ #category : #accessing }
PmCell >> column [
	^ column
]

{ #category : #accessing }
PmCell >> column: anObject [
	column := anObject
]

{ #category : #accessing }
PmCell >> contents [
	^ contents
]

{ #category : #accessing }
PmCell >> contents: anObject [
	contents := anObject
]

{ #category : #initialization }
PmCell >> initialize [
	super initialize.
	contents := Set new.
]

{ #category : #accessing }
PmCell >> neighborDown [
	^self board cellAtRow: self row + 1 column: self column
]

{ #category : #accessing }
PmCell >> neighborLeft [
	^self board cellAtRow: self row column: self column - 1
]

{ #category : #accessing }
PmCell >> neighborRight [
	^self board cellAtRow: self row column: self column + 1
]

{ #category : #accessing }
PmCell >> neighborUp [
	^self board cellAtRow: self row - 1 column: self column
]

{ #category : #accessing }
PmCell >> remove: anObject [ 
	self contents remove: anObject.
]

{ #category : #accessing }
PmCell >> row [
	^ row
]

{ #category : #accessing }
PmCell >> row: anObject [
	row := anObject
]
