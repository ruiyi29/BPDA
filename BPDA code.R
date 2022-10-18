library(usmap)
library(ggplot2)

plot_usmap(regions = "states") + 
  labs(title = "US States",
       subtitle = "T") + 
  theme(panel.background = element_rect(color = "black", fill = "lightblue"))


##
df <- data.frame(
  fips = c("01","02","04","05","06","08","09","10","11","12","13","15","16","17","18","19","20","21","22","23",
           "24","25","26","27","28","29","30","32","33","34","35","36","37","39","40","41","42","44","45","47",
           "48","49","51","53","55"),
  values = log(c(961,0,842,254,15902,687,6537,296,217,30379,7421,380,82,2332,821,230,258,63,141,927,4617,
             40340,1359,724,172,568,0,821,1038,14767,216,12425,1542,1315,1289,245,3209,395,753,896,3407,
             1232,3307,1882,551)))
plot_usmap(data = df,color = "blue") + scale_fill_continuous(
  low = "white", high = "blue", name = "log of Female Population (2005)", label = scales::comma) + 
  labs(title = "Brazilian Female Distribution in 2005")

##
df <- data.frame(
  fips = c("01","02","04","05","06","08","09","10","11","12","13","15","16","17","18","19","20","21","22","23",
           "24","25","26","27","28","29","30","32","33","34","35","36","37","39","40","41","42","44","45","47",
           "48","49","51","53","55"),
  values = c(1069,88,446,607,9209,652,7484,0,226,26796,6905,724,0,1205,83,198,221,0,266,1090,2893,48207,800,
             153,203,499,146,119,1589,18747,0,13578,484,1273,2121,326,3810,748,1586,459,4514,1672,3164,623,253))
plot_usmap(data = df,color = "blue") + scale_fill_continuous(
  low = "white", high = "blue", name = "Male Population (2005)", label = scales::comma) + 
  labs(title = "Brazilian Male Population in 2005")

##
df <- data.frame(
  fips = c("01","02","04","05","06","08","09","10","11","12","13","15","16","17","18","19","20","21","22","23",
           "24","25","26","27","28","29","30","32","33","34","35","36","37","39","40","41","42","44","45","47",
           "48","49","51","53","55"),
  values = c(916,0,1193,861,16539,652,4773,82,328,38377,3993,900,0,2927,809,321,258,0,352,545,4772,37937,1277,601,97,
             240,146,743,551,17587,168,15058,1135,1744,3410,451,2494,585,825,711,4467,1227,5414,1344,523))
plot_usmap(data = df,color = "blue") + scale_fill_continuous(
  low = "white", high = "blue", name = "Population Entered before 2000 (2005)", label = scales::comma) + 
  labs(title = "Brazilian Population Entered before 2000 in 2005")


##
df <- data.frame(
  fips = c("01","02","04","05","06","08","09","10","11","12","13","15","16","17","18","19","20","21","22","23",
           "24","25","26","27","28","29","30","32","33","34","35","36","37","39","40","41","42","44","45","47",
           "48","49","51","53","55"),
  values = c(1114,88,95,0,8572,687,9248,214,115,18798,10333,204,82,610,95,107,221,63,55,1472,2738,50610,882,276,278,
             827,0,197,2076,15927,48,10945,891,844,0,120,4525,558,1514,644,3454,1677,1057,1161,281))
plot_usmap(data = df,color = "blue") + scale_fill_continuous(
  low = "white", high = "blue", name = "Population Entered after 2000 (2005)", label = scales::comma) + 
  labs(title = "Brazilian Population Entered after 2000 in 2005")

##
df <- data.frame(
  fips = c("01","04","05","06","08","09","10","11","12","13","15","16","17","18","19","20","21","22","23",
           "24","25","26","27","28","29","30","31","32","33","34","35","36","37","39","40","41","42","44","45","46","47",
           "48","49","50","51","53","54","55"),
  values = log(c(840,630,0,18696,721,8080,392,222,34266,6598,278,161,2785,658,1099,454,308,155,0,4750,33639,1932,
             1034,17,251,0,212,420,595,18414,243,13430,1647,1019,181,1012,2235,948,1037,0,517,6545,1686,69,4027,
             1412,156,434)))
