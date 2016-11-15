#!/usr/bin/gnuplot -persist

set title "Time and value graph created using GNUPlot utility" font ",14" textcolor rgbcolor "blue"

set datafile separator ";"
set timefmt "%Y-%m-%d %H:%M:%S"

set xdata time
set format x "%H:%M:%S"
set xtics rotate by 90 right

set xlabel "Time" textcolor rgb "gray"
set ylabel "Value" textcolor rgb "gray"

set grid

set style line 1 dt 1 lt 1 lw 1 lc rgb "red"
set style line 2 dt 2 lt 1 lw 1 lc rgb "blue"
set style line 3 dt 3 lt 1 lw 1 lc rgb "magenta"
set style line 4 dt 4 lt 1 lw 1 lc rgb "cyan"
set style line 5 dt 5 lt 1 lw 1 lc rgb "green"

plot "some_data0.csv" using 1:2 ls 1 smooth csplines title 'First line',\
     "some_data1.csv" using 1:2 ls 2 smooth csplines title 'Second line',\
     "some_data2.csv" using 1:2 ls 3 smooth csplines title 'Third line',\
     "some_data3.csv" using 1:2 ls 4 smooth csplines title 'Fourth line',\
     "some_data4.csv" using 1:2 ls 5 smooth csplines title 'Fifth line'
