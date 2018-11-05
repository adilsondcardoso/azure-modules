output "db_name" {
  value = "${azurerm_sql_database.db.*.name}"
}