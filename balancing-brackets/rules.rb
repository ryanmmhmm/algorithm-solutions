## Rules for bracket closure

## Simplify the problem and break it down into boolean components

## Define closure (true):
## Closure occurs when an open bracket is followed by a closed bracket
##  like so: "( )"
## Brackets can also be nested and still have closure
## like so: "( () )"

## What is not closure? (false):
## Closure is broken when a bracket set is closed before it has been opened
## like so: ")("
## also, like so: "(()))("
## this is also not closed: "(((((((("

## What can we say about this that is always true?
## the length of the input must always be even <-- Closures occur in pairs

## What if we want to handle multiple bracket types?
##  this is where things can get a little tricky...
##  ...but also where the best solution presents itself