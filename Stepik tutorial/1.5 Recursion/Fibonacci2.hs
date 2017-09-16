fibonacci :: Integer -> Integer
fibonacci n | n == 0 = 0
            | n > 0 = helper 1  0 n
            | n < 0 = helper (-1)  0 n


helper sign acc 0 = acc
helper sign acc 1 = acc + 1
helper 1 acc n = helper 1 acc (n - 1) + helper 1 acc (n - 2)
helper (-1) acc n = helper (-1) acc (n + 2) - helper (-1) acc (n + 1)



fibonacci2 :: Integer -> Integer
fibonacci2 n | n == 0 = 0
            | n == 1 = 1
            | n > 0 = fibonacci2 (n - 1) + fibonacci2 (n - 2)
            | n < 0 = fibonacci2 (n + 2) - fibonacci2 (n + 1)


fibo :: Integer -> Integer
fibo n = help 0 n

help acc n | n == 0 = acc
           | n == 1 = acc + 1
           | n > 0 = help acc (n - 1) + help acc (n - 2)
           | n < 0 = help acc (n + 2) + help acc (n + 1)

-- лучший вариант
fibonacci3 :: Integer -> Integer
fibonacci3 n | n == 0 = 0 
           | n == 1 = 1
           | n == -1 = 1
           | n > 0 = helper2 0 1 n
           | n < 0 = (helper2 0 1 (abs n)) * (-1)^((-n)-1)

helper2 :: Integer -> Integer -> Integer -> Integer 
helper2 prev cur n | n == 1 = cur
                 | otherwise = helper2 cur (prev+cur) (n-1)