"
Subclasses must implement count and count: methods
"
Class {
	#name : #SuAbstractCounter,
	#superclass : #Object,
	#category : #SlotExamples
}

{ #category : #accessing }
SuAbstractCounter >> count [
	self subclassResponsibility
]

{ #category : #accessing }
SuAbstractCounter >> count: newCount [
	self subclassResponsibility
]

{ #category : #counting }
SuAbstractCounter >> decrement [
	self count: self count - 1.
]

{ #category : #counting }
SuAbstractCounter >> increment [
	self count: self count + 1.
]

{ #category : #initialization }
SuAbstractCounter >> initialize [
	self class initializeSlots: self.
	super initialize.
	self count: 0
]
