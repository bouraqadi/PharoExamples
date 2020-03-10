Class {
	#name : #SuObservableCounter,
	#superclass : #SuAbstractCounter,
	#traits : 'TObservable',
	#classTraits : 'TObservable classTrait',
	#instVars : [
		'#count => ObservableSlot'
	],
	#category : #SlotUsage
}

{ #category : #example }
SuObservableCounter class >> example [
	<script>
	
	| subject observer |
	subject := self new.
	observer := [ : newPosition | 
		Transcript 
			cr;
			show: 'New count: ';
			show: newPosition
	].
	subject property: #count whenChangedDo: observer.
	(1 to: 3) atRandom timesRepeat: [ subject increment ].
	(1 to: 3) atRandom timesRepeat: [ subject decrement ].
	
	
]

{ #category : #accessing }
SuObservableCounter >> count [
	^count
]

{ #category : #accessing }
SuObservableCounter >> count: newCount [
	count := newCount
]
