calc :: Float -> Float -> Float -> Float

calc a b c = (b * c)/a

main :: IO ()

main = do
        a <- readLn
        b <- readLn
        c <- readLn
        let result = calc a b c
        putStrLn("O valor de x é: " ++ show result)

