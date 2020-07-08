Class {
	#name : #PmPacMan,
	#superclass : #PmElement,
	#instVars : [
		'score'
	],
	#category : #'PacMan-Models'
}

{ #category : #interacting }
PmPacMan >> incrementScore [
	score := score + 1
]

{ #category : #initialization }
PmPacMan >> initialize [
	super initialize.
	score := 0.
]

{ #category : #interacting }
PmPacMan >> interactWith: anObject [
	anObject interactWithPacMan: self
]

{ #category : #interacting }
PmPacMan >> interactWithPebble: aPubble [
	self incrementScore.

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

{ #category : #accessing }
PmPacMan >> score [
	^ score
]

{ #category : #accessing }
PmPacMan >> score: anObject [
	score := anObject
]
