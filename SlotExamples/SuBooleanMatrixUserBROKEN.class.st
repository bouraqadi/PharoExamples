"
Instantiating this class fails, because the Array2D does not understand asBit method required by the BooleanSlot
"
Class {
	#name : #SuBooleanMatrixUserBROKEN,
	#superclass : #Object,
	#instVars : [
		'#bits => BooleanSlot'
	],
	#category : #SlotExamples
}

{ #category : #initialization }
SuBooleanMatrixUserBROKEN >> initialize [
	
	self class initializeSlots: self.
	super initialize.
	bits := Array2D new.
]