plot_usmap(data = df,color = "blue") + scale_fill_continuous(
  low = "white", high = "blue", name = "log of Female Population (2006)", label = scales::comma) + 
  labs(title = "Brazilian Female Distribution in 2006")

##
df <- data.frame(
  fips = c("01","04","05","06","08","09","10","11","12","13","15","16","17","18","19","20","21","22","23",
           "24","25","26","27","28","29","30","31","32","33","34","35","36","37","39","40","41","42","44","45","46","47",
           "48","49","50","51","53","54","55"),
  values = log(c(530,805,139,13207,529,10184,220,238,32391,7697,210,0,2294,841,773,131,77,351,242,2385,42170,913,
             366,0,406,248,435,467,1585,20271,338,8887,1468,875,349,737,2511,1679,929,48,436,4747,1181,
             39,3431,870,123,19)))
plot_usmap(data = df,color = "blue") + scale_fill_continuous(
  low = "white", high = "blue", name = "log of Male Population (2006)", label = scales::comma) + 
  labs(title = "Brazilian Male distribution in 2006")

##
df <- data.frame(
  fips = c("01","02","04","05","06","08","09","10","11","12","13","15","16","17","18","19","20","21","22","23",
           "24","25","26","27","28","29","30","31","32","33","34","35","36","37","38","39","40","41","42","44","45","47",
           "48","49","51","53","54","55","56"),
  values = log(c(164,121,996,73,16567,568,8821,158,933,40907,7477,538,127,2622,614,152,320,505,322,139,3415,28028,
             1300,1084,269,474,112,119,1940,1189,17668,221,15592,1177,69,1384,564,726,3541,1323,741,301,5689,2131,
             2034,752,72,165,0)))
plot_usmap(data = df,color = "blue") + scale_fill_continuous(
  low = "white", high = "blue", name = "log of Female Population (2007)", label = scales::comma) + 
  labs(title = "Brazilian Female distribution in 2007")

##
df <- data.frame(
  fips = c("01","02","04","05","06","08","09","10","11","12","13","15","16","17","18","19","20","21","22","23",
           "24","25","26","27","28","29","30","31","32","33","34","35","36","37","38","39","40","41","42","44","45","47",
           "48","49","51","53","54","55","56"),
  values = log(c(346,35,596,57,15319,683,9038,525,607,36216,6518,142,133,1599,1272,0,185,481,3038,0,2920,39875,
             1427,511,395,536,0,115,886,354,19668,0,9335,1661,0,342,534,633,3808,341,1917,225,4504,890,1559,
             903,291,250,55)))
plot_usmap(data = df,color = "blue") + scale_fill_continuous(
  low = "white", high = "blue", name = "log of Male Population (2007)", label = scales::comma) + 
  labs(title = "Brazilian Male Distribution in 2007")

##
df <- data.frame(
  fips = c("01","02","04","05","06","08","09","11","12","13","15","16","17","18","19","20","21","22","23",
           "24","25","26","27","28","29","30","32","33","34","35","36","37","39","40","41","42","44","45","46","47",
           "48","49","50","51","53","55"),
  values = log(c(176,0,850,777,17190,619,7065,73,35302,6049,692,484,2551,412,291,96,749,1172,180,2504,33148,577,
             363,88,1017,0,1042,1793,16676,370,16327,3048,2664,948,761,2741,1178,1623,20,1465,7593,2280,40,
             2693,1984,933)))
plot_usmap(data = df,color = "blue") + scale_fill_continuous(
  low = "white", high = "blue", name = "log of Female Population (2008)", label = scales::comma) + 
  labs(title = "Brazilian Female Distribution in 2008")

##
df <- data.frame(
  fips = c("01","02","04","05","06","08","09","11","12","13","15","16","17","18","19","20","21","22","23",
           "24","25","26","27","28","29","30","32","33","34","35","36","37","39","40","41","42","44","45","46","47",
           "48","49","50","51","53","55"),
  values = log(c(297,138,488,136,10914,710,6961,402,28055,6164,699,0,2994,1030,235,0,407,1106,92,2145,37934,1180,
             865,0,387,693,1030,1598,13519,110,14137,1706,673,214,964,5515,374,1791,132,699,5226,1411,193,937,1669,0)))
