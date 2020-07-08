Class {
	#name : #PmGameTest,
	#superclass : #TestCase,
	#instVars : [
		'game',
		'pacMan',
		'board'
	],
	#category : #'PacMan-Kernel'
}

{ #category : #tests }
PmGameTest >> assertPacManAloneIn: aCell [
	self assertCollection: aCell contents hasSameElements: { pacMan }.
	
	
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
PmGameTest >> testEnsurePacManAloneInItsCell [
	self assertPacManAloneIn: pacMan cell
	
]

{ #category : #tests }
PmGameTest >> testMovesUp [
	| oldCell newCell |
	oldCell := pacMan cell.
	pacMan moveUp.
	newCell := pacMan cell.
	self deny: oldCell identicalTo: newCell.
	self assertPacManAloneIn: newCell contents.
	self assert: oldCell contents isEmpty.
	
	
]
