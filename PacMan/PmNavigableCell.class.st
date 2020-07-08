Class {
	#name : #PmNavigableCell,
	#superclass : #Object,
	#instVars : [
		'contents',
		'board',
		'row',
		'column'
	],
	#category : #'PacMan-Models'
}

{ #category : #'as yet unclassified' }
PmNavigableCell class >> board: board row: row column: column [
	^self new
		board: board;
		row: row;
		column: column;
		yourself
]

{ #category : #accessing }
PmNavigableCell >> add: anObject [
	self contents do: [ : each | 
		each interactWith: anObject.
		anObject interactWith: each ].
	anObject cell: self.
	self contents add: anObject.

]

{ #category : #accessing }
PmNavigableCell >> board [
	^ board
]

{ #category : #accessing }
PmNavigableCell >> board: anObject [
	board := anObject
]

{ #category : #accessing }
PmNavigableCell >> column [
	^ column
]

{ #category : #accessing }
PmNavigableCell >> column: anObject [
	column := anObject
]

{ #category : #accessing }
PmNavigableCell >> contents [
	^ contents
]

{ #category : #accessing }
PmNavigableCell >> contents: anObject [
	contents := anObject
]

{ #category : #initialization }
PmNavigableCell >> initialize [
	super initialize.
	contents := Set new.
]

{ #category : #accessing }
PmNavigableCell >> neighborDown [
	^self board cellAtRow: self row + 1 column: self column
]

{ #category : #accessing }
PmNavigableCell >> neighborLeft [
	^self board cellAtRow: self row column: self column - 1
]

{ #category : #accessing }
PmNavigableCell >> neighborRight [
	^self board cellAtRow: self row column: self column + 1
]

{ #category : #accessing }
PmNavigableCell >> neighborUp [
	^self board cellAtRow: self row - 1 column: self column
]

{ #category : #accessing }
PmNavigableCell >> remove: anObject [ 
	self contents remove: anObject.
]

{ #category : #accessing }
PmNavigableCell >> row [
	^ row
]

{ #category : #accessing }
PmNavigableCell >> row: anObject [
	row := anObject
]
