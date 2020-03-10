"
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
	#category : #MultipleInheritance
}
