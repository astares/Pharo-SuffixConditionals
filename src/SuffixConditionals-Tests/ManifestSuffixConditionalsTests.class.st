"
I store metadata for this package. These meta data are used by other tools such as the SmalllintManifestChecker and the critics Browser
"
Class {
	#name : #ManifestSuffixConditionalsTests,
	#superclass : #PackageManifest,
	#category : #'SuffixConditionals-Tests-Manifest'
}

{ #category : #'code-critics' }
ManifestSuffixConditionalsTests class >> ruleReAssertEqualSignIntoAssertEqualsRuleV1FalsePositive [
	^ #(#(#(#RGClassDefinition #(#SuffixConditionalTest)) #'2020-04-03T15:25:27.24906+02:00') )
]
