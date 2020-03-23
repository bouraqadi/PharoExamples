Class {
	#name : #BaselineOfPharoExamples,
	#superclass : #BaselineOf,
	#category : #BaselineOfPharoExamples
}

{ #category : #baselines }
BaselineOfPharoExamples >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [
			spec
				package: 'MethodGenerationExamples';
				package: 'MultipleInheritanceExamples';
				package: 'SlotExamples';
				package: 'ContinuationExamples';
				package: 'MessageExamples'.
		]
]
