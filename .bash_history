sudo cat /etc/sudoers.d/vagrant
exit
cd
git clone https://github.com/upszot/UTN-FRA_SO_Examenes.git
./UTN-FRA_SO_Examenes/202408/script_Precondicion.sh
source  ~/.bashrc  && history -a
for pkg in docker.io docker-doc docker-compose docker-compose-v2 podman-docker containerd runc
exit
cs
cd
clear
for pkg in docker.io docker-doc docker-compose docker-compose-v2 podman-docker containerd runc; do sudo apt-get remove $pkg; done
clear
sudo apt-get update
sudo apt-get install ca-certificates curl
clear
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc
echo   "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "${UBUNTU_CODENAME:-$VERSION_CODENAME}") stable" |   sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin ansible tree
sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin ansible tree
clear
sudo usermod -a -G docker DZabaleta 
sudo grep -i docker /etc/group
exit
cd
ssh-keygen -t ed25519
cat $HOME/.ssh/*.pub 
git@github.com:Riot009/UTNFRA_SO_Recu_Integral_Zabaleta.git
git clone git@github.com:Riot009/UTNFRA_SO_Recu_Integral_Zabaleta.git
clear
git pull
ls
git status
ls -l
cd UTNFRA_SO_Recu_Integral_Zabaleta/
git status
cd ..
cd UTN-FRA_SO_Examenes/
ls -l
cp 202408 UTNFRA_SO_Recu_Integral_Zabaleta
cp 202408 $HOME/UTNFRA_SO_Recu_Integral_Zabaleta
cp 202408 /UTNFRA_SO_Recu_Integral_Zabaleta
cp 202408 UTNFRA_SO_Recu_Integral_Zabaleta/
cp -r 202408 /UTNFRA_SO_Recu_Integral_Zabaleta
sudo cp -r 202408 /UTNFRA_SO_Recu_Integral_Zabaleta
clear
cd ..
ls -l
cd UTNFRA_SO_Recu_Integral_Zabaleta/
ls -l
cd ..
cd UTN-FRA_SO_Examenes/
ls -l
cd 202808
cd 202408/
ls
sudo cp -r /202408 /UTNFRA_SO_Recu_Integral_Zabaleta
sudo cp -r 202408 "UTNFRA_SO_Recu_Integral_Zabaleta"
sudo cp -r 202408 "/UTNFRA_SO_Recu_Integral_Zabaleta"
sudo cp -r 202408 "$HOME/UTNFRA_SO_Recu_Integral_Zabaleta"
sudo cp -r /202408 "$HOME/UTNFRA_SO_Recu_Integral_Zabaleta"
cd ..
sudo cp -r 202408 "$HOME/UTNFRA_SO_Recu_Integral_Zabaleta"
cd ..
cd UTNFRA_SO_Recu_Integral_Zabaleta/
ls -l
clear
git status
git add .
git commit -m "Se agrego la carpeta 202408"
git config --global user.email "diego.zabaleta09@gmail.com"
git config --global user.name "Riot009"
git commit -m "Se agrego la carpeta 202408"
clear
git push 
cd
ls -l
ls .lR RTA_Examen_20250707/
chmod 775 RTA_Examen_20250707/
chmod 775 RTA_Examen_20250707/*
clear
ls .lR RTA_Examen_20250707/
sudo fdisk -l
sudo fdisk dev/sde
n
sudo fdisk dev/sde
sudo fdisk /dev/sde
sudo partprobe
sudo fsdisk -l
sudo fdisk -l
sudo fdisk /dev/sdc
sudo fdisk -l
sudo fdisk /dev/sdd
sudo fdisk -l
sudo fdisk -l | grep LVM
clear
sudo fdisk -l | grep LVM
sudo pvcreate /dev/sde2 dev/dsc1 /dev/sdc2 /dev/sdd1
sudo pvcreate /dev/sdc1 
clear
sudo vgcreate vg_temp /dev/sdc1
sudo vgcreate vg_datos /dev/sdc2 /dev/sdd1 /dev/sde2
sudo lvcreate -L 10M vg_datos -n lv_docker
sudo lvcreate -L 1.5G vg_datos -n lv_multimedia
sudo lvcreate -l 100%FREE vg_temp -n lv_swap
sudo mkfs.ext4 /dev/mapper/vg_datos-lv_docker
sudo mkfs.ext4 /dev/mapper/vg_datos-lv_multimedia
sudo mkswap /dev/mapper/vg_temp-lv_swap
ls -l
sudo mkdir -p /Multimedia
rm -rf /Multimedia/
sudo rm -rf /Multimedia/
sudo mkdir -p /var/lib/docker /Multimedia
sudo mount /dev/mapper/vg_datos-lv_docker /var/lib/docker/
sudo mount /dev/mapper/vg_datos-lv_multimedia /Multimedia
sudo swapon /dev/mapper/vg_temp-lv_swap
sudo mkswap /dev/sde1
sudo swapon /dev/sde1
echo "/dev/mapper/vg_datos-lv_docker /var/lib/docker ext4 defaults 0 2" | sudo tee -a /etc/fstab
echo "/dev/mapper/vg_datos-lv_multimedia /Multimedia ext4 defaults 0 2" | sudo tee -a /etc/fstab
echo "/dev/mapper/vg_temp-lv_swap none swap sw 0 0" | sudo tee -a /etc/fstab
echo "/dev/sde1 none swap sw 0 0" | sudo tee -a /etc/fstab
sudo systemctl restart docker
sudo systemctl status docker
clear
ls
cd RTA_Examen_20250707/
ls
vim Punto_A.sh
cat Punto_A.sh
clear
cd
sudo touch /usr/local/bin/Zabaleta_check_URL.sh
ls -l /usr/local/bin/
sudo chmod 755 /usr/local/bin/Tomasello_check_URL.sh
sudo chmod 755 /usr/local/bin/Zabaleta_check_URL.sh
sudo vim /usr/local/bin/Zabaleta_check_URL.sh
ls -l /tmp/head-check/
sudo vim /usr/local/bin/Zabaleta_check_URL.sh
sudo /usr/local/bin/Zabaleta_check_URL.sh /home/DZabaleta/UTN-FRA_SO_Examenes/202408/bash_script/Lista_URL.txt
ls -l /tmp/head-check/
sudo /usr/local/bin/Zabaleta_check_URL.sh /home/DZabaleta/UTN-FRA_SO_Examenes/202408/bash_script/Lista_URL.txt
sudo vim /usr/local/bin/Zabaleta_check_URL.sh
ls -l /tmp/head-check/
ls -l /tmp/head-check/ok
sudo vim /usr/local/bin/Zabaleta_check_URL.sh
ls -l /tmp/head-check/
sudo vim /usr/local/bin/Zabaleta_check_URL.sh
/usr/local/bin/Zabaleta_check_URL.sh /home/DZabaleta/UTN-FRA_SO_Examenes/202408/bash_script/Lista_URL.txt
sudo chmod 755 /usr/local/bin/Zabaleta_check_URL.sh
/usr/local/bin/Zabaleta_check_URL.sh /home/DZabaleta/UTN-FRA_SO_Examenes/202408/bash_script/Lista_URL.txt
clear
ls -l /usr/local/bin/
sudo vim /usr/local/bin/Zabaleta_check_URL.sh
-l y la opción -ld
/usr/local/bin/Zabaleta_check_URL.sh /home/DZabaleta/UTN-FRA_SO_Examenes/202408/bash_script/Lista_URL.txt
clear
sudo grep DZabaleta /etc/sudoers
cd
clear
/usr/local/bin/Zabaleta_check_URL.sh /home/DZabaleta/UTN-FRA_SO_Examenes/202408/bash_script/Lista_URL.txt
sudo vim /usr/local/bin/Zabaleta_check_URL.sh
sudo /usr/local/bin/Zabaleta_check_URL.sh /home/DZabaleta/UTN-FRA_SO_Examenes/202408/bash_script/Lista_URL.txt
ls -ld /tmp/head-check
/usr/local/bin/Zabaleta_check_URL.sh /home/DZabaleta/UTN-FRA_SO_Examenes/202408/bash_script/Lista_URL.txt
ls -ld /tmp/head-check
sudo rm -rf /tmp/head-check 
/usr/local/bin/Zabaleta_check_URL.sh /home/DZabaleta/UTN-FRA_SO_Examenes/202408/bash_script/Lista_URL.txt
ls -ld /tmp/head-check
ls -l /tmp/head-check
s -l /tmp/head-check/Error
s -l /tmp/head-check/error
ls -l /tmp/head-check/Error
clear
ls -l /tmp/head-check/Error/cliente
ls -l /tmp/head-check/Error/servidor
ls -l 
sudo rm -rf ok}
sudo rm -rf servidor},/
sudo rm -rf servidor},
ls -l
vim RTA_Examen_20250707/Punto_B.sh
exit
sudo su
logout
exit
clear
cd
ls -l
cd UTNFRA_SO_Recu_Integral_Zabaleta/
ls -l
cd 202408/
ls -l
cd docker/
ls -l
vim dockerfile 
cd ..
cd docker/
systemctl restart dockers
sudo systemctl restart dockers
clear
sudo systemctl restart dockers
cd
cd docker/
cd UTNFRA_SO_Recu_Integral_Zabaleta/
cd docker/
cd 202408/
cd docker/
clear
sudo systemctl restart docker
sudo lvextend -l 100%FREE /dev/mapper/vg_datos-lv_docker
sudo resize2fs /dev/mapper/vg_datos-lv_docker
docker pull nginx
docker login -u riot09dev
docker build  -t riot09dev/web3_sp2025_zabaleta:latest -t riot09dev/web3_sp2025_zabaleta:v1 .
ll
clear
docker push riot09dev/web3_sp2025_zabaleta -a
docker run -d -p 8081:80 riot09dev/web3_sp2025_zabaleta:v1
ip a
clear
grep "model name" /proc/cpuinfo | uniq | head -1 | awk '{print "CPU Modelo: "$6" Frecuencia: "$9}'.txt
grep "model name" /proc/cpuinfo | uniq | head -1 | awk '{print "CPU Modelo: "$6" Frecuencia: "$9}'.txt > web/file/info.txt
cd
grep "model name" /proc/cpuinfo | uniq | head -1 | awk '{print "CPU Modelo: "$6" Frecuencia: "$9}'.txt > web/file/info.txt
ls
cd UTNFRA_SO_Recu_Integral_Zabaleta/
ll
cd 202408/
cd docker/
sudo grep "model name" /proc/cpuinfo | uniq | head -1 | awk '{print "CPU Modelo: "$6" Frecuencia: "$9}'.txt > web/file/info.txt
grep "model name" /proc/cpuinfo | uniq | head -1 | awk '{print "CPU Modelo: "$6" Frecuencia: "$9}'.txt > web/file/info.txt
grep "model name" /proc/cpuinfo | uniq | head -1 | awk '{print "CPU Modelo: "$6" Frecuencia: "$9}' > ~/info.txt
ls
cd web/
ls
cd file
ls
cat info.txt 
grep "model name" /proc/cpuinfo | uniq | head -1 | awk '{print "CPU Modelo: "$6" Frecuencia: "$9}'.txt > web/file/info.txt
grep "model name" /proc/cpuinfo | uniq | head -1 | awk '{print "CPU Modelo: "$6" Frecuencia: "$9}'.txt > info.txt
grep "model name" /proc/cpuinfo | uniq | head -1 | awk '{print "CPU Modelo: "$6" Frecuencia: "$9}'.txt > /info.txt
sudo grep "model name" /proc/cpuinfo | uniq | head -1 | awk '{print "CPU Modelo: "$6" Frecuencia: "$9}'.txt > info.txt
sudo tee grep "model name" /proc/cpuinfo | uniq | head -1 | awk '{print "CPU Modelo: "$6" Frecuencia: "$9}'.txt > info.txt
logout 
cd
clear
ls
cat info.txt 
rm -rf info.txt 
UTNFRA_SO_Recu_Integral_Zabaleta/
cd UTNFRA_SO_Recu_Integral_Zabaleta/
clear
ls
cd 202408/
cd docker/
echo "Modelo: $(grep 'model name' /proc/cpuinfo | head -1 | awk -F: '{print $2}') Frecuencia: $(grep 'cpu MHz' /proc/cpuinfo | head -1 | awk -F: '{print $2}') MHz" | sudo tee web/file/info.txt > /dev/null
sudo systemctl restart docker
systemctl status docker
ip a
clear
docker stop
systemctl status docker
sudo docker stop
docker stop --help
docker ps
docker login -u riot09dev
docker ps
docker run
docker ps
clear
docker id
docker --help
docker start
docker history 
docker run -d -p 8081:80 riot09dev/web3_sp2025_zabaleta:v1
docker ps
clear
docker ps
docker start 
docker start 24fb8c8790c4 
docker status
docker ps
systemctl status docker
clear
ls -l
docker compose up -d
docker stop
docker stop 24fb8c8790c4 
docker compose up -d
ps
docker ps
docker start 24fb8c8790c4 
docker compose up -d services.volumes
docker compose up -d 
ls -l
sudo su root
docker compose up -d 
docker ps
dockear stop 24fb8c8790c4
docker stop 24fb8c8790c4
docker compose up -d 
docker start 24fb8c8790c4
docker run 24fb8c8790c4
docker run -d -p 8081:80 riot09dev/web3_sp2025_zabaleta:v1
docker run -d -p 8080:80 riot09dev/web3_sp2025_zabaleta:v1
clear
sudo su root
docker restart 
sudo systemctl docker restart 
sudo systemctl restart docker
vim web/index.html 
docker push riot09dev/web3_sp2025_zabaleta -a
clear
docker ps
docker compose up -d
docker run -d -p 9091:80 riot09dev/web3_sp2025_zabaleta:v1
docker ps
sudo docker build  -t riot09dev/web3_sp2025_zabaleta:latest -t riot09dev/web3_sp2025_zabaleta:v1 .
docker compose up -d
clear
cd
cd UTN-FRA_SO_Examenes/
cd 202408
cd ansible/
ansible-galaxy role init Alta_Usuarios_Zabaleta
ansible-galaxy role init Sudoers_Zabaleta
ansible-galaxy role init Instala-tools_Zabaleta
vim playbook.yml
ls
cd roles/2PRecuperatorio/
ls
cd tasks/
vim main.yml 
ls
cd ..
ls
cd ..
ls
cd 2PRecuperatorio/
cd tasks/
ls
ls -l
cd ..
ls -l
cd ..
ls -l
cd ..
ls -l
rm -rf Alta_Usuarios_Zabaleta/
rm -rf Instala-tools_Zabaleta/
rm -rf Sudoers_Zabaleta/
cd roles/
clear
ansible-galaxy role init Alta_Usuarios_Zabaleta
ansible-galaxy role init Sudoers_Zabaleta
ansible-galaxy role init Instala-tools_Zabaleta
vim playbook.yml }
vim playbook.yml 
cat playbook.yml 
clear
cd 2PRecuperatorio/task
cd 2PRecuperatorio/tasks/
vim main.yml 
clear
cd ..
ls -l
cd Alta_Usuarios_Zabaleta/
cd tasks/
vim main.yml 
cd ..
cd Sudoers_Zabaleta/
cd tasks/
vim main.yml 
cd ..
cd Instala-tools_Zabaleta/tasks/
vim main.yml 
cd ..
ansible-playbook -i inventory/hosts playbook.yml
cat $HOME/.ssh/*.pub
ansible-playbook -i inventory/hosts playbook.yml
vim main.yml 
ls -l
vim main.yml 
ansible-playbook -i inventory/hosts playbook.yml
clear
vim main.yml 
clear
ansible-playbook -i inventory/hosts playbook.yml
cat $HOME/.ssh/*.pub
vim main.yml 
ssh-copy-id $Zabaleta@127.0.0.1
ssh-copy-id
clear
ansible-playbook -i inventory/hosts playbook.yml
sudo ansible-playbook -i inventory/hosts playbook.yml
vim playbook.yml 
sudo ansible-playbook -i inventory/hosts playbook.yml
vim playbook.yml 
sudo ansible-playbook -i inventory/hosts playbook.yml
vim playbook.yml 
sudo ansible-playbook -i inventory/hosts playbook.yml
clear
vim playbook.yml 
sudo ansible-playbook -i inventory/hosts playbook.yml
vim playbook.yml 
ansible-playbook -i inventory/hosts playbook.yml
ls 
cd inventory/
ls
cd host_vars/
cd ..
cd host/
cd hosts/
ls -l
vim host
ansible-playbook -i inventory/hosts playbook.yml
clear
cd ..
ansible-playbook -i inventory/hosts playbook.yml
cat $HOME/.ssh/id_ed25519.pub >> $HOME/.ssh/authorized_keys
chmod 600 $HOME/.ssh/authorized_keys 
ansible-playbook -i inventory/hosts playbook.yml
cd ..
ls 
cd UTNFRA_SO_Recu_Integral_Zabaleta/
cd 202408/
ls
rm -rf ansible/
sudo rm -rf ansible/
cd ..
ls
cd UTN-FRA_SO_Examenes/
cd 202408
sudo cp -r ansible "/$HOME/UTNFRA_SO_Recu_Integral_Zabaleta/202408"
cd ..
cd UTNFRA_SO_Recu_Integral_Zabaleta/
git add .
git status
cd ..
cd RTA_Examen_20250707/
ls
vim 
vim Punto_A.sh 
vim Punto_B.sh 
vim Punto_C.sh 
vim Punto_D.sh 
cd ..
ls -l
cp -r RTA_Examen_20250707 $HOME/UTNFRA_SO_Recu_Integral_Zabaleta
cp UTNFRA_SO_Recu_Integral_Zabaleta/
cd UTNFRA_SO_Recu_Integral_Zabaleta/
ls -l
cd ..
history -a
history
cp -r \$HOME/.bash_history \$HOME/UTNFRA_SO_Recu_Integral_Zabaleta/
cp -r .bash_history \$HOME/UTNFRA_SO_Recu_Integral_Zabaleta/
cp -r /.bash_history \$HOME/UTNFRA_SO_Recu_Integral_Zabaleta/
