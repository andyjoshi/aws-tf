provider "azurerm"{
}
resource"azurerm_resource_group""rg"{
name="TerraformResourceGroup"
location="eastus"

        tags={
        environment= "Terraform Azure"
        deployedby="Admin"
        }

}
