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
PmPacMan >> cell: newCell [
	cell remove: self.
	cell := newCell.

]

{ #category : #initialization }
PmPacMan >> initialize [
	super initialize.
	cell := PmNullCell defaultInstance.
]

{ #category : #moving }
PmPacMan >> moveDown [
	cell neighborDown add: self
]

{ #category : #moving }
PmPacMan >> moveLeft [
	cell neighborLeft add: self
]

{ #category : #moving }
PmPacMan >> moveRight [
	cell neighborRight add: self
]

{ #category : #moving }
PmPacMan >> moveUp [
	cell neighborUp add: self
]
