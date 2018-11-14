variable "resourcegroup_name" {
    description = "(Required) Nome do grupo de recurso"
}
variable "location" {
    default = "Brazil South"
}
variable "seguradora" {
    description = "(Required) Nome da seguradora abreviado (e.g mag ou sic)" 
}
variable "sistema" {
    description = "(required) Nome do contexto ou sistema"
}
variable "ambiente" {
    description = "(Required) tipo de ambiente que está sendo criado (e.g dev, tst, hmg ou prd)"
}
variable "versao" {
    description = "(Required) Versão que do ambiente"
}
variable "centrocusto" {
    description = "(Required) Número do centro de custo"
}
variable "departamento" {
    description = "(Required) Nome do departamento solicitante"
}
variable "sqlDbName" {
    type        = "map"
    description = "(Required) Nomes do bancos de dados."
}
variable "sqlServer_name" {
    description = "(Required) Nome do servidor SQL."
}
variable "tipo_recurso" {
    type        = "string"
    description = "(Removed) Nome do recurso abreviado. (e.g ai, app, api, logicapp, sqldb, sqlserver, etc)"
}
variable "sql_collation" {
    type        = "string"
    description = "(Optional) Tipo de collation do banco de dados"
    default     = "SQL_Latin1_General_CP1_CI_AS"
}