plot_usmap(data = df,color = "blue") + scale_fill_continuous(
  low = "white", high = "blue", name = "log of Male Population (2008)", label = scales::comma) + 
  labs(title = "Male Distribution in 2008")


##
df <- data.frame(
  fips = c("01","02","04","05","06","08","09","11","12","13","15","16","17","18","19","20","21","22","23",
           "24","25","26","27","28","29","30","31","32","33","34","35","36","37","39","40","41","42","44","45","46",
           "47","48","49","50","51","53","54","55"),
  values = log(c(567,385,1400,236,17573,1467,8461,665,43476,6489,787,0,1683,660,530,847,238,1439,228,4456,30503,1776,
             1631,45,718,0,586,840,2382,19551,47,13239,3282,1540,157,695,4591,587,717,49,329,6819,1447,42,3134,1596,340,311)))
plot_usmap(data = df,color = "blue") + scale_fill_continuous(
  low = "white", high = "blue", name = "log of Female Population (2009)", label = scales::comma) + 
  labs(title = "Brazilian Female Distribution in 2009")


##
df <- data.frame(
  fips = c("01","02","04","05","06","08","09","11","12","13","15","16","17","18","19","20","21","22","23",
           "24","25","26","27","28","29","30","31","32","33","34","35","36","37","39","40","41","42","44","45","46",
           "47","48","49","50","51","53","54","55"),
  values = log(c(236,96,398,0,10900,1325,8145,97,32711,7508,239,210,1628,726,189,251,874,2599,88,3428,38999,951,
             612,0,664,50,266,465,2652,14781,274,12188,1981,1300,85,197,4500,127,1424,0,359,8255,1060,0,2585,2309,68,190)))
plot_usmap(data = df,color = "blue") + scale_fill_continuous(
  low = "white", high = "blue", name = "log of Male Population (2009)", label = scales::comma) + 
  labs(title = "Brazilian Male Distribution in 2009")

##
df <- data.frame(
  fips = c("01","02","04","05","06","08","09","10","11","12","13","15","16","17","18","19","20","21","22","23",
           "24","25","26","27","28","29","30","31","32","33","34","35","36","37","39","40","41","42","44","45",
           "47","48","49","50","51","53","54","55"),
  values = log(c(1520,99,983,1072,17821,457,9442,538,542,38577,5244,690,799,3043,217,379,955,483,1423,405,4052,35643,
             2228,1402,61,1270,266,107,943,129,17357,537,12064,2852,1469,290,157,4374,722,1563,663,8122,2571,196,
             1674,2380,124,979)))
plot_usmap(data = df,color = "blue") + scale_fill_continuous(
  low = "white", high = "blue", name = "log of Female Population (2010)", label = scales::comma) + 
  labs(title = "Brazilian Female Distribution in 2010")


##
df <- data.frame(
  fips = c("01","02","04","05","06","08","09","10","11","12","13","15","16","17","18","19","20","21","22","23",
           "24","25","26","27","28","29","30","31","32","33","34","35","36","37","39","40","41","42","44","45",
           "47","48","49","50","51","53","54","55"),
  values = log(c(672,0,754,691,13808,1136,8316,254,254,28603,5245,326,0,1824,177,81,66,768,1402,223,3610,37401,
             1444,470,129,489,0,0,479,426,15485,72,10075,2047,1094,243,504,4498,632,1318,322,5619,1897,84,
             1348,894,0,650)))
plot_usmap(data = df,color = "blue") + scale_fill_continuous(
  low = "white", high = "blue", name = "log of Male Population (2010)", label = scales::comma) + 
  labs(title = "Brazilian Male distribution in 2010")

##
df <- data.frame(
  fips = c("01","04","05","06","08","09","10","11","12","13","15","16","17","18","19","20","21","22","23",
           "24","25","26","27","28","29","30","31","32","33","34","35","36","37","39","40","41","42","44","45",
           "46","47","48","49","50","51","53","54","55"),
  values = log(c(1267,1690,46,17724,953,6509,669,589,37293,5160,1261,79,2276,1333,62,19,151,211,76,6191,31837,2876,
             1473,120,1412,36,685,822,1403,16205,140,14115,2084,669,683,394,4712,1387,1305,33,1202,7589,1064,403,
             5785,1822,424,364)))
