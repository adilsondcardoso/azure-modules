resource "azurerm_application_insights" "ai" {
	name                = "${lower("${var.seguradora}${var.sistema}ai${var.ambiente}${var.tecnologia}")}"
	application_type    = "Web"
	resource_group_name = "${var.resourcegroup_name}"
	location            = "${var.location}"                               

	tags    {
        environment  = "${var.ambiente}"
        cc           = "${var.centrocusto}"
        departamento = "${var.departamento}"
        sistema      = "${var.sistema}"
        version		 = "${var.versao}"
    }
}