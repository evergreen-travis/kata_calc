# 4. As in the case before, if the string contains an plus operator followed by a number, like that "+1", it returns "Invalid Operation"
# 5. If the string containts a plus operator between two numbers, it makes an adition: "1+1" => 2


# -- Public -----------------------------------------------
class Calculator

  _operators: -> ['+', '*', '/', '-']

  _lastCharacter: (operation) ->
    operation[operation.length-1]

  _isLastCharacterIsAOperator: (operation) ->

    last_Character = @_lastCharacter(operation)

    condition = false
    index = 0

    while(not condition and index < @_operators.length)
      console.log 'here'
      operator = @_operators[index]
      if last_Character is operator
        condition = true
        console.log 'entra'
      ++index

    condition

  calculate: (operation) ->
    return operation if operation.length is 0
    return throw new Error("Invalid Operation") if @_isLastCharacterIsAOperator(operation)
    parseFloat(operation)



# -- Exports ----------------------------------------------
exports = module.exports = Calculator
