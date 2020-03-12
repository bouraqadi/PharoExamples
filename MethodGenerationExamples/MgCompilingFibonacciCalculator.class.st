Class {
	#name : #MgCompilingFibonacciCalculator,
	#superclass : #MgGenerativeFibonacciCalculator,
	#category : #MethodGenerationExamples
}

{ #category : #calculating }
MgCompilingFibonacciCalculator >> generateMethod: selector returning: result [
	| fiboMethodSource |
	fiboMethodSource := String streamContents: [ : writeStream |
		writeStream
			<< selector;
			crtab;
			<< $^;
			print: result
	].
	SystemAnnouncer uniqueInstance suspendAllWhile: [
		self class 
			compile: fiboMethodSource 
			classified: #generated 
			withStamp: nil 
			notifying: nil 
			logSource: false]
]
