"
https://github.com/astares/Pharo-SuffixConditionals
"
Class {
	#name : #BaselineOfSuffixConditionals,
	#superclass : #BaselineOf,
	#category : #BaselineOfSuffixConditionals
}

{ #category : #baseline }
BaselineOfSuffixConditionals >> baseline: spec [ 
	<baseline>
	
	spec for: #'common' do: [ 	
		spec 
			package: 'SuffixConditionals-Core';
			package: 'SuffixConditionals-Tests' with: [ spec requires: #('SuffixConditionals-Core') ].

		spec 
			group: 'Core' with: #('SuffixConditionals-Core');
			group: 'Tests' with: #('SuffixConditionals-Tests');
			group: 'all' with: #('Core' 'Tests');
			group: 'default' with: #('all').
	]

]
