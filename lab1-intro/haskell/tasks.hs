-- The following function definition contains a syntax error:
-- (To enable the code, delete contents of lines 10 and 3 and line -- on line 24)
{-
sayHello :: IO ()
sayHello =
  do
  let name = "Alice"
   putStrLn "hello"
  putStrLn name
-}
import System.Exit (exitSuccess)

myFunc x  = show (x*10) ++ " is the output"

ask :: Int -> String -> IO ()
ask count prompt =
  do
  putStrLn (prompt ++ replicate count '!')
  line <- getLine
  if line == "" && count < 2 
    then ask (count + 1) prompt
  else if line == "" && count >= 2
    then putStrLn "Calm down type something" >> exitSuccess
   else if line == "quit"
   then exitSuccess
    else putStrLn ("you said: " ++ reverse line)


main :: IO ()
main =
  do

  --sayHello
  ask 0 "please say something"