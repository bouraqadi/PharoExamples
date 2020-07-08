Class {
	#name : #PmElement,
	#superclass : #Object,
	#instVars : [
		'cell'
	],
	#category : #'PacMan-Models'
}

{ #category : #accessing }
PmElement >> cell [
	^ cell
]

{ #category : #accessing }
PmElement >> cell: newCell [
	cell remove: self.
	cell := newCell.

]

{ #category : #initialization }
PmElement >> initialize [
	super initialize.
	cell := PmWallCell defaultInstance.
]

{ #category : #interacting }
PmElement >> interactWith: anElement [
	self subclassResponsibility 

]

{ #category : #interacting }
PmElement >> interactWithPacMan: aPacMan [
	^self
]

{ #category : #interacting }
PmElement >> interactWithPebble: aPebble [
	^self
]
