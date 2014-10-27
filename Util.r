#library("XLConnect")
#wk = loadWorkbook("c:\\TGM\\Exjobb\\Raw data\\OMX Complete data.xlsx")
#df= readWorksheet(wk,sheet="Sheet1")

# Standard method to calculate the volatility
histvol <- function(x)
{
  return 2;
}

print("JEKS")
library("RSQLite")
#Open the SQLite database
drv <- dbDriver("SQLite")
print("HEJSAN:" + drv)
#con <- dbConnect(drv, "c:\\TGM\\Exjobb\\Exjobb.sqlite")
#print(con)
#rs <- dbSendQuery(con, "SELECT * FROM TSAssetMarketValue WHERE AssetID = 1")

