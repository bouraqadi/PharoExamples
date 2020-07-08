Class {
	#name : #PmWallCell,
	#superclass : #Object,
	#classInstVars : [
		'defaultInstance'
	],
	#category : #'PacMan-Models'
}

{ #category : #'instance creation' }
PmWallCell class >> defaultInstance [
	^defaultInstance ifNil: [ defaultInstance := self new ]
]

{ #category : #'adding/removing' }
PmWallCell >> add: anObject [
	^self
]

{ #category : #'adding/removing' }
PmWallCell >> remove: anObject [
	^self
]
