Trait {
	#name : #MiTGpsVehicle,
	#instVars : [
		'gps'
	],
	#category : #MultipleInheritance
}

{ #category : #localizing }
MiTGpsVehicle >> currentPosition [
	^gps currentPosition
]

{ #category : #localizing }
MiTGpsVehicle >> itineraryTo: goalPosition [
	^gps itineraryTo: goalPosition
]
