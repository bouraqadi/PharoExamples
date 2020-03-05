Class {
	#name : #MgCompilingFibonacciCalculator,
	#superclass : #MgGenerativeFibonacciCalculator,
	#category : #MethodGeneration
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
	self class compileSilently: fiboMethodSource classified: #generated
]
