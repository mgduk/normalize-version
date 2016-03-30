chai = require 'chai'
expect = chai.expect
normalize_version = require '../src/normalize-version'

tests =
    '1.0.0': ['1', 3]
    '1.2.0': ['1.2', 3]
    '1.2.3': ['1.2.3', 3]
    '1.2.3.0': ['1.2.3', 4]
    '1.2': ['1.2.3', 2]
    '1': ['1.2.3', 1]
    '0.0.0': [0, 3]

nullTests = [
    []
    ['']
    ['abc']
    ['foo bar baz']
]

describe 'normalize-version', ->
    for s, a of tests
        it "outputs \"#{s}\" given #{JSON.stringify a}", do (s, a) -> -> expect(normalize_version.apply(this, a)).to.equal s
    for a in nullTests
        it "outputs null given #{JSON.stringify a}", do (a) -> -> expect(normalize_version.apply(this, a)).to.be.null
