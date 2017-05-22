if [ $# -lt 2 ] ; then
	echo "Usage $(basename $0) seed_lower_bound seed_upper_bound"
	exit
fi

min=$1
max=$2

cutoff=120

i=$min

while [ $i -le $max ]
do
	./myLSCC sample-graph $i $cutoff
	i=$[$i+1]
done
