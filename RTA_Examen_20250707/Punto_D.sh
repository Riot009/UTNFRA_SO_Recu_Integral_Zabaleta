cd ansible

#Crear roles
ansible-galaxy role init roles/Alta_Usuarios_Zabaleta
ansible-galaxy role init roles/Sudoers_Zabaleta
ansible-galaxy role init roles/Instala-tools_Zabaleta

#Modificar playbook
vim playbook.yml

- hosts: testing
  become: true
  tasks:
    - include_role:
        name: 2PRecuperatorio
    - include_role:
        name: Alta_Usuarios_Zabaleta
    - include_role:
        name: Sudoers_Zabaleta
    - include_role:
        name: Instala-tools_Zabaleta
    - name: "Otra tarea"
      debug:
        msg: "Despues de la ejecucion del rol"

#Modificar tasks de 2PRecuperatorio
vim roles/2PRecuperatorio/tasks/main.yml

- name: "Rol: 2PRecuperatorio"
  debug:
    msg: "Inicio de tareas dentro del Rol: 2PRecuperatorio"

- name: "Crear directorio tmp/alumno"
  file:
    path: /tmp/alumno
    state: directory
    mode: '0755'

- name: "Crear archivo datos.txt con datos"
  copy:
    dest: /tmp/alumno/datos.txt
    content: |
        Nombre: Leonardo Zabaleta
        Division: 318
        Fecha: {{ '%Y-%m-%d' | strftime }}
        -----------------------------
        Distribucion: {{ ansible_distribution }}
        Cantidad de Cores: {{ ansible_processor_vcpus }}

- name: "Aviso de exito"
  debug:
    msg: "Archivo creado"

#Modificar tasks de Alta_Usuarios_Zabaleta
vim roles/Alta_Usuarios_Zabaleta/tasks/main.yml

- name: "Rol: Alta_Usuarios_Zabaleta"
  debug:
    msg: "Inicio de tareas dentro del Rol: Alta_Usuarios_Zabaleta"

- name: "Creo grupos GProfesores y GAlumnos"
  become: yes
  ansible.builtin.group:
    name: "{{ item }}"
    state: present
  with_items:
   - GProfesores
   - GAlumnos

- name: "Create a user 'Profesor' with a home directory"
  become: yes
  ansible.builtin.user:
    name: Profesor
    create_home: yes
    groups: GProfesores

- name: "Create a user 'Alumno' with a home directory"
  become: yes
  ansible.builtin.user:
    name: Alumno
    create_home: yes
    groups: GAlumnos

- name: "Aviso de exito"
  debug:
    msg: "Archivo Usuarios y Grupos creados"

#Modificar tasks de Sudoers_Zabaleta
vim roles/Sudoers_Zabaleta/tasks/main.yml

- name: "Rol: Sudoers_Zabaleta"
  debug:
    msg: "Inicio de tareas dentro del Rol: Sudoers_Zabaleta"

- name: "Crear archivo /etc/sudoers.d/gprofesores si no existe"
  become: yes
  file:
    path: /etc/sudoers.d/gprofesores
    state: touch
    mode: '0440'

- name: "Permitir sudo sin contraseña a grupo GProfesores"
  become: yes
  lineinfile:
    path: /etc/sudoers.d/gprofesores
    state: present
    line: "%GProfesores ALL=(ALL) NOPASSWD: ALL"
    validate: 'visudo -cf %s'

- name: "Aviso de exito"
  debug:
    msg: "Sudoers modificado"

#Modificar tasks de Instala-tools_Zabaleta
vim roles/Instala-tools_Zabaleta/tasks/main.yml

- name: "Rol: Instala-tools_Zabaleta"
  debug:
    msg: "Inicio de tareas dentro del Rol: Instala-tools_Zabaleta"

- name: "Agrego programas solicitados"
  become: yes
  package:
    name: "{{ item }}"
    state: present
  with_items:
    - htop
    - tmux
    - tree
    - speedtest-cli

- name: "Aviso de exito"
  debug:
    msg: "Programas instalados"

#Validar authorized key en mi usuario para SSH
cat $HOME/.ssh/*.pub
cat $HOME/.ssh/id_ed25519.pub >> $HOME/.ssh/authorized_keys
chmod 600 $HOME/.ssh/authorized_keys

#Ejecutar playbook en ansible
ansible-playbook -i inventory/hosts playbook.yml
