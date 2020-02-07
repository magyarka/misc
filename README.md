# misc

A collection of miscellaneous stuff...

## function

get-vminfo.ps1:
From a powercli session connected to your vCenter you can load the function and us it to gather info on a VM or multiple VMs.
```bash

. .\get-vminfo.ps1
get-vminfo MyVMName

```
OR...
```bash

. .\get-vminfo.ps1
get-vm | %{get-vminfo $_.Name}

```