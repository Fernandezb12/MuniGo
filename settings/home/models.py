from django.db import models
import json

class Usuario(models.Model):
    id_usuario = models.AutoField(primary_key=True)
    nombre = models.CharField(max_length=100,null=False)
    email = models.EmailField(unique=True, null=False)
    telefono = models.CharField(max_length=15, unique=True)
    contrasena = models.CharField(max_length=255)
    avatar = models.ImageField(upload_to='avatars/')  # Para almacenar imágenes de perfil
    fecha_registro = models.DateTimeField(auto_now_add=True)
    rol = models.CharField(max_length=20, choices=[('usuario', 'Usuario'), ('administrador', 'Administrador')], default='usuario')

class ServicioMunicipal(models.Model):
    id_servicio = models.AutoField(primary_key=True)
    nombre = models.CharField(max_length=100, null=False)
    descripcion = models.TextField()
    tipo_servicio = models.CharField(max_length=50, choices=[('recoleccion_basura', 'Recolección de basura'), ('pago', 'Pago'),], default='recoleccion_basura')
    ubicacion = models.CharField(max_length=255)
    contacto = models.CharField(max_length=100)
    icono = models.ImageField(upload_to='iconos/')  # Para almacenar iconos
    fecha_creacion = models.DateTimeField(auto_now_add=True)

class Evento(models.Model):
    id_evento = models.AutoField(primary_key=True)
    titulo = models.CharField(max_length=150, null=False)
    descripcion = models.TextField()
    fecha_evento = models.DateField()
    hora_evento = models.TimeField()
    ubicacion = models.CharField(max_length=255)
    imagen = models.ImageField(upload_to='eventos/')
    favorito = models.BooleanField(default=False)
    fecha_creacion = models.DateTimeField(auto_now_add=True)

class Alerta(models.Model):
    id_alerta = models.AutoField(primary_key=True)
    titulo = models.CharField(max_length=150, null=False)
    descripcion = models.TextField()
    fecha_emision = models.DateTimeField(auto_now_add=True)
    ubicacion = models.CharField(max_length=255)
    icono = models.ImageField(upload_to='iconos_alertas/')
    tipo_alerta = models.CharField(max_length=50, choices={'emergencia': 'Emergencia','informacion': 'Información',}, default='informacion')    
    imagenes = models.JSONField(default=list)  # Para almacenar múltiples imágenes en formato JSON

    def save(self, *args, **kwargs):
        # Convertir la lista de imágenes a un string JSON antes de guardar
        self.imagenes = json.dumps(self.imagenes)
        super().save(*args, **kwargs)
        
class RecoleccionBasura(models.Model):
    id_contacto = models.AutoField(primary_key=True)
    nombre_servicio = models.CharField(max_length=100, null=False)
    telefono = models.CharField(max_length=15, null=False)
    icono = models.ImageField(upload_to='iconos_recoleccion/')
    fecha_creacion = models.DateTimeField(auto_now_add=True)

class Comunicado(models.Model):
    id_comunicado = models.AutoField(primary_key=True)
    entidad = models.CharField(max_length=100, null=False)
    avatar_entidad = models.ImageField(upload_to='avatars_entidad/')
    texto_comunicado = models.TextField(null=False)
    imagen = models.ImageField(upload_to='imagenes_comunicados/')
    fecha_publicacion = models.DateTimeField(auto_now_add=True)
    likes = models.PositiveIntegerField(default=0)
    compartido = models.BooleanField(default=False)

class ContactoEmergencia(models.Model):
    id_contacto = models.AutoField(primary_key=True)
    nombre_servicio = models.CharField(max_length=100, null=False)
    telefono = models.CharField(max_length=15, null=False)
    icono = models.ImageField(upload_to='iconos_emergencia/')
    fecha_creacion = models.DateTimeField(auto_now_add=True)

