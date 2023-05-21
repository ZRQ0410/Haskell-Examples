-- IO TYPE

-- only print Hi, Haskell looks for main
a = print "a"
b = print "b"
-- main = (print "Hi":: IO ())


-- error, should be IO type but get list
-- main = [print 1, print 2, print 3]

-- main = head [print 1, print 2, print 3]  -- 1


-- (): empty tuple
-- means the type has only one value, but we don't care what the value is
greet :: String -> IO ()
greet n = print ("Hi" ++ n)
-- main = greet "Joe"


-- getLine: get the input
-- main = (getLine :: IO String)
-- main = getLine

{-
return: turns the value into an IO value
return is NOT a control flow statement, it does not break out of the loop
output nothing
-}
-- main = (return "Hi" :: IO String)
-- main = return "Hi"



-- IO DEPENDING ON A VALUE
{-
>>= :: IO b -> (b -> IO c) -> IO c
get the input and pass it to a function
>>= expects a FUNCTION!
-}
-- main = getLine >>= (\n -> greet n)
-- same as:
main = getLine >>= greet

-- if drop =, input will not be passed to the function

