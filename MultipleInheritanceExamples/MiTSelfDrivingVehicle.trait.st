Trait {
	#name : #MiTSelfDrivingVehicle,
	#instVars : [
		'automaticPilot'
	],
	#category : #MultipleInheritanceExamples
}

{ #category : #driving }
MiTSelfDrivingVehicle >> follow: anItinerary [
	Transcript cr; show: 'Following itinerary '; show: anItinerary
]
