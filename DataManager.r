
library("RSQLite")
default_db_path = "c:\\TGM\\Exjobb\\Exjobb.sqlite";

# Opens the database
OpenDatabase <- function(path = default_db_path)
{
  if(!is.null(path))
  {
    print(paste("Trying to open database at path:",path));
    drv <- dbDriver("SQLite")
    con <- dbConnect(drv, path)
    return(con);    
  }
}

# Fetch Assets
DBAssets <- function(con)
{
  if(!is.null(con))
  {
    rs <- dbGetQuery(con, "SELECT AssetID,Ticker FROM Asset")
    return(rs)
  }
}

# Fetch TimeSerie for AssetID
DBTimeSerie <- function(con, asset)
{
  id = -1
  if( is.numeric(asset)){ 
    id = asset; 
  }
  else { #Try the to find the ticker
    rs = DBAssets(con);
    id = rs[grep(asset,rs$Ticker,ignore.case=T),]["AssetID"]
  }
  
  if  (!is.null(con))
  {
    s = paste("SELECT TimeSerieID,AssetID,Timestamp,Level FROM TSAssetMarketValue WHERE AssetID = ",id,sep="")
    rs <- dbGetQuery(con, s)
    return(rs)
  }
}

