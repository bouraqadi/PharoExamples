Trait {
	#name : #TSelfDrivingVehicle,
	#instVars : [
		'automaticPilot'
	],
	#category : #MultipleInheritance
}

{ #category : #driving }
TSelfDrivingVehicle >> follow: anItinerary [
	Transcript cr; show: 'Following itinerary '; show: anItinerary
]
