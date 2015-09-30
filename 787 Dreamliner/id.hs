module Id where

import Data.List
--1
null' [] = True
null' _ = False
--2
length' [] = 0
length' (x:xs) = 1 + (length' xs)
--3
sum' [] = 0
sum' (x:xs) = x + (sum' xs)
--cara mikirnya haskell
-- sum [1,2,3] => 1 + sum [2,3] ==> 1+5 = 6
-- sum [2,3] => 2 + sum [3] ==> 2+3 = 5
-- sum [3] => 3 + sum [] ==> 3 aja
-- hasil ono semua barulah ditotal ma haskell (6+5+3)

--4
drop' _ [] = []
drop' 0 xs = xs
drop' n (x:xs) = drop' (n-1) xs
-- drop 3 [10,11,12,1,2,3,4] = [1,2,3,4]
-- nah pikiran awal paling mujarab buat nemuin rekursifnya gini:
-- si x itu udh pasti jatoh, brati tinggal peduliin xs yg akan jatoh
-- si n dikurangin 1 biar sejumlah n-1 dr xs jatoh juga
-- jadi elemen2 yg mesti jatoh kecover semua, yaitu:
-- si x ama si n-pertama dari xs

--5
head' (x:xs) = x
--6
dropWhile' p [] = []
dropWhile' p (x:xs)
  | p x = dropWhile' p xs
  | otherwise = (x:xs)
--7
fst' (a,b) = a
--8
snd' (a,b) = b
--9
tail' (_:xs) = xs
--10
last' [x] = x
last' (_:xs) = last' xs
--11
init' [x] = []
init' (x:xs) = x: init' xs
--12
max' x y
  | x >= y = x
  | otherwise = y
--13
min' x y
  | x <= y = x
  | otherwise = y
--14
foldl' f z [] = z
foldl' f z (x:xs) = foldl' f (f z x) xs
--15
foldl1' f (x:xs) = foldl' f x xs
--16
zipWith' z (a:as) (b:bs) = z a b : zipWith' z as bs
zipWith' _ _ _ = []
--17
zip' xs ys = zipWith' pair xs ys
  where pair x y = (x, y)
--18
product' xs = foldl' (*) 1 xs
--19
takeWhile' p [] = []
takeWhile' p (x:xs)
  | p x = x : takeWhile' p xs
  | otherwise = []
--20
minimum' xs = foldl1' min' xs
--21
maximum' xs = foldl1' max' xs
--22
