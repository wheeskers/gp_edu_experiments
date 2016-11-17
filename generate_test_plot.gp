#!/usr/bin/gnuplot -persist

set title "Time and value graph created using GNUPlot utility" font ",14" textcolor rgbcolor "#204B57"
set datafile separator ";"

# Date and time settings
set timefmt "%Y-%m-%d %H:%M:%S"
set xdata time
set format x "%H:%M:%S"
set xtics rotate by 45 right

# Labels
set xlabel "Time"  textcolor rgb "#204B57"
set ylabel "Value" textcolor rgb "#204B57"

# Legend
set key on

# Background
set object 1 rectangle from screen 0,0 to screen 1,1 fillcolor rgb "#F3F2F1" behind

# Borders
set style line 10 dt 1 lt 1 lw 1 lc rgb "#8A716A"
set tics textcolor rgb "#204B57" 
set border 3 ls 10

# Grid
set style line 11 dt 1 lt 1 lw 1 lc rgb "#DFD8D6"
set grid ls 11

# Lines
set style line 1 dt 1 lt 1 lw 2 lc rgb "#051A26"
set style line 2 dt 1 lt 1 lw 3 lc rgb "#092B3F"
set style line 3 dt 3 lt 1 lw 1 lc rgb "#0C3C58"
set style line 4 dt 1 lt 1 lw 3 lc rgb "#0F4D71"
set style line 5 dt 5 lt 1 lw 1 lc rgb "#125E8A"

# Create actual image
set style fill transparent solid 0.25 noborder
plot "some_data0.csv" u 1:2 ls 1 smooth csplines title 'First line' w filledcurves below x1,\
     "some_data1.csv" u 1:2 ls 2 smooth csplines title 'Second line',\
     "some_data2.csv" u 1:2 ls 3 smooth csplines title 'Third line',\
     "some_data3.csv" u 1:2 ls 4 smooth csplines title 'Fourth line',\
     "some_data4.csv" u 1:2 ls 5 smooth csplines title 'Fifth line'
set yr [GPVAL_DATA_Y_MIN:GPVAL_DATA_Y_MAX]
set xr [GPVAL_DATA_X_MIN:GPVAL_DATA_X_MAX]
replot
