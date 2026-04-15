f(x)=m*x+c
fit f(x) "fermi.dat" using 1:2 via m,c

set key bottom right
set title "Fermi Energy\nVighnajit CHM"
set grid
set xrange [318:348]
set yrange [0.4635:0.5073]
set xtics 5
set ytics 0.005

set label 1 sprintf("Slope = %2f", m) at 355, 0.515
set label 2 sprintf("Intercept = %3.4f", c) at 355, 0.510

set xlabel "T (K)"
set ylabel "R ({/Symbol W})"

plot "fermi.dat" using 1:2 title "Data", \
    m*x+c title "Least squares line"
