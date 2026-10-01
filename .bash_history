exit
lsblk
mkdir -p ~/repogit && cd ~/repogit
git clone https://github.com/MatiasCianci/UTNFRA_SO_1P2C_2024_Cianci.git
cd ~/repogit/UTNFRA_SO_1P2C_2024_Cianci/RTA_SCRIPT_Examen_*
bash Punto_A.sh
sudo apt update && sudo apt install tree -y
tree /Examenes-UTN
cd-
cd -
cd ~/repogit/UTNFRA_SO_1P2C_2024_Cianci/RTA_SCRIPT_Examen_*
nano Punto_B.sh
lsblk
cat Punto_B.sh
bash Punto_B.sh
lsblk
nano Punto_B.sh
bash Punto_B.sh
lsblk
git add Punto_B.sh
git commit -m "feat: Resuelve Punto B con particionamiento y montaje persistente"
git config --global user.email"matucianci17@gmail.com"
git config --global user.name"MatiasCianci"
git commit -m "feat: Resuelve Punto B con particionamiento y montaje persistente"
git config --global user.name "MatiasCianci"
git config --global user.email "matucianci17@gmail.com"
git commit -m "feat: Resuelve Punto B con particionamiento y montaje persistente"
git push
git push
cd ~/repogit/UTNFRA_SO_1P2C_2024_Cianci/RTA_SCRIPT_Examen_*
nano Punto_C.sh
bash Punto_C.sh
ls -ld /Examenes-UTN/alumno_* /Examenes-UTN/profesores
tail -n +1 /Examenes-UTN/alumno_*/validar.txt /Examenes-UTN/profesores/validar.txt
git add Punto_C.sh
git commit -m "feat: Resuelve Punto C con creacion de usuarios, permisos y validar.txt"
git push
cd ~/repogit/UTNFRA_SO_1P2C_2024_Cianci/RTA_SCRIPT_Examen_*
nano Punto_D.sh
bash Punto_D.sh
tree "$HOME"/Estructura_Asimetrica/ --noreport | pr -T -s' ' -w 80 --column 4
git add Punto_D.sh
git commit -m "feat: Resuelve Punto D con creacion de estructura asimetrica"
git push
cd ~/repogit/UTNFRA_SO_1P2C_2024_Cianci/RTA_SCRIPT_Examen_*
nano Punto_E.sh
bash Punto_E.sh
cat ../RTA_ARCHIVOS_Examen_*/Filtro_Basico.txt
git add Punto_E.sh ../RTA_ARCHIVOS_Examen_*/Filtro_Basico.txt
git commit -m "feat: Resuelve Punto E con filtrado de memoria y chassis"
git push
git add Punto_E.sh ../RTA_ARCHIVOS_Examen_*/Filtro_Basico.txt
ls -l
git add Punto_E.sh ../RTA_ARCHIVOS_Examen_*/Filtro_Basico.txt
ls -l ..
bash Punto_E.sh
cat ../RTA_ARCHIVOS_Examen_*/Filtro_Basico.txt
mkdir -p ../RTA_ARCHIVOS_Examen_20260930
mv ../Filtro_Basico.txt ../RTA_ARCHIVOS_Examen_20260930/
nano Punto_E.sh
cat ../RTA_ARCHIVOS_Examen_20260930/Filtro_Basico.txt
git add Punto_E.sh ../RTA_ARCHIVOS_Examen_20260930/Filtro_Basico.txt
git commit -m "feat: Resuelve Punto E con filtrado de memoria y chassis"
git push
nano Punto_F.sh
bash Punto_F.sh
git add Punto_F.sh ../RTA_ARCHIVOS_Examen_*/Filtro_Avanzado.txt
git commit -m "feat: Resuelve Punto F con generacion de filtros avanzados"
git push
nano Punto_F.sh
bash Punto_F.sh
git add Punto_F.sh ../RTA_ARCHIVOS_Examen_*/Filtro_Avanzado.txt
git commit --amend -m "feat: Resuelve Punto F con generacion de filtros avanzados"
git push
cd ~/repogit/UTNFRA_SO_1P2C_2024_Cianci
nano README.md
history -a
