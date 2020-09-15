import Test.Tasty
import Test.Tasty.HUnit

main :: IO ()
main = defaultMain tests

tests = testGroup "Tests"
  [ testCase "Stuck test" $ do
      [1,2,3] @?= f [1,2,3]
  ]

f :: [a] -> [a]
f [] = []
-- f xs = last [0..] `seq` xs  -- careful with this it can eat ram very fast
f (x:xs) = last (repeat x) : xs
