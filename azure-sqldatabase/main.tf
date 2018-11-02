resource "azurerm_sql_database" "db" {
    count               = "${length(var.sqlDbName)}"
    name                = "${lower("${var.seguradora}${lookup(var.sqlDbName, count.index)}sqldb${var.ambiente}")}"
    resource_group_name = "${var.resourcegroup_name}"
    location            = "${var.location}"
    server_name         = "${var.sqlServer_name}"

    tags    {
        environment  = "${var.ambiente}"
        cc           = "${var.centrocusto}"
        departamento = "${var.departamento}"
        sistema      = "${var.sistema}"
        version		 = "${var.versao}"
    }
}