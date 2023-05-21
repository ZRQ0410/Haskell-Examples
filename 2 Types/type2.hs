-- TYPE CONSTRUCTORS

-- :: typing symbol
-- -> type constructor
-- left hand side: input type
-- right hand side: output type
sumPair :: (Int, Int) -> Int
sumPair (x,y) = x + y

-- take a function as input
atTen :: (Int -> Bool) -> Bool
atTen f = f(10)

-- main = print(atTen(\x -> True))  -- True
-- same as:
-- main = print(atTen((\x -> True) :: Int -> Bool))


-- get a function and x, then apply the function to x
-- if the function requires input type to be Int, then x must be Int
myApp :: (Int -> Bool) -> Int -> Bool
myApp f x = f x

main = print(myApp(\x -> True) 10)  -- True

-- Or: use generic type
myApp2 :: (a -> b) -> a -> b
myApp2 f x = f x

-- Error: Couldn't match type ‘c’ with type ‘b’
myApp3 :: (a -> b) -> a -> c
myApp3 f x = f x
