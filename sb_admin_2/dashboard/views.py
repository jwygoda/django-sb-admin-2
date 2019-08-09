from django.contrib.auth.mixins import LoginRequiredMixin
from django.urls import reverse_lazy
from django.views.generic import TemplateView


class DashboardTemplateView(LoginRequiredMixin, TemplateView):
    login_url = reverse_lazy("account_login")
