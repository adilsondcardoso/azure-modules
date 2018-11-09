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
variable "tecnologia" {
    description = "(Optional) Usado para identificar recurso que não são windows"
    default     = ""
}
variable "centrocusto" {
    description = "(Required) Número do centro de custo"
}
variable "departamento" {
    description = "(Required) Nome do departamento solicitante"
}
variable "listApi" {
    type        = "map"
    description = "(Required) Lista nomes API."
}
variable "servicePlanId" {
    description = "(Required) ID service plan para recuro"
}
variable "instrumentation_key" {
    description = "(Required) Chave do do Application Insights para recurso"
}
variable "tipo_recurso" {
    type        = "string"
    description = "(Required) Nome do recurso abreviado. (e.g ai, app, api, logicapp, sqldb, sqlserver, etc)"
}
