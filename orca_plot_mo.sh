usage="Usage = orca_plot_mo.sh orb_file orbital_number grid_density(default 40)"
if [ ${1} = "-h" ]
    then
        echo -e "${usage}\n"
        exit
fi

if [ -z ${3} ]
    then
        echo "Plotting Orbital = ${2}, Grid-Density = 40 ..."
        echo -e "2\n${2}\n5\n7\n10\n11\n" | /home/glibanio/programs/orca-5.0.4/orca_plot ${1} -i >& ${1}_plot.log

    else
        echo "Plotting Orbital = ${2}, Grid-Density = ${3} ..."
        echo -e "2\n${2}\n4\n${3}\n5\n7\n10\n11\n" | /home/glibanio/programs/orca-5.0.4/orca_plot ${1} -i >& ${1}_plot.log
fi