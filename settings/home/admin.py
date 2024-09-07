from django.contrib import admin
from .models import Evento
from .models import Usuario
from .models import ServicioMunicipal
from .models import Alerta
from .models import RecoleccionBasura
from .models import Comunicado
from .models import ContactoEmergencia

admin.site.register(Evento)

admin.site.register(Usuario)

admin.site.register(ServicioMunicipal)

admin.site.register(Alerta)

admin.site.register(RecoleccionBasura)

admin.site.register(Comunicado)

admin.site.register(ContactoEmergencia)