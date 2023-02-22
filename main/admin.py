from django.contrib import admin

from .models import FilesServ, DocServ, FilesCert


admin.site.register(FilesServ)
admin.site.register(DocServ)
admin.site.register(FilesCert)