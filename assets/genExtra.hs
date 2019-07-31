import System.Directory

filesToImport = [ "License"
                , "LMCPrograms"   , "LMCBoardDraw"      , "LMCFull"
                , "LMCBoardRep"   , "LMCBoardPlace"     , "LMCModel"
                , "LMCMem"        , "LMCForm"
                , "GobstonesLists", "GobstonesAmenities"  
                ]

main = 
  do setCurrentDirectory "E:/Z-Trabajo/Programacion/GIT/curso-LMC/assets"
     contents <- concatContents (map (++".gbs") filesToImport)
     writeFile "extra.gbs" contents

concatContents fns = concatMapM readFile fns     

concatMapM f xs = pure concat <*> mapM f xs