Trait {
	#name : #MiTGpsVehicle,
	#instVars : [
		'gps'
	],
	#category : #MultipleInheritanceExamples
}

{ #category : #localizing }
MiTGpsVehicle >> currentPosition [
	^gps currentPosition
]

{ #category : #localizing }
MiTGpsVehicle >> itineraryTo: goalPosition [
	^gps itineraryTo: goalPosition
]
