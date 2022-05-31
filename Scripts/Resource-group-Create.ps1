param(
    $RGName,
    $Location,
	$environment
)

$rg = Get-AzResourceGroup
$rgs = $rg.ResourceGroupName

if ($rgs -notcontains "$RGName")
		{
			Write-Host "Resource Group not available, Creating Resource Group !"
			New-AzResourceGroup -Name "$RGName" -Location "$Location" -Tag @{ENVIRONMENT="$environment"} -Force
break

			}
else {

Write-Host "Resource Group already exists !"
break
}
