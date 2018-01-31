import System.Environment

main :: IO ()
main = do 
    files <- getArgs
    let newFiles = csvsToData files
    putStrLn ( show ( length newFiles ) )
--    csvsToData files
--    fileString <- readFile files[0]
--    putStrLn ( length ( lines . fileString ) )

csvsToData :: [a] -> [a]
csvsToData [] = []
csvsToData (a:as) = [a,a] ++ csvsToData as

--csvToData :: String -> IO [b]
