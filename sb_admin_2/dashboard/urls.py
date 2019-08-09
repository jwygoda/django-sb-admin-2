from django.urls import path

from .views import DashboardTemplateView

app_name = "dashboard"
urlpatterns = [
    path(
        "",
        DashboardTemplateView.as_view(template_name="sb_admin_2/dashboard/index.html"),
        name="index",
    )
]
