-- SOME USEFUL FORM OF DEFINITION

-- small 0 = True
-- small 1 = True
-- small n = False

smallB n = case n + 1 of
 0 -> True
 1 -> True
 n -> False

-- main = print (smallB 1)  -- 2 -> False


sideOfFive n
 | d > 0 = 1
 | d < 0 = -1
 -- | d == 0 = 0
 | otherwise = 0
 where d = n - 5

-- main = print (sideOfFive 6)  -- 1


y = let x = 10 + 10 in x + x  -- x = 20, y = 40

-- z = 20 (x = 10 is shadowed)
z = let x = 10 in
 let x = 20 in x


-- Eg1.
w1 = let x = 5 in
 let f = \n -> x in
 let x = 6 in
 f 0
{- f: assign n to 5 (x not change) \n -> 5
   we redefine x = 6, but in f x is already replaced by 5
   f 0: send 0 to 5 => (x not change)
   w1 = 5
-}

-- Eg2.
w2 = let x = 5 in
 let f = \n -> x in
 let x = 6 in
 x
{- the most recent definition of x is 6
   w2 = 6 
-}

main = print (w2)