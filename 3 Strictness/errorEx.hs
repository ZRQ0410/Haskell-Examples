-- ERROR VALUES

-- x = x would run forever


-- runtime error
-- Non-exhaustive patterns in function badhead
-- badhead :: [Int] -> Int
-- badhead (x:xs) = x

-- main = print(badhead [])


-- error can be used for testing, but
-- NOT to use the error expression in real code!
-- use Maybe instead
eInt :: Int
eInt = error "Hang on..."

eBool :: Bool
eBool = error "Hang on..."

-- main = print(eBool)  -- get error message

-- f is STRICT in its argument: 
-- if the argument is an error, then so is its result
f x = x + 3
-- main = print(f eInt)  -- error

-- g is NON-STRICT:
-- even the argument is an error, the result is still well-defined
g x = 5
-- main = print(g eInt)  -- 5


-- Testing: multiplication operator
-- main = print(eInt * 0)  -- error
main = print(0 * eInt)  -- error
-- * operator is strict in both its arguments
