function get-vminfo ($param1)
{
    Get-VM -Name $param1 | Select-Object Name,
        @{N="NicPortGroup";E={(Get-NetworkAdapter -VM $_.Name).NetworkName}},
        MemoryGB,NumCpu,
        @{N="ToolsStatus";E={$_.ExtensionData.Summary.guest.ToolsRunningStatus}}

}