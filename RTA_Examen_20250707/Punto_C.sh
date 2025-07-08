# Modifico el archivo HTML > ~/UTNFRA_SO_Recu_Integral_Tomasello/202408/docker/web$ vim index.html

#Reiniciar servicio de Docker
sudo systemctl restart docker

#Extender LV de docker por el disponible
sudo lvextend -l 100%FREE /dev/mapper/vg_datos-lv_docker

#Hacer Resize
sudo resize2fs /dev/mapper/vg_datos-lv_docker

#Descargar la imagen
docker pull nginx

# Conectarse a Docker
docker login -u riot09dev

# Crear archivo
echo "FROM nginx
COPY web /usr/share/nginx/html" > dockerfile

# Crear la imagen
docker build -t riot09dev/web3_sp2025_zabaleta:latest -t riot09dev/web3_sp2025_zabaleta:v1 .

# Pushear a docker hub
docker push riot09dev/web3_sp2025_zabaleta -a

# Correr en mi puerto
docker run -d -p 9091:80 riot09dev/web3_sp2025_zabaleta:v1

# Modificar archivo info.txt
echo "Modelo: $(grep 'model name' /proc/cpuinfo | head -1 | awk -F: '{print $2}') Frecuencia: $(grep 'cpu MHz' /proc/cpuinfo | head -1 | aw
k -F: '{print $2}') MHz" | sudo tee web/file/info.txt > /dev/null

# Modificar docker-compose.yml
vim docker-compose.yml

version: '3'

services:
    web:
        image:   "riot09dev/web3_sp2025_zabaleta:latest"
        ports:
        -   "8081:80"
        volumes:
        -   "./web/file:/usr/share/nginx/html/file"

# Levantar servicio actualizado
docker compose up -d

