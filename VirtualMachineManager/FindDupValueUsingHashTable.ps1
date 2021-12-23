

# Change Mac Addrres from dynamic to staic in Virtual Machine Manager
 # $VMS = Get-SCVirtualMachine | Select -ExpandProperty VirtualNetworkAdapters | select-object Name, MACAddress  #| Where { $_.MACAddress -like "*1C:95"}+
 $NameList=’vm1’,’vm2’,’vm3’,’vm4’,’vm5’,’vm6’,’vm7’
 $MacAdr ='123','456','654','714','111','111', '12345'
 $myObject = @()
 $VMs = @()
 $i = 0
foreach($name in $NameList)
{
 
 $myObject = [PSCustomObject]@{
    VmName = $name
    MAC    = $MacAdr[$i]
    }

$VMs += $myObject
$i++
}
####### example of Mac issue address issue 
$ageList = @{}

foreach($VM in $VMs)
{  
 if($ageList.Contains(($Vm.MAC)))
 {
     "we found a dup" 
     $vm.VmName +  " " + $vm.MAC
     $ageList[$vm.MAC] + " " + $vm.MAC

 }  
 else{  
$key = $VM.MAC
$value = $VM.VmName
$ageList.add( $key, $value )
 }

}
