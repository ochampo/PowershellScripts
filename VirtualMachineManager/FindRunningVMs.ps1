Import-Module -Name virtualmachinemanager 
$vms = Get-SCVirtualMachine | Where-Object status -EQ  "running"

foreach ($VM in $VMS) {
Start-SCVirtualMachine -VM $vm.Name
} 

foreach ($VM in $VMS) {
    stop-SCVirtualMachine -VM $vm.Name
    } 
    


