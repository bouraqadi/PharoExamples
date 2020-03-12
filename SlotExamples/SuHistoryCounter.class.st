Class {
	#name : #SuHistoryCounter,
	#superclass : #SuAbstractCounter,
	#instVars : [
		'#count => HistorySlot size: 5'
	],
	#category : #SlotExamples
}

{ #category : #example }
SuHistoryCounter class >> example [
	<script>
	
	| counter |
	counter := self new.
	(1 to: 10) atRandom timesRepeat: [ counter increment ].
	(1 to: 10) atRandom timesRepeat: [ counter decrement ].
	Transcript cr; show: 'Count history: '; show: counter countHistory
		
]

{ #category : #accessing }
SuHistoryCounter >> count [
	^count
]

{ #category : #accessing }
SuHistoryCounter >> count: newCount [
	count := newCount
]

{ #category : #accessing }
SuHistoryCounter >> countHistory [
	^(self class slotNamed: #count) readHistory: self
]
