<p align="center"><a href="https://laravel.com" target="_blank"><img src="https://www.cultura.gob.sv/wp-content/uploads/2021/06/MinisterioCultura.png" width="400"></a></p>

# Weave Scope - Ministerio de Cultura

Script para la automatización de la instalación y del inicio automático de weavescope. Herramienta de monitoreo en tiempo real para los contenedores de las aplicaciones.

## Instalación 

### Clonar el repositorio

    https://github.com/reposmc/scope.git

### Configurar el archivo del servicio

    nano scope/start_scope.service

- Verificar que la ip sea la correcta, por defecto es la 10.30.0.84

### Habilitar el inicio automático

    cp ./start_scope.service /etc/systemd/system/start_scope.service

    sudo systemctl enable start_scope.service

### Iniciar Weavescope

    sudo sh scope/start_scope.sh 10.30.0.84

