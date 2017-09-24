module Sum_n_count where

-- мое решение
sum'n'count :: Integer -> (Integer, Integer)
sum'n'count x = (x1, x2) where 
        (x1, x2) = (read [u], read [w]) 
        u = l !! (0)
        w = l !! (1)
        l = show x

-- show переводит в строку
sum'n'count3 :: Integer -> (Char, Char)
sum'n'count3 x = (x1, x2) where 
        (x1, x2) = (l !! (0), l !! (1)) 
        l = [show x !! (0) , show x !! (1)]
 
sum'n'count2 :: Integer -> (Char, Char)
sum'n'count2 x = (x1, x2) where 
        (x1, x2) = (l !! (0), l !! (1)) 
        l = show x



-- example: num'string "Happy"
num'string :: [Char] -> Char
num'string x = x !! (0)



int_to_str :: Integer -> [Char]
int_to_str x = [show x !! (0) , show x !! (1)]