resource "azurerm_resource_group" "rg" {
    name     = "${upper("${var.seguradora}_${var.tipo_recurso}_${var.sistema}_${var.ambiente}${var.tecnologia}")}"
    location = "${var.location}"
    
    tags    {
        environment  = "${var.ambiente}"
        CC           = "${var.centrocusto}"
        departamento = "${var.departamento}"
        sistema      = "${var.sistema}"
        version		 = "${var.versao}"
    }
}