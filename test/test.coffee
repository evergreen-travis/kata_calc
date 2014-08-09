###
Dependencies
###
Calculator   = require '../'
should       = require('chai').should
assert       = require 'assert'

describe 'Calculator :: ', ->

  before  ->
    @calc = new Calculator()

  describe 'helpers', ->

  describe 'calculate ', ->

    it 'when the input if a empty string, return the empty string',  ->
      @calc.calculate("").should.eql('')

    it 'when the input is only a string with a Integer, return the Integer', ->
      @calc.calculate("1").should.eql(1)

    it 'when the input is only a string with a Float, return the Float', ->
      @calc.calculate("1.5").should.eql(1.5)

    it 'when the input is finish with a operator, throw a error', ->
      (->
        new Calculator().calculate("1+")
      ).should.throw("Invalid Operation")

      (->
        new Calculator().calculate("1*")
      ).should.throw("Invalid Operation")


     # @calc.calculate("1+")..throw()
     # @calc.calculate("1*").should.throw()
     # @calc.calculate("1-").should.throw()
