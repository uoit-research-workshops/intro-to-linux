#Terminal type
set term svg size 900, 540
set output 'temperature.svg'

#Need to set datafile separator as a comma
set datafile separator ","

#Axis options
set xtics nomirror
set ytics nomirror

set ylabel 'Temperature [Celsius]
set xlabel "Time from launch [min]"

#Set data ranges
set xrange [0:160]
set yrange [-65:50]

#Set linestyles 
set style line 1 lc rgb '#F44336' lt 1 lw 2
set style line 2 lc rgb '#ff9980' lt 1 lw 2 

set title "Internal payload temperature"

plot "./space_data.csv" u 2:16 ls 1 title "Internal temperature" w lines, \
"./space_data.csv" u 2:(($37+100)/7.3) ls 2 title "External temperature" w lines


