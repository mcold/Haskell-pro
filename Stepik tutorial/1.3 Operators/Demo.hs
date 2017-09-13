module Demo where

infixl 6 *+*

a *+* b = a ^ 2 + b ^ 2

-- префиксный способ реализации
-- (*+*) a b = a ^ 2 + b ^ 2