plot_usmap(data = df,color = "blue") + scale_fill_continuous(
  low = "white", high = "blue", name = "log of Female Population (2011)", label = scales::comma) + 
  labs(title = "Brazilian Female distribution in 2011")

##
df <- data.frame(
  fips = c("01","04","05","06","08","09","10","11","12","13","15","16","17","18","19","20","21","22","23",
           "24","25","26","27","28","29","30","31","32","33","34","35","36","37","39","40","41","42","44","45",
           "46","47","48","49","50","51","53","54","55"),
  values = log(c(717,475,371,14070,608,5190,678,490,31123,2800,187,0,1480,465,131,574,298,517,129,5353,31259,1643,
             1708,152,1255,72,252,865,1033,13904,0,10253,1771,332,299,304,5604,2453,694,0,797,4369,255,273,
             2890,1370,0,55)))
plot_usmap(data = df,color = "blue") + scale_fill_continuous(
  low = "white", high = "blue", name = "log of Male Population (2011)", label = scales::comma) + 
  labs(title = "Brazilian Male distribution in 2011")

##
df <- data.frame(
  fips = c("01","02","04","05","06","08","09","10","11","12","13","15","16","17","18","19","20","21","22","23",
           "24","25","26","27","28","29","31","32","33","34","35","36","37","38","39","40","41","42","44","45",
           "46","47","48","49","50","51","53","54","55","56"),
  values = log(c(0,0,2069,124,22495,1628,8646,228,1306,35661,3741,1157,439,2895,959,238,88,208,117,139,5549,29200,
             3139,804,170,689,359,1164,905,15618,174,15927,3565,119,784,287,1714,6247,267,830,207,247,8208,2842,
             295,2920,1462,54,436,45)))
plot_usmap(data = df,color = "blue") + scale_fill_continuous(
  low = "white", high = "blue", name = "log of Female Population (2012)", label = scales::comma) + 
  labs(title = "Brazilian Female distribution in 2012")

##
df <- data.frame(
  fips = c("01","02","04","05","06","08","09","10","11","12","13","15","16","17","18","19","20","21","22","23",
           "24","25","26","27","28","29","31","32","33","34","35","36","37","38","39","40","41","42","44","45",
           "46","47","48","49","50","51","53","54","55","56"),
  values = log(c(130,63,967,0,14053,1040,6248,115,615,27279,5544,184,368,3336,490,896,91,72,1446,23,3894,25909,
             1424,341,173,423,129,495,779,13746,348,8283,1589,90,945,270,404,5042,0,2260,23,259,4884,771,
             0,1400,1727,163,346,54)))
plot_usmap(data = df,color = "blue") + scale_fill_continuous(
  low = "white", high = "blue", name = "log of Male Population (2012)", label = scales::comma) + 
  labs(title = "Brazilian Male distribution in 2012")

##
df <- data.frame(
  fips = c("01","02","04","05","06","08","09","10","11","12","13","15","16","17","18","19","20","21","22","23",
           "24","25","26","27","29","30","31","32","33","34","35","36","37","38","39","40","41","42","44","45",
           "47","48","49","50","51","53","54","55","56"),
  values = log(c(581,181,1432,210,19531,1268,7652,167,2325,39187,5654,196,73,2341,865,378,425,261,604,229,2932,31128,
             1379,830,943,39,279,1028,955,17677,565,16316,2257,137,2088,39,1238,3454,772,1301,700,9409,2586,309,
             2558,3325,123,614,20)))
plot_usmap(data = df,color = "blue") + scale_fill_continuous(
  low = "white", high = "blue", name = "log of Female Population (2013)", label = scales::comma) + 
  labs(title = "Brazilian Female distribution in 2013")

##
df <- data.frame(
  fips = c("01","02","04","05","06","08","09","10","11","12","13","15","16","17","18","19","20","21","22","23",
           "24","25","26","27","29","30","31","32","33","34","35","36","37","38","39","40","41","42","44","45",
           "47","48","49","50","51","53","54","55","56"),
  values = log(c(191,373,453,124,16133,1266,7478,73,437,28967,3468,417,102,1242,821,186,636,474,881,134,2856,30658,
             817,782,431,577,0,823,840,11965,0,12997,1460,723,1311,279,1027,2091,782,2063,148,5363,1242,0,
             2241,2563,136,525,0)))
