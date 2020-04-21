$vms = Get-VM
$report = @()
foreach ($vm in $vms)
{
    $hash = @{
        Name        = $vm.Name
        Network     = (Get-NetworkAdapter -VM $vm.Name).NetworkName
        IP          = $vm.Guest.IPAddress
    }
    $Object = New-Object PSObject -Property $hash
    $report += $Object
}

$report | Select-Object Name,Network,IP | Sort-Object Network