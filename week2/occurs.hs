occurs :: Char -> String -> Bool
occurs x "" = False
occurs x (y:ys)
    | x == y = True
    | otherwise = occurs x ys
