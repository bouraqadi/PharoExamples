"
A bug prevents from editing the class definition. It is duplicated here as a workaround.

Object subclass: #MiC
	uses: MiTA @ { #yA -> #y. #yA: -> #y: } - { #y. #y: } >> (#y -> #yA) + MiTB
	instanceVariableNames: ''
	classVariableNames: ''
	package: 'MultipleInheritance'
"
Class {
	#name : #MiC,
	#superclass : #Object,
	#traits : '(MiTA @ {#yA->#y. #yA:->#y:}) - {#y. #y:} >> (#y -> #yA) + MiTB',
	#classTraits : 'MiTA classTrait + MiTB classTrait',
	#category : #MultipleInheritanceExamples
}
