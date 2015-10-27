#to activate the project general project directory structure use bash command followed by this files nano name; project.directory.sh and then the name of the project
#Creating a directory structure for a general project
mkdir $1

#Creating a README.md file to explain the purpose of the root directory $1
echo "root directory: encompases project organizational structure" > $1

#Creating a LICENSE.md documentation file directly under the root directory
touch $1/LICENSE.md

#Creating an organizational framework for the project with 4 main directories, 5th directory "results" added later 
mkdir -p $1/{doc,data,src,bin,results}

#Creating further directories within the results directory to organize notes and computational experiment results
mkdir -p $1/results/{notebook,computational_experiments}

#Creating README.md files for each of the 5 main directories to explain the purpose of each
echo "for manuscripts" > $1/doc/README.md
echo "for fixed data sets" > $1/data/README.md
echo "for source code" > $1/src/README.md
echo "compiled scripts" > $1/bin/README.md
echo "for computational experiments" > $1/results/README.md

#Creating README.md files for the directories within results
echo "for dates, notes, images and tables of experiments" > $1/results/notebook/README.md
echo "to organize computational experiments performed with data, often best done chronologically" > $1/results/computational_experiments/README.md

