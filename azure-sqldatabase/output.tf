output "db_name" {
  value = "${azurerm_sql_database.db.*.name}"
}
output "db_connectionString" {
  description = "Connection string para o bando de dados SQL criado no Azure."
  value       = "Server=tcp:${azurerm_sql_database.db.*.server_name}.database.windows.net,1433;Initial Catalog=${azurerm_sql_database.db.*.name};Persist Security Info=False;User ID=username;Password=password;MultipleActiveResultSets=True;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;"
}