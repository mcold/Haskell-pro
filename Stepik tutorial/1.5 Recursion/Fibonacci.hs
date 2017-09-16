fibonacci2 :: Integer -> Integer
fibonacci2 n | n == 0 = 0
            | n == 1 = 1
            | n > 0 = fibonacci2 (n - 1) + fibonacci2 (n - 2)
            | n < 0 = fibonacci2 (n + 2) - fibonacci2 (n + 1)


factorial5 :: Integer -> Integer
factorial5 n | n > 0 = helper 1 n
             | otherwise error "arg must be >= 0"

helper :: Integer -> Integer -> Integer
helper acc 0 = acc
helper acc n = helper (acc * n)  (n - 1)


fibonacci :: Integer -> Integer
fibonacci n | n = 0 = 0
            | n > 0 = helper 1  0 n
            | n < 0 = helper -1  0 n


helper sign acc 0 = acc
helper sign acc 1 = acc + 1
helper 1 acc n = helper 1 acc (n - 1) + helper 1 acc (n - 2)
helper -1 acc n = helper -1 acc (n + 2) - helper acc (n + 1)