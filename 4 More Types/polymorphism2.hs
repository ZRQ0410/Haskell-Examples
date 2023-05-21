-- AD-HOC POLYMORPHISM
-- TYPECLASS

-- ad-hoc polymorphism / overloading
-- main = print(1.0 + 1.0, 1 + 1)
-- (2.0,2): different inputs, different results, same function

-- a is descriptive if it has an implementation: describe :: a -> String
class Descriptive a where
 describe :: a -> String

instance Descriptive Bool where
 describe True = "Yep!"
 describe False = "Don't bet on it!"

instance Descriptive Int where
 describe 1 = "The loniest number :("
 describe _ = "Another boring number."


-- if a is descriptive then the function works
instance (Descriptive a) => Descriptive [a] where
 describe [] = "Nothing else!"
 describe (x:xs) = (describe x) ++ ", then " ++ describe(xs)


-- for all a, if a is descriptive, then descrLen has type a -> Int
descrLen :: Descriptive a => a -> Int
descrLen x = length(describe x)

-- need to use Int explicitly
-- main = print(describe (1::Int))  -- 21

-- main = print(describe [True, True, False])
-- Yep!, then Yep!, then Don't bet on it!, then Nothing else!



-- built-in Eq a
-- a is an instance of Eq: values can be compared fot equality

-- define our own Eq
class MyEq a where
 (===) :: a -> a -> Bool
 (=/=) :: a -> a -> Bool
 x =/= y = not(x === y)

instance MyEq Bool where
 False === False = True
 True === True = True
 _ === _ = False

-- main = print(False =/= True)  -- True

-- the inputs need to be both MyEq and Descriptive type
ifEqD :: (Descriptive b, Descriptive c, MyEq a) => a -> a -> b -> c -> String
ifEqD w x y z = if (w === x) then (describe y) else (describe z)

-- main = print(ifEqD True True True False)  -- Yep!



-- built-in: Show, has a function show displaying data
-- class Show a where
 -- show :: a -> String

-- main = print(show [1,2,3,4,5,6])

data Pcolour1 = R1 | G1 | B1
-- error: expect the element to be an instance of Show
-- main = print(R1)

data Pcolour2 = R2 | G2 | B2 deriving (Show)
-- main = print(R2) -- R2

data Pcolour = R | G | B

instance Show Pcolour where
 show R = "red"
 show G = "green"
 show B = "blue"

-- main = print([R, G, B])  -- [red,green,blue]



data ToyType =  Bird | Cloud | Meteor deriving (Eq)

data Mobile = Toy ToyType | Stick Mobile Mobile

instance Eq Mobile where
 (Toy a) == (Toy b) = a == b
 (Stick w x) == (Stick y z) = ((w == y) && (x == z)) || ((w == z) && (x == y))
 _ == _ = False

main = print((Stick (Toy Meteor) (Stick (Toy Bird) (Toy Cloud))) == (Stick (Toy Meteor) (Stick (Toy Cloud) (Toy Bird))))  -- True

