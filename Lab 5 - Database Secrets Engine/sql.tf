# Configure the Microsoft Azure Provider
provider "azurerm" {  
}

resource "azurerm_resource_group" "student01" {
  name     = "Ahead_Student01_SQLRDS"
  location = "West US"
}

resource "azurerm_sql_database" "db" {
	  name                             = "mysqldatabase01"
	  resource_group_name              = "${azurerm_resource_group.test.name}"
	  location                         = "West US"
	  edition                          = "Basic"
	  collation                        = "SQL_Latin1_General_CP1_CI_AS"
	  create_mode                      = "Default"
	  requested_service_objective_name = "Basic"
	  server_name                      = "${azurerm_sql_server.server.name}"
	}

resource "azurerm_sql_server" "server" {
	  name                         = "aheadstudent01"
	  resource_group_name          = "${azurerm_resource_group.test.name}"
	  location                     = "West US"
	  version                      = "12.0"
	  administrator_login          = "aheadadmin"
	  administrator_login_password = "Raleigh2018!"
	}

	# Enables the "Allow Access to Azure services" box as described in the API docs
	# https://docs.microsoft.com/en-us/rest/api/sql/firewallrules/createorupdate

	resource "azurerm_sql_firewall_rule" "fw" {
	  name                = "firewallrules"
	  resource_group_name = "${azurerm_resource_group.test.name}"
	  server_name         = "${azurerm_sql_server.server.name}"
	  start_ip_address    = "0.0.0.0"
	  end_ip_address      = "0.0.0.0"
	}
