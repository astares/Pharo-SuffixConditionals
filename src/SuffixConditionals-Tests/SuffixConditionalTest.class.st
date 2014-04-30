Class {
	#name : #SuffixConditionalTest,
	#superclass : #TestCase,
	#category : #'SuffixConditionals-Tests-Core'
}

{ #category : #testing }
SuffixConditionalTest >> testEvaluatesBlockIfConditionIsTrue [
	<test>
	
	| hit |
	hit := false.
	[hit := true] if: true.
	self assert: hit 
]

{ #category : #testing }
SuffixConditionalTest >> testEvaluatesBlockUnlessConditionIsFalse [
	 
	| hit |
	hit := false.
	[hit := true] unless: false.
	self assert: hit
]

{ #category : #testing }
SuffixConditionalTest >> testEvaluatesFirstBlockIfConditionIsTrue [
	 
	| hit |
	hit := nil.
	[hit := #first] if: true else: [hit := #second].
	self assert: hit == #first
]

{ #category : #testing }
SuffixConditionalTest >> testEvaluatesSecondBlockIfConditionIsFalse [
	 
	| hit |
	hit := nil.
	[hit := #first] if: false else: [hit := #second].
	self assert: hit == #second
]

{ #category : #testing }
SuffixConditionalTest >> testIgnoresBlockIfConditionIsFalse [
	 
	| hit |
	hit := false.
	[hit := true] if: false.
	self deny: hit
]

{ #category : #testing }
SuffixConditionalTest >> testIgnoresBlockUnlessConditionIsTrue [
	 
	| hit |
	hit := false.
	[hit := true] unless: true.
	self deny: hit
]

{ #category : #testing }
SuffixConditionalTest >> testReturnsBlockValueIfConditionIsTrue [
	 
	self assert: ([42] if: true) = 42
]

{ #category : #testing }
SuffixConditionalTest >> testReturnsBlockValueUnlessConditionIsFalse [

	self assert: ([42] unless: false) = 42
]

{ #category : #testing }
SuffixConditionalTest >> testReturnsFirstBlockValueIfConditionIsTrue [
 
	self assert: ([42] if: true else: [nil]) = 42
]

{ #category : #testing }
SuffixConditionalTest >> testReturnsNilIfConditionIsFalse [

	self assert: ([42] if: false) isNil
]

{ #category : #testing }
SuffixConditionalTest >> testReturnsNilUnlessConditionIsTrue [

	self assert: ([42] unless: true) isNil
]

{ #category : #testing }
SuffixConditionalTest >> testReturnsSecondBlockValueIfConditionIsFalse [
	
	self assert: ([nil] if: false else: [42]) = 42
]
