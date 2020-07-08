Class {
	#name : #PmPebble,
	#superclass : #PmElement,
	#category : #'PacMan-Models'
}

{ #category : #interacting }
PmPebble >> interactWith: anElement [
	anElement interactWithPebble: self
]

{ #category : #interacting }
PmPebble >> interactWithPacMan: aPacMan [
	self cell remove: self.
]
