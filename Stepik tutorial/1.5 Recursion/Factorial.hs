module Demo where

factorial :: Integer -> Integer
factorial n = if n == 0 then 1 else n * factorial (n - 1)


factorial' 0 = 1
factorial' n = if n < 0 then error "arg must be >= 0" else n * factorial' (n - 1)

factorial'' 0 = 1
factorial'' n | n < 0  = error "arg must be >= 0"
              | n > 0  = n * factorial'' (n - 1)


factorial3 :: Integer -> Integer
factorial3 n | n == 0 = 1
             | n > 0 = n * factorial3 (n - 1)
             | otherwise = error "arg must be >= 0"