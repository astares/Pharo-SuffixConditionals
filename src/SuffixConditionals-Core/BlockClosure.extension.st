Extension { #name : #BlockClosure }

{ #category : #'*SuffixConditionals-Core' }
BlockClosure >> if: aBoolean [
	^aBoolean ifTrue: [self value]
]

{ #category : #'*SuffixConditionals-Core' }
BlockClosure >> if: aBoolean else: aBlock [
	"Expression optimized to take advantage of the compiler's optimization of ifTrue:ifFalse.
	Equivalent to: ^aBoolean ifTrue: self ifFalse: aBlock"

	^(aBoolean ifTrue: [self] ifFalse: [aBlock]) value
]

{ #category : #'*SuffixConditionals-Core' }
BlockClosure >> unless: aBoolean [
	^aBoolean ifFalse: [self value]
]
