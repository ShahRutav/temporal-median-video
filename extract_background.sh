RED='\033[0;31m'
BLUE='\033[0;34m'
NC='\033[0m'

dataset_dir=$1
output_dir=$2



for class in `ls $dataset_dir`:
do 
	printf "${BLUE} $class ${NC}\n"
    class_dir=$dataset_dir"/"$class
    for videos in `ls $class_dir`:
    do
        input_dir=$class_dir"/"$videos
	    printf "${RED} $input_dir  ${NC}\n"
        python temporal_median.py -i $input_dir -o . -offset 8
        exit
    done  
done
#python temporal_median.py -i ~/dataset/hmdb51/HMDB_12_VDA/pullup/v_35_pull_ups_pullup_f_nm_np1_fr_goo_0 -o . -offset 8 -simul 1