plot_usmap(data = df,color = "blue") + scale_fill_continuous(
  low = "white", high = "blue", name = "log of Male Population (2013)", label = scales::comma) + 
  labs(title = "Brazilian Male distribution in 2013")


##
df <- data.frame(
  fips = c("01","02","04","05","06","08","09","10","11","12","13","15","16","17","18","19","20","21","22","23",
           "24","25","26","27","28","29","31","32","33","34","35","36","37","38","39","40","41","42","44","45",
           "46","47","48","49","51","53","54","55","56"),
  values = log(c(659,123,1954,467,20423,1112,6189,121,568,38218,4061,440,63,2246,652,327,472,170,1398,180,3674,13572,
             2790,1995,361,996,137,1998,1280,15439,777,13972,2471,702,1326,931,582,5810,1215,1049,159,1013,8670,1302,
             2486,922,187,1154,76)))
plot_usmap(data = df,color = "blue") + scale_fill_continuous(
  low = "white", high = "blue", name = "log of Female Population (2014)", label = scales::comma) + 
  labs(title = "Brazilian Female distribution in 2014")

##
df <- data.frame(
  fips = c("01","02","04","05","06","08","09","10","11","12","13","15","16","17","18","19","20","21","22","23",
           "24","25","26","27","28","29","31","32","33","34","35","36","37","38","39","40","41","42","44","45",
           "46","47","48","49","51","53","54","55","56"),
  values = log(c(282,0,1121,177,12174,1005,7596,0,553,26730,3070,26,78,1998,357,281,133,408,2469,0,1964,26155,
             2483,1360,236,886,126,2378,1629,15018,521,7952,2975,65,3229,0,758,6733,503,1335,96,1506,5965,1260,
             1560,1172,156,64,22)))
plot_usmap(data = df,color = "blue") + scale_fill_continuous(
  low = "white", high = "blue", name = "log of Male Population (2014)", label = scales::comma) + 
  labs(title = "Brazilian Male distribution in 2014")

setwd("~/Documents/BU/BPDA")
brapop <- read.csv('2015.csv')

df <- data.frame(
  fips = brapop$State_Code,
  values = log(brapop$Female))
plot_usmap(data = df,color = "blue") + scale_fill_continuous(
  low = "white", high = "blue", name = "log of Female Population (2015)", label = scales::comma) + 
  labs(title = "Brazilian Female distribution in 2015")


df8 <- data.frame(
  fips = brapop$State_Code,
  values = log(brapop$Male))
plot_usmap(data = df8,color = "blue") + scale_fill_continuous(
  low = "white", high = "blue", name = "log of Male Population (2015)", label = scales::comma) + 
  labs(title = "Brazilian Male distribution in 2015")

setwd("~/Documents/BU/BPDA")
brapop <- read.csv('2019.csv')
df2 <- data.frame(
  fips = brapop$State.Code,
  values = log(brapop$Female))
plot_usmap(data = df2,color = "blue") + scale_fill_continuous(
  low = "white", high = "blue", name = "log of Female Population (2019)", label = scales::comma) + 
  labs(title = "Brazilian Female Distribution in 2019")

df3 <- data.frame(
  fips = brapop$State.Code,
  values = log(brapop$Male))
plot_usmap(data = df3,color = "blue") + scale_fill_continuous(
  low = "white", high = "blue", name = "log of Male Population (2019)", label = scales::comma) + 
  labs(title = "Brazilian Male Distribution in 2019")


setwd("~/Documents/BU/BPDA")
brapop <- read.csv('2016.csv')
df5 <- data.frame(
  fips = brapop$State_Code,
  values = log(brapop$Female))
plot_usmap(data = df5,color = "blue") + scale_fill_continuous(
  low = "white", high = "blue", name = "log of Female Population (2016)", label = scales::comma) + 
  labs(title = "Brazilian Female distribution in 2016")

setwd("~/Documents/BU/BPDA")
brapop <- read.csv('2016.csv')
df5 <- data.frame(
  fips = brapop$State_Code,
  values = log(brapop$Male))
plot_usmap(data = df5,color = "blue") + scale_fill_continuous(
  low = "white", high = "blue", name = "log of Male Population (2016)", label = scales::comma) + 
  labs(title = "Brazilian Male distribution in 2016")


