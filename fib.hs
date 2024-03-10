import Data.Char (digitToInt)

getDigit :: Int -> Int

getDigit num = sum $ map digitToInt $ show num

fib :: Int -> Int
fib n = if n <= 2 then n else fib(n-1) + fib(n-2)

check :: Int -> Int -> Bool
check a b = if a == b
    then True
    else False

menorFib :: Int -> Int -> Int
menorFib num iter =
     if check soma num then fibonacci else menorFib num (iter+1)
     where
          fibonacci = fib iter
	  soma = getDigit(fibonacci)


main :: IO ()
main = do
    num <- readLn
    let resultado = menorFib num 1
    putStrLn $ show $ resultado

