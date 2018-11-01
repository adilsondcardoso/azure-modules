output "ai_name" {
  value = "${azurerm_application_insights.ai.name}"
}  
output "ai_instrumentation_key" {
   value = "${azurerm_application_insights.ai.instrumentation_key}"
}