setwd("~/Documents/BU/BPDA")
brapop <- read.csv('2005.csv')
df6 <- data.frame(
  fips = brapop$State.Code,
  values = log(brapop$Female))
plot_usmap(data = df6,color = "blue") + scale_fill_continuous(
  low = "white", high = "blue", name = "log of Female Population (2005)", label = scales::comma) + 
  labs(title = "Brazilian Female Distribution in 2005")

df7 <- data.frame(
  fips = brapop$State.Code,
  values = log(brapop$Male))
plot_usmap(data = df7,color = "blue") + scale_fill_continuous(
  low = "white", high = "blue", name = "log of Male Population (2005)", label = scales::comma) + 
  labs(title = "Brazilian Male Population in 2005")

install.packages("animation")
library(animation)

install.packages("magick")
library(magick)


setwd("~/Documents/BU/BPDA")
brapop <- read.csv('2017.csv')
df9 <- data.frame(
  fips = brapop$State_Code,
  values = log(brapop$Female))
plot_usmap(data = df9,color = "blue") + scale_fill_continuous(
  low = "white", high = "blue", name = "log of Female Population (2017)", label = scales::comma) + 
  labs(title = "Brazilian Female Distribution in 2017")

setwd("~/Documents/BU/BPDA")
brapop <- read.csv('2017.csv')
df10 <- data.frame(
  fips = brapop$State_Code,
  values = log(brapop$Male))
plot_usmap(data = df10,color = "blue") + scale_fill_continuous(
  low = "white", high = "blue", name = "log of Male Population (2017)", label = scales::comma) + 
  labs(title = "Brazilian Male Distribution in 2017")

setwd("~/Documents/BU/BPDA")
brapop <- read.csv('2018.csv')
df11 <- data.frame(
  fips = brapop$State_Code,
  values = log(brapop$Female))
plot_usmap(data = df11,color = "blue") + scale_fill_continuous(
  low = "white", high = "blue", name = "log of Female Population (2018)", label = scales::comma) + 
  labs(title = "Brazilian Female Distribution in 2018")

setwd("~/Documents/BU/BPDA")
brapop <- read.csv('2018.csv')
df12 <- data.frame(
  fips = brapop$State_Code,
  values = log(brapop$Male))
plot_usmap(data = df12,color = "blue") + scale_fill_continuous(
  low = "white", high = "blue", name = "log of Male Population (2018)", label = scales::comma) + 
  labs(title = "Brazilian Male Distribution in 2018")

library(viridis) # nice color palette
library(ggplot2) # plotting
library(ggmap) # ggplot functionality for maps
library(dplyr) # use for fixing up data
library(readr) # reading in data/csv
library(RColorBrewer) # for color palettes
library(purrr) # for mapping over a function
library(magick)
install.packages("viridis")
install.packages(ggmap)


## logfemale gif
f1 <- image_scale(image_read("https://user-images.githubusercontent.com/111311380/195744469-a2760914-52b5-43d6-b344-58360f66428f.png"))
f2 <- image_scale(image_read("https://user-images.githubusercontent.com/111311380/195744771-0c1dcb9b-fb97-4621-8868-ef5ca2c6724b.png"))
f3 <- image_scale(image_read("https://user-images.githubusercontent.com/111311380/195745457-2e9675dd-c318-454c-bec6-296489b9ad77.png"))
f4 <- image_scale(image_read("https://user-images.githubusercontent.com/111311380/195745465-008a59c7-6a55-45c8-8df7-9efd7084701b.png"))
f5 <- image_scale(image_read("https://user-images.githubusercontent.com/111311380/195745474-8912e2b9-ab1d-45f0-a685-0c1efd1c91a8.png"))
f6 <- image_scale(image_read("https://user-images.githubusercontent.com/111311380/195745480-88a55f1a-2c64-47e6-9c9d-bcdf747bb9ba.png"))
f7 <- image_scale(image_read("https://user-images.githubusercontent.com/111311380/195745491-ea6aecdf-b4f4-4047-8c63-5d2ffd63cc97.png"))
f8 <- image_scale(image_read("https://user-images.githubusercontent.com/111311380/195745496-51cf34f3-3fcf-48cd-b867-6c52296bfacf.png"))
f9 <- image_scale(image_read("https://user-images.githubusercontent.com/111311380/195745502-bcf16e84-fad9-4b92-8e40-6f5afdeae6a7.png"))
f10 <- image_scale(image_read("https://user-images.githubusercontent.com/111311380/195745510-06e7ec9e-1a84-4d87-a2d3-e342757fc460.png"))
f11 <- image_scale(image_read("https://user-images.githubusercontent.com/111311380/195745517-0c27d361-6d84-44ad-a1fa-832718a03e81.png"))
f12 <- image_scale(image_read("https://user-images.githubusercontent.com/111311380/195745524-dce3073f-f844-45cf-8d3a-f27bb15bb37b.png"))
f13 <- image_scale(image_read("https://user-images.githubusercontent.com/111311380/195745533-9df48bff-dcd0-4789-ab49-38069924fb63.png"))
f14 <- image_scale(image_read("https://user-images.githubusercontent.com/111311380/195745548-e9f2940f-7602-4518-a50e-61be773ed96a.png"))
f15 <- image_scale(image_read("https://user-images.githubusercontent.com/111311380/195745569-5188ebbc-f619-43ef-8a15-d8cdc8792767.png"))
image_resize(c(f1,f2,f3,f4,f5,f6,f7,f8,f9,f10,f11,f12,f13,f14,f15), '600x400!') %>%
  image_background('white') %>%
  image_morph() %>%
  image_animate(optimize = TRUE)

