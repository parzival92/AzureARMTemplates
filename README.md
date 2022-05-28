# ARM Templates
To implement infrastructure as code for your Azure solutions, use Azure Resource Manager templates (ARM templates). The template is a JavaScript Object Notation (JSON) file that defines the infrastructure and configuration for your project. The template uses declarative syntax, which lets you state what you intend to deploy without having to write the sequence of programming commands to create it. In the template, you specify the resources to deploy and the properties for those resources.



## Azure Resource Manager deployment modes
    - Increment
        - In incremental mode, Resource Manager leaves unchanged resources that exist in the resource group but aren't specified in the template. Resources in the template are added to the resource group. 
    - Complete
        - In complete mode, Resource Manager deletes resources that exist in the resource group but aren't specified in the template.
    
    - Resource Group contains:

        - Resource A
        - Resource B
        - Resource C
    - Template contains:

        - Resource A
        - Resource B
        - Resource D
    - When deployed in **incremental** mode, the resource group has:

        - Resource A
        - Resource B
        - Resource C
        - Resource D
    - When deployed in complete mode, Resource C is deleted. The resource group has:

        - Resource A
        - Resource B
        - Resource D

## Deploy ARM Template

- To deploy to a resource group, use az deployment group create:
```
az deployment group create --resource-group vnetparz --template-file vnet.json --parameters vnetName=vborgsat1 vnetAddressPrefix=10.0 subnetname=sborgnet1 Env=dev
```
- Delete deployment - You can try to create deployment with complete mode which will delete any resource existing.
```
az deployment group create --mode Complete --resource-group vnetparz --template-file vnet.json --parameters vnetName=vborgsat1 vnetAddressPrefix=10.0 subnetname=sborgnet1 Env=dev
```
- Delete Resource Group 
```
az group delete -g vnetparz
```