#!/bin/bash
DISCO="/dev/sdd"

echo "=== 1. Limpiando y particionando $DISCO ==="
# Desmontamos por si quedó algo tomado
sudo umount -q ${DISCO}* 2>/dev/null

# Limpiamos firmas anteriores del disco
sudo wipefs -a $DISCO

# Enviamos los comandos exactos a fdisk
(
  echo o # Crear nueva tabla MBR limpia
  # 3 Primarias de 1GB
  echo n; echo p; echo 1; echo ""; echo "+1G"
  echo n; echo p; echo 2; echo ""; echo "+1G"
  echo n; echo p; echo 3; echo ""; echo "+1G"
  # 1 Extendida con el resto del disco
  echo n; echo e; echo ""; echo ""
  # 7 Lógicas de 1GB (la última ocupa el espacio sobrante)
  echo n; echo ""; echo "+1G"
  echo n; echo ""; echo "+1G"
  echo n; echo ""; echo "+1G"
  echo n; echo ""; echo "+1G"
  echo n; echo ""; echo "+1G"
  echo n; echo ""; echo "+1G"
  echo n; echo ""; echo ""
  # Guardar y salir
  echo w
) | sudo fdisk $DISCO

echo "=== 2. Formateando particiones en ext4 ==="
for i in 1 2 3 5 6 7 8 9 10 11; do
    sudo mkfs.ext4 -F "${DISCO}${i}"
done

echo "=== 3. Registrando montaje persistente en /etc/fstab ==="
# Limpiamos entradas viejas de sdd si existieran
sudo sed -i '/\/dev\/sdd/d' /etc/fstab

sudo tee -a /etc/fstab <<EOF
/dev/sdd1  /Examenes-UTN/alumno_1/parcial_1  ext4  defaults  0 0
/dev/sdd2  /Examenes-UTN/alumno_1/parcial_2  ext4  defaults  0 0
/dev/sdd3  /Examenes-UTN/alumno_1/parcial_3  ext4  defaults  0 0
/dev/sdd5  /Examenes-UTN/alumno_2/parcial_1  ext4  defaults  0 0
/dev/sdd6  /Examenes-UTN/alumno_2/parcial_2  ext4  defaults  0 0
/dev/sdd7  /Examenes-UTN/alumno_2/parcial_3  ext4  defaults  0 0
/dev/sdd8  /Examenes-UTN/alumno_3/parcial_1  ext4  defaults  0 0
/dev/sdd9  /Examenes-UTN/alumno_3/parcial_2  ext4  defaults  0 0
/dev/sdd10 /Examenes-UTN/alumno_3/parcial_3  ext4  defaults  0 0
/dev/sdd11 /Examenes-UTN/profesores          ext4  defaults  0 0
EOF

echo "=== 4. Montando todas las particiones ==="
sudo mount -a

echo "=== Punto B finalizado ==="