##logmale gif
f16 <- image_scale(image_read("https://user-images.githubusercontent.com/111311380/196042814-48b95e0e-5221-4374-9f65-58a41e78141b.png"))
f17 <- image_scale(image_read("https://user-images.githubusercontent.com/111311380/196042818-5c144800-aa72-41fe-ad93-64c7e441e42e.png"))
f18 <- image_scale(image_read("https://user-images.githubusercontent.com/111311380/196042819-9ee72998-4437-44e8-9094-59218636e794.png"))
f19 <- image_scale(image_read("https://user-images.githubusercontent.com/111311380/196042821-a11522b9-82cc-46a1-8db7-e49a9850b324.png"))
f20 <- image_scale(image_read("https://user-images.githubusercontent.com/111311380/196042823-295d2e24-150f-42b2-b23c-5f7c161fe3b8.png"))
f21 <- image_scale(image_read("https://user-images.githubusercontent.com/111311380/196042826-4ef56c6e-9533-4d66-99be-a7ad21a4d8d6.png"))
f22 <- image_scale(image_read("https://user-images.githubusercontent.com/111311380/196042831-639a3cbc-cd14-4238-930e-9f6e3868082f.png"))
f23 <- image_scale(image_read("https://user-images.githubusercontent.com/111311380/196042834-d03a40d2-eb46-473a-8870-6630ffb3f37f.png"))
f24 <- image_scale(image_read("https://user-images.githubusercontent.com/111311380/196042838-08e9d1b9-1e46-40ac-a89e-aac0139c99f6.png"))
f25 <- image_scale(image_read("https://user-images.githubusercontent.com/111311380/196042841-8be84b1a-b679-49ad-a294-f39c1a5eafee.png"))
f26 <- image_scale(image_read("https://user-images.githubusercontent.com/111311380/196042844-df9b84a0-4f8f-416b-8ca6-f0ad68ae5b7b.png"))
f27 <- image_scale(image_read("https://user-images.githubusercontent.com/111311380/196042846-34a8acd3-6fb7-4c9c-a537-7fde20261562.png"))
f28 <- image_scale(image_read("https://user-images.githubusercontent.com/111311380/196042850-23896a03-fdd7-48fc-827c-1b81ba5d1c3d.png"))
f29 <- image_scale(image_read("https://user-images.githubusercontent.com/111311380/196042851-857cda95-c77d-477c-9364-ee0fc80e4409.png"))
f30 <- image_scale(image_read("https://user-images.githubusercontent.com/111311380/196042859-210def2a-ebb3-45c9-a86c-e914d269eaab.png"))

image_resize(c(f16,f17,f18,f19,f20,f21,f22,f23,f24,f25,f26,f27,f28,f29,f30), '600x400!') %>%
  image_background('white') %>%
  image_morph() %>%
  image_animate(optimize = TRUE)
