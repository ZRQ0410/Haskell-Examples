-- INFINITE DATA

eInt :: Int
eInt = error "Hang on..."
eBool :: Bool
eBool = error "Hang on..."

data MyIntList = Emp | Cons Int (MyIntList)

v1 = Cons 10 (Cons eInt Emp)
v2 = Cons 10 (error "Hi!")

-- strict in the head of the list
-- but non-strict in the tail of the list
myhead :: MyIntList -> Maybe Int
myhead Emp = Nothing
myhead (Cons x xs) = Just x

-- main = print(myhead v1)  -- Just 10
-- main = print(myhead v2)  -- Just 10

-- same as Haskell List:
-- head: get the first element
-- tail: return rest of the list except head
-- main = print(head [1, eInt])  -- 1


mylen :: [Int] -> Int
mylen [] = 0
mylen (x:xs) = 1 + mylen(xs)

-- main = print(mylen [eInt, eInt, eInt])  -- 3
-- mylen is strict in the spine (shape) of the list, argument should be a list
-- main = print(mylen (1:(error "Hi!")))  -- error 

-- take 1: take one element from the list as a list
-- main = print(take 1 (1:(error "Hi!")))  -- [1]
-- main = print(take 2 (1:(error "Hi!")))  -- error


ones = 1:ones  -- run forever
-- main = print(take 10 ones)  -- [1,1,1,1,1,1,1,1,1,1]
-- main = print(take 5 [1..]) -- [1,2,3,4,5]
-- main = print(take 5 (drop 6 [1..]))  -- [7,8,9,10,11]


-- list of all natural numbers: [0..]
nats = 0:[n + 1 | n <- nats]
-- !!: index (from 0)
-- main = print(nats !! 7)  -- 7


-- fibonacci
fib = 1:1:[(fib !! n) + (fib !! (n+1)) | n <- [0..]]
-- main = print(take 5 fib)  -- [1,1,2,3,5]


-- all prime numbers
sieve :: [Int] -> [Int]
sieve [] = []
sieve (x:xs) = x:[y | y <- (sieve xs),
                      y `mod` x /= 0]
primes = sieve [2..]
main = print(take 5 primes)  -- [2,3,5,7,11]
