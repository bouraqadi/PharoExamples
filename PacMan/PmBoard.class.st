Class {
	#name : #PmBoard,
	#superclass : #Object,
	#instVars : [
		'cells'
	],
	#category : #'PacMan-Kernel'
}

{ #category : #accessing }
PmBoard >> addWallAtRow: row column: column [
	cells at: row at: column put: PmNullCell defaultInstance.
]

{ #category : #accessing }
PmBoard >> cellAtRandom [
	^cells atRandom
]

{ #category : #accessing }
PmBoard >> cellAtRow: row column: column [
	^[cells at: row at: column] on: Error do: [ PmNullCell defaultInstance ]
]

{ #category : #initialization }
PmBoard >> initialize [
	super initialize.
	cells := Array2D 
		rows: self length 
		columns: self length
		tabulate: [: row : column | PmCell board: self row: row column: column].
]

{ #category : #initialization }
PmBoard >> length [
	^25
]
