
source("DataManager.r")

# GLOBAL DATA
dbs = OpenDatabase()

# Default data
print("Loading assets...")
assets = DBAssets(dbs)
print("Loading default time serie...")
tsOMX = DBTimeSerie(dbs,"OMX")

#assets[grep("OMX",assets$Ticker,ignore.case=T),]["AssetID"] + 2