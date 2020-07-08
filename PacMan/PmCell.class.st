Class {
	#name : #PmCell,
	#superclass : #Object,
	#instVars : [
		'contents'
	],
	#category : #'PacMan-Kernel'
}

{ #category : #accessing }
PmCell >> add: anObject [
	self contents add: anObject
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
