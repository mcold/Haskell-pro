nTimes:: a -> Int -> [a]
nTimes x n = take n (cycle [x])