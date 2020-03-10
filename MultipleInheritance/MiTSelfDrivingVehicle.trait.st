Trait {
	#name : #MiTSelfDrivingVehicle,
	#instVars : [
		'automaticPilot'
	],
	#category : #MultipleInheritance
}

{ #category : #driving }
MiTSelfDrivingVehicle >> follow: anItinerary [
	Transcript cr; show: 'Following itinerary '; show: anItinerary
]
