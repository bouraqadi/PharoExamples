Class {
	#name : #PmBoard,
	#superclass : #Object,
	#instVars : [
		'cells'
	],
	#category : #'PacMan-Kernel'
}

{ #category : #accessing }
PmBoard >> cellAt: aPoint [
	^cells at: aPoint y at: aPoint x
]

{ #category : #accessing }
PmBoard >> cellAtRandom [
	^cells atRandom
]

{ #category : #initialization }
PmBoard >> initialize [
	super initialize.
	cells := Array2D 
		rows: self length 
		columns: self length
		tabulate: [: x : y | PmCell new].
]

{ #category : #initialization }
PmBoard >> length [
	^25
]
