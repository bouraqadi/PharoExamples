Class {
	#name : #BaselineOfPacMan,
	#superclass : #BaselineOf,
	#category : #BaselineOfPacMan
}

{ #category : #baselines }
BaselineOfPacMan >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ 
			spec package: 'PacMan']

]
