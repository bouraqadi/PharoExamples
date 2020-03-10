Trait {
	#name : #TGpsVehicle,
	#instVars : [
		'gps'
	],
	#category : #MultipleInheritance
}

{ #category : #localizing }
TGpsVehicle >> currentPosition [
	^gps currentPosition
]

{ #category : #localizing }
TGpsVehicle >> itineraryTo: goalPosition [
	^gps itineraryTo: goalPosition
]
