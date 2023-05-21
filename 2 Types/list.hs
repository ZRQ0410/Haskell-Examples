-- LIST SYNTAX


-- +++++ Define a list by ourselves: +++++
-- Append takes 2 arguments:
-- first a: type variable
-- second a: a variable of type MyList
data MyList a = Empty | Append a (MyList a)

-- Maybe means: Maybe a = Nothing | Just a
myHead1 :: MyList Int -> Maybe Int
myHead1 Empty = Nothing
myHead1 (Append x xs) = Just x

-- main = print(myHead1(Empty))  -- Nothing
-- main = print(myHead1(Append 11 (Append 10 Empty)))  -- Just 11


-- +++++ Haskell List +++++
myIntHead :: [Int] -> Maybe Int
myIntHead [] = Nothing
myIntHead (x:xs) = Just x

-- main = print(myIntHead (1:2:3:[])) -- Just 1
-- same as:
-- main = print(myIntHead([1,2,3])) -- Just 1


-- make it more generic
myHead :: [a] -> Maybe a
myHead [] = Nothing
myHead (x:xs) = Just x

-- main = print(myHead([1,2,3])) -- Just 1
-- main = print(myHead("Hi!"::[Char]))  -- Just 'H'
-- same as:
-- main = print(myHead("Hi!"::String))  -- Just 'H'


-- +++++ Useful shorthands: +++++
-- main = print([1..5])  -- [1,2,3,4,5]
-- main = print([1,3..10])  -- [1,3,5,7,9], difference is 2


-- list comprehension
l = [(w,n) | w <- "Hi!", n <- [1..3]]
-- main = print(l)
-- [('H',1),('H',2),('H',3),('i',1),('i',2),('i',3),('!',1),('!',2),('!',3)]
-- H + 1/2/3
-- i + 1/2/3
-- ! + 1/2/3

-- add conditions
k = [(w,n) | w <- "Hi!", n <- [1..3], w /= 'i']
main = print(k)
-- [('H',1),('H',2),('H',3),('!',1),('!',2),('!',3)]
