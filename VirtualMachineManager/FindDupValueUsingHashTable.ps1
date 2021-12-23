

# Change Mac Addrres from dynamic to staic in Virtual Machine Manager
 # $VMS = Get-SCVirtualMachine | Select -ExpandProperty VirtualNetworkAdapters | select-object Name, MACAddress  #| Where { $_.MACAddress -like "*1C:95"}+
 $NameList=’vm1’,’vm2’,’vm3’,’vm4’,’vm5’,’vm6’,’vm7’
 $MacAdr ='123','456','654','714','111','111', '12345'
 $vminfo = @()
 $VMs = @()
 $i = 0
foreach($name in $NameList)
{
 
 $VMinfo = [PSCustomObject]@{
    VmName = $name
    MAC    = $MacAdr[$i]
    }

$VMs += $VMinfo
$i++
}
####### example of Mac issue address issue 
$MacList = @{}

foreach($VM in $VMs)
{  
 if($MacList.Contains(($Vm.MAC)))
 {
     "we found a dup" 
     $vm.VmName +  " " + $vm.MAC
     $MacList[$vm.MAC] + " " + $vm.MAC

 }  
 else{  
$key = $VM.MAC
$value = $VM.VmName
$MacList.add( $key, $value )
 }

}
