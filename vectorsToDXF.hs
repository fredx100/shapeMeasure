import System.Environment
import Data.List.Split

type Vector = (Float, Float, String)

main :: IO ()
main = do
    files <- getArgs
    let file = head files
    putStrLn ( "Length of files = " ++ show ( length files ) )

    fileContent <- readFile file
    let fileLines = lines fileContent
    let firstLine = head fileLines
    putStrLn ( firstLine )
    putStrLn ( show ( splitOn "," firstLine ) )
    putStrLn ( showTup ("a","b","c") )
    let tuple = csvToTuple ( splitOn "," firstLine )
    putStrLn ( showTup tuple )
--  let firstCsv = csvToData . head files
--  putStrLn (firstCsv)
--    let newFiles = csvsToData files
--    putStrLn ( show ( length newFiles ) )
--    csvsToData files
--    fileString <- readFile files[0]
--    putStrLn ( length ( lines . fileString ) )

-- -- maps filenames to arrays of data tuples
-- csvsToData :: [String] -> [[Vector]]
-- csvsToData = map csvToData

-- -- maps a simgle filename to an array of data tuples
-- csvToData :: String -> [Vector]
-- csvToData = map csvToTuple . splitOn "," . lines . readFile

--temp :: FilePath -> [String]
--temp = lines . readFile

-- maps a csv row to a data tuple
csvToTuple :: [String] -> Vector
csvToTuple [len,ang,label] = (read len :: Float, read ang :: Float, label)
csvToTuple [len,ang] = (read len :: Float, read ang :: Float, "")

showTup :: (Show a, Show b, Show c) => (a, b, c) -> String
showTup (a, b, c) = "(" ++ (show a) ++ ", " ++ (show b) ++ ", " ++ (show c) ++ ")"
