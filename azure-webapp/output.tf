output "appservice" {
  value = ["${azurerm_app_service.appservice.*.name}"]
}