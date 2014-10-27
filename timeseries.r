# This script contains time serie functions

# Takes a vector of dates and data and creates a new dataframe with the time based at Freq. 
# freqNr = {a number}
# freqType = {sec,min,D,M,Q}
# for example TSTimePeriod(d,data,5,"sec") will create a time serie based on 5 sec data. Will always start at the first for a given 
# day and then add the timestep and find the closest (after) the time jump
TSTimePeriod <-function(dates,data,freqNr,freqType)
{
  # find unique dates in the dates list
  uniquedates = TSCreateUniqueDates(dates);  
}

TSCreateUniqueDates <-function(dates)
{
  l = unique(unlist(format(as.POSIXct(tsOMX$Timestamp),"%Y-%m-%d")));
  return(l);
}

# Merge values
TSMergeDateSerie <- function(dateSerie,tsDates,tsValues)
{
  for( d in dateSerie)
  {
    for( tsD in tsDates )
    {
      if
    }
  }
}

# Used to create a timeserie with equal timesteps (in seconds) for intraday use
TSCreateTimeSerieDates <-function(dates,timeStart,timeStop,freqNr)
{  
  totalList = NULL
  for(d in dates)
  {
    start = as.POSIXct(paste(d,timeStart))
    end = as.POSIXct(paste(d,timeStop))
    
    # For each date, generate the correct timeserie
    k = seq(from=start,by=freqNr,to=end);
        
    if( is.null(totalList)) { 
      totalList = k}
    else{ 
      totalList = c(totalList,k)}    

  }
  return(totalList);
}