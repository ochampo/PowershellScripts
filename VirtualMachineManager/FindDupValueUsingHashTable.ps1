

# Change Mac Addrres from dynamic to staic in Virtual Machine Manager
 # $VMS = Get-SCVirtualMachine | Select -ExpandProperty VirtualNetworkAdapters | select-object Name, MACAddress  #| Where { $_.MACAddress -like "*1C:95"}+
 $NameList=’vm1’,’vm2’,’vm3’,’vm4’,’vm5’,’vm6’,’vm7’
 $MacAdr ='123','123','654','111111','11451','111', '12345'
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
$VMWithDupMac =@()
foreach($VM in $VMs)
{  
 if($MacList.Contains(($VM.MAC)))
 {    
     $VMWithDupMac += $VM
 }  
 else{  
$key = $VM.MAC
$value = $VM.VmName
$MacList.add( $key, $value )
 }
}
###add all of the MAC address from the Hash Table 
$TempValuesForMACAddressInHash =@()
foreach ($item in  $VMWithDupMac) {
    $TempValuesForMACAddressInHash +=   $VMs |  Where-Object  VmName -EQ $MacList[$item.MAC]  
}
$VMWithDupMac += $TempValuesForMACAddressInHash

$VMWithDupMac | Sort-Object MAC | Select-Object vmName,MAC -Unique







