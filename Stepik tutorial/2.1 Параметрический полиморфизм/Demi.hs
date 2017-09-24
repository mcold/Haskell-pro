module Demo where

-- мономорфная функция
mono :: Char -> Char
mono x = x

-- функция мономорфна по 1-ому аргументу и полиморфна по второму
semiMono :: Char -> a -> Char
semiMono :: x y = x