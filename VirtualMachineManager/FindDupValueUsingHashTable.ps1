
#Import-Module -Name virtualmachinemanager 
# Change Mac Addrres from dynamic to staic in Virtual Machine Manager
 # $VMS = Get-SCVirtualMachine | Select -ExpandProperty VirtualNetworkAdapters | select-object Name, MACAddress  #| Where { $_.MACAddress -like "*1C:95"}+
 $NameList=’vm1’,’vm2’,’vm3’,’vm4’,’vm5’,’vm6’,’vm7’
 $MacAdr ='124','123','654','111111','11451','111', '111'
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
if ($null -eq $MacList[$VM.MAC])
{
    $MacList[$VM.MAC] = $VM.VmName  
}
else 
{
    write-output ($VM.VmName + " has a dup mac value  with " +  $MacList[$VM.MAC] )
}
}

#  if($MacList.Contains(($VM.MAC)))
#  {    
#      $VMWithDupMac += $VM
#  }  
#  else{  
# $key = $VM.MAC
# $value = $VM.VmName
# $MacList.add( $key, $value )
#  }
# }
###add all of the MAC address from the Hash Table 
# $TempValuesForMACAddressInHash =@()
# foreach ($item in  $VMWithDupMac) {
#     $TempValuesForMACAddressInHash +=   $VMs |  Where-Object  VmName -EQ $MacList[$item.MAC]  
# }
# $VMWithDupMac += $TempValuesForMACAddressInHash

#$VMWithDupMac.Count -gt 0 ? ($VMWithDupMac | Sort-Object MAC | Select-Object vmName,MAC -Unique) : "No dups found"
#if running powershell 5 do this 
#$VMWithDupMac | Sort-Object MAC | Select-Object vmName,MAC -Unique







