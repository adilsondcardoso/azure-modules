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