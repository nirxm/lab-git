#!/bin/bash
#SBATCH -p hpc-bio-mendel
#SBATCH --chdir=/home/alumno06/lab-git
#SBATCH -J lab-git-cut
#SBATCH --cpus-per-task=4
#SBATCH -ores_cut-%j.txt      
#SBATCH -e err_cut-%j.txt


# Lanzamos los 4 procesos en PARALELO usando el ampersand (&) al final
./file-cut.sh fastq/Sample1.fastq &
./file-cut.sh fastq/Sample2.fastq &
./file-cut.sh fastq/Sample3.fastq &
./file-cut.sh fastq/Sample4.fastq &

# El comando 'wait' sirve para esperar a que los 4 procesos de fondo terminen
wait

echo "Todos los ficheros han sido cortados."
