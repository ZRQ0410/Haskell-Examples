
b = False || (False && True)  -- False

-- Continue the previous line: add a white space in the beginning
n = 1 
 + 7 

b2 = n /= 8  -- False

b3 = (0,0) == (0,0)  -- True

v = 7 * (if b then 5 else 6)  -- 7 * 6 = 42


-- Function
add7 n = n + 7


-- Define all other nums apart from 0 and 1 are small
-- Order does matter!
small 0 = True
small 1 = True
small n = False

{-	
	small 0 = True
	small n = False
	small 1 = True

	Then small 1 will be False
	"small 1 = True" is redundant
-}

-- Regard it as a function of one arg (a pair)
addUp (0,n) = n
addUp (m,0) = m
addUp (m,n) = m + n


-- _: ignore that part of input
first (e,_) = e


-- Recursive definition
fib 0 = 0
fib 1 = 1
fib n = fib(n-2) + fib(n-1)

-- main = print (fib 6)  -- 8



-- STUFF THAT GOES WRONG

oops True = True

-- main = print (oops True)  -- OK, True
-- main = print (oops False)  -- Error, does no define oops False


eep 0 = 0
eep n = 1 + eep n  -- Infinite loop!

yikes = let x = 1 in
 let x = 1 + x in x  -- x = 1 + x: Infinite loop!

y = let x = x in x  -- x = x: Infinite loop!


