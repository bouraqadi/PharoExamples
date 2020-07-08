Class {
	#name : #PmGameTest,
	#superclass : #TestCase,
	#instVars : [
		'game',
		'pacMan',
		'board'
	],
	#category : #'PacMan-Tests'
}

{ #category : #tests }
PmGameTest >> assertPacManAloneIn: aCell [
	self assertCollection: aCell contents hasSameElements: { pacMan }.
	
	
]

{ #category : #tests }
PmGameTest >> assertPositionCellRow: row column: column unchangedAfter: aBlock [
	| cell |
	cell := board cellAtRow: row column: column.
	cell add: pacMan.
	aBlock value.
	self assert: pacMan cell identicalTo: cell. 
	self assertPacManAloneIn: cell.
	
]

{ #category : #tests }
PmGameTest >> assertPositionChangedAfter: aBlock [
	| oldCell newCell |
	oldCell := pacMan cell.
	aBlock value.
	newCell := pacMan cell.
	self deny: oldCell identicalTo: newCell.
	self assertPacManAloneIn: newCell contents.
	self assert: oldCell contents isEmpty.
	
	
]

{ #category : #running }
PmGameTest >> setUp [
	super setUp.
	game := PmGame new.
	game emptyBoard.
	game addPacManAtCenter.
	pacMan := game pacMan.
	board := game board.

]

{ #category : #tests }
PmGameTest >> testMoveOutsideBoardForbidden [
	self assertPositionCellRow: 1 column: 1 unchangedAfter: [ pacMan moveUp ].
	self assertPositionCellRow: 1 column: 1 unchangedAfter: [ pacMan moveLeft ].
	self assertPositionCellRow: 1 column: board length unchangedAfter: [ pacMan moveUp ].
	self assertPositionCellRow: 1 column: board length unchangedAfter: [ pacMan moveRight ].
	self assertPositionCellRow: board length column: 1 unchangedAfter: [ pacMan moveDown ].
	self assertPositionCellRow: board length column: board length unchangedAfter: [ pacMan moveRight ].
	self assertPositionCellRow: board length column: board length unchangedAfter: [ pacMan moveDown ].

]

{ #category : #tests }
PmGameTest >> testMoveToEmptyCell [
	self assertPositionChangedAfter: [pacMan moveUp].
	self assertPositionChangedAfter: [pacMan moveDown].
	self assertPositionChangedAfter: [pacMan moveLeft].
	self assertPositionChangedAfter: [pacMan moveRight].
	
	
]

{ #category : #tests }
PmGameTest >> testMovingToCellWithPebble [
	| cell cellAbove initialScore |
	cell := pacMan cell.
	initialScore := pacMan score.
	cellAbove := cell neighborUp.
	cellAbove add: PmPebble new.
	pacMan moveUp.
	self assertPacManAloneIn: cellAbove.
	self assert: pacMan score equals: initialScore + 1.
]

{ #category : #tests }
PmGameTest >> testMovingToWallCellsForbidden [
	| cell cellAbove |
	cell := pacMan cell.
	cellAbove := cell neighborUp.
	board addWallAtRow: cellAbove row column: cellAbove column.
	pacMan moveUp.
	self assert: pacMan cell identicalTo: cell. 
	self assertPacManAloneIn: cell.
]

{ #category : #tests }
PmGameTest >> testPacManInitiallyAloneInItsCell [
	self assertPacManAloneIn: pacMan cell
	
]
