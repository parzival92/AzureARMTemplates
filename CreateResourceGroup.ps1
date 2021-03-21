param
(
    

    [Parameter(Mandatory=$true, HelpMessage="Enter Resource Group Name")]
    [string] $ResourceGroupName,

    [Parameter(Mandatory=$true, HelpMessage="Enter Location")]
    [string] $Location

)

Write-Host "Creating Resource Group"
New-AzResourceGroup -Name $ResourceGroupName -Location $Location -Verbose



