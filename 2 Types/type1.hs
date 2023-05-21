-- TYEPS AND TYPE INFERENCE

f :: Int -> Int
f x = x + 1

-- main = print(f (10))  -- 11

-- Error: type doesn't match
-- main = print(f (10::Double))
-- main = print((1::Int) + (1::Double))


big :: Int -> Bool
big x = x > 10

-- main = print(big 11)  -- True


j :: Bool -> Bool
j x = False

-- Error: should be a boolean but get '10'
-- main = print(j 10)

-- a: type variable:
-- works for all input types, but can only output boolean
k :: a -> Bool
k x = True
main = print(k 10 && k False)  -- True