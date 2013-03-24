module TimeSeries

using  DataFrames, Calendar

export moving, 
       lag,  
       lead,
       log_return, 
       simple_return, 
       equity, 
       upto, 
       indexyear,
       indexmonth,
       indexday,
       indexdow,
       indexhour,
       indexminute,
       indexsecond,
       indexweek,
       indexdoy,
# mutate DataFrame versions
       moving!,
       lag!,
       lead!,
       log_return!,
       simple_return!,
       equity!,
       upto!,
## aliases
       lip, 
       lips, 
       sip, 
       sips, 

############## START OF EXPERIMENTAL TIMESTAMP TYPE ######################
############## START OF EXPERIMENTAL TIMESTAMP TYPE ######################
############## START OF EXPERIMENTAL TIMESTAMP TYPE ######################
# 
#        TimeStamp,
#        OHLC,
#        OHLCVA,
#        head,
#        tail, 
#        first, 
#        last, 
# # use Array methods when single value desired
# # use row-styled methods when the return of the entire object preferred
#        maxrows, 
#        minrows, 
#        gtrows, 
#        ltrows, 
#        etrows, 
#        yearrows,
#        monthrows,
#        dayrows,
#        dowrows,
#        hourrows,
#        minuterows,
#        secondrows,
#        weekrows,
#        doyrows,
# # create new Array{TimeStamp} by operating on two 
#        diff,
#        sum,
#        subtract,
#        spread,
# # deal with NaN as if they were NAs
#        nanmax,
#        nanmin,
#        nansum,
#        nanmean,
#        nanmedian,
#        nanvar,
#        nanstd,
#        nanskewness,
#        nankurtosis,
#        removeNaN,
#        removeNaN_sum,
#        doremoveNaN_sum,
# # other experimental methods
#        TimeStampArray,  #constructor of Array{TimeStamp} from DataFrame
#        ifred,
#        iyahoo,
#        v,    #shortcut notation for v.value in v for x
#        vopen,
#        vhigh,
#        vlow,
#        vclose,
#        vvolume,
#        vadj,
#        Op,
#        Hi,
#        Lo,
#        Cl,
#        Vo,
#        Ad,
#        t,    #shortcut notation for t.timestamp in t for x
#        p,    #shortcut notation for passing in CalendarTime 
#        timetrial,
#
############## END OF EXPERIMENTAL TIMESTAMP TYPE ######################
############## END OF EXPERIMENTAL TIMESTAMP TYPE ######################
############## END OF EXPERIMENTAL TIMESTAMP TYPE ######################

## testing
       @timeseries,
       read_csv_for_testing

################## START TIMESTAMP FILES #####################
################## START TIMESTAMP FILES #####################
################## START TIMESTAMP FILES #####################

include("TimeStamps/TimeStamps.jl")
include("TimeStamps/method.jl")
include("TimeStamps/operators.jl")
include("TimeStamps/tradinginstrument.jl")
include("TimeStamps/nan.jl")
include("TimeStamps/show.jl")

################## END TIMESTAMP FILES #####################
################## END TIMESTAMP FILES #####################
################## END TIMESTAMP FILES #####################

include("moving.jl")
include("lag.jl")
include("returns.jl")
include("upto.jl")
include("indexdate.jl")
include("testtimeseries.jl")

end  #of module

