#Terminal type
set term svg size 900, 540
set output 'alt_pressure.svg'

#Axis options
set xtics nomirror
set ytics nomirror
set y2tics

set ylabel "Altitude [m]"
set y2label "Pressure [Pa]"

set xlabel "Time from launch [min]"

#Set data ranges
set xrange [0:160]
set yrange [0:30000]
set y2range [0:1100]

#Set line styles
set style line 1 lc rgb '#009688' lt 1 lw 2 
set style line 2 lc rgb '#5599f4' lt 1 lw 2 

#Plot the data
plot "./altitude.txt" u 1:2 ls 1 title "Altitude" w lines, \
"./pressure.txt" u 1:2 ls 2 axes x1y2 title "Pressure" w lines












