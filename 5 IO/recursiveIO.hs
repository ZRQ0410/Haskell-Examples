-- RECURSIVELY DEFINED IO VALUES

{-
main = putStrLn "Who is the greatest?" >>
       getLine >>=
       \n -> if n == "Joe"
             then print "Don't forget it!"
             else (putStrLn "Be serious!" >> main)
-}

{-
main = putStrLn "Enter a name:" >>
       getLine >>=
       \n ->
       putStrLn "Enter another name:" >>
       getLine >>=
       \m ->
       putStrLn ("Hi " ++ n ++ " and " ++ m)
-}

-- main = do
--        putStrLn "Enter a name:"
--        n <- getLine
--        putStrLn "Enter another name:"
--        m <- getLine
--        putStrLn ("Hi " ++ n ++ " and " ++ m)


-- output: A B if: input is 0 then output A and call prog
-- else: !
main = let prog = putStrLn("B") >>
                  getLine >>= (\l -> return("A") >>=
                  (\e -> if l == "0" then putStrLn(e) >> prog else putStrLn("!")))
       in putStrLn("A") >> prog