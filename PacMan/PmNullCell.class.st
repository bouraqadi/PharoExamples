Class {
	#name : #PmNullCell,
	#superclass : #Object,
	#classInstVars : [
		'defaultInstance'
	],
	#category : #'PacMan-Kernel'
}

{ #category : #'instance creation' }
PmNullCell class >> defaultInstance [
	^defaultInstance ifNil: [ defaultInstance := self new ]
]

{ #category : #'adding/removing' }
PmNullCell >> add: anObject [
	^self
]

{ #category : #'adding/removing' }
PmNullCell >> remove: anObject [
	^self
]
