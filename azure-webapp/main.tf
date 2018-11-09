resource "azurerm_app_service" "appservice" {
  count               = "${length(var.listApi)}"
  name                = "${lower("${var.seguradora}${lookup(var.listApi, count.index)}${var.tipo_recurso}${var.ambiente}")}"
  location            = "${var.location}"
  resource_group_name = "${var.resourcegroup_name}"
  app_service_plan_id = "${var.servicePlanId}"

  site_config {
    always_on                = true
    dotnet_framework_version = "v4.0"

    default_documents = [
      "Default.htm",
      "Default.html",
      "Default.asp",
      "index.htm",
      "index.html",
      "iisstart.htm",
      "default.aspx",
      "index.php",
      "hostingstart.html",
    ]
  }

  app_settings {
    APPINSIGHTS_INSTRUMENTATIONKEY     = "${var.instrumentation_key}"
    WEBSITE_HTTPLOGGING_RETENTION_DAYS = "1"
    WEBSITE_LOAD_CERTIFICATES          = "*"
    WEBSITE_NODE_DEFAULT_VERSION       = "6.9.1"
    WEBSITE_TIME_ZONE                  = "E. South America Standard Time"
  }

  tags    {
        environment  = "${var.ambiente}"
        CC           = "${var.centrocusto}"
        departamento = "${var.departamento}"
        sistema      = "${var.sistema}"
        version		   = "${var.versao}"
    }
}