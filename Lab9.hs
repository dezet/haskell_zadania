module Lab9 where

data Tree a = MyEmptyNode
              | MyFilledNode a (Tree a) (Tree a)
              deriving (Eq,Ord,Show,Read)

data Tree2 b = Leaf b | Filled (Tree2 b) (Tree2 b)
main = do
    let myTree2 = MyFilledNode 5 (MyFilledNode 3 (MyFilledNode 5 (MyFilledNode 1 MyEmptyNode MyEmptyNode) MyEmptyNode) MyEmptyNode) ( MyFilledNode 8 MyEmptyNode MyEmptyNode)
    let treeHeight = heightBinTree myTree2
    print(treeHeight)

heightBinTree :: Tree a -> Int
heightBinTree MyEmptyNode = 0
heightBinTree (MyFilledNode _ left right) = 1 + max (heightBinTree left) (heightBinTree right)

--
-- sizeBinTree :: Tree a -> Int
-- sizeBinTree MyEmptyNode = 0
-- sizeBinTree (MyFilledNode _ left right) =


-- a) heightBinTree, która obliczy głębokość drzewa.
--
-- b) sizeBinTree, która obliczy ilość węzłów w drzewie.
--
-- c) maxBinTree, która obliczy największy element w drzewie.
--
-- d) preBinTree, której wartością jest lista elementów drzewa w porządku prefiksowym.





-- sizeBinTree :: Tree a -> Int
-- sizeBinTree MyEmptyNode = 0
-- sizeBinTree (MyFilledNode _ left right) =


-- a) heightBinTree, która obliczy głębokość drzewa.
--
-- b) sizeBinTree, która obliczy ilość węzłów w drzewie.
--
-- c) maxBinTree, która obliczy największy element w drzewie.
--
-- d) preBinTree, której wartością jest lista elementów drzewa w porządku prefiksowym.