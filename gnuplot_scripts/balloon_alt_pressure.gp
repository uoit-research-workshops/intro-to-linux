#Terminal type
set term svg size 900, 540
#Name of output file 
set output 'alt_pressure.svg'

#Axis options
#Get rid of the ticks on the opposite axis
set xtics nomirror
set ytics nomirror

#Set ticks on the right side of the plot
set y2tics

#Label the first y axis
set ylabel "Altitude [m]"
#Label the second y axis
set y2label "Pressure [Pa]"

#Label the x axis
set xlabel "Time from launch [min]"

#Set data ranges
set xrange [0:160]
set yrange [0:30000]
set y2range [0:1100]

#Set line styles
set style line 1 lc rgb '#009688' lt 1 lw 2 
set style line 2 lc rgb '#5599f4' lt 1 lw 2 

#Plot the data
#Plots from a file "./altitude.txt" or "./pressure.txt"
#Uses columns 1 and 2
#Uses linestyle 1 which we set above
#Sets the title
#Uses lines to connect the points
plot "./altitude.txt" u 1:2 ls 1 title "Altitude" w lines, \
"./pressure.txt" u 1:2 ls 2 axes x1y2 title "Pressure" w lines












