main = do { 
    line <- getLine ; 
    if (line == "EOF")  
        then return () ; 
        else do  {
            putStrLn ( reverse line ) ;
            main  ;
        }
}
