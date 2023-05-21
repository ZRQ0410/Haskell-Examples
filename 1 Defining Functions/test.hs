data IntList = Empty | Colon Int IntList deriving (Eq, Show)

mySum :: [Int] -> Int
mySum [] = 0
mySum (x:l) = x + (mySum l)

-- main = print(mySum([1,2]))

mean :: [Int] -> Float
mean l = (fromIntegral (sum l) / (fromIntegral (length l)))


main = print(fromIntegral 2)