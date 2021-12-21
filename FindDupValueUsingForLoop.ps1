

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

$dupMachine = @() 
     foreach($vm in $VMs)
     {
      
      $count = 0
      for($i=0; $i -lt $VMs.Length;$i++)
      { 
      if($vm.MAC -eq $vms.MAC[$i])
      {
        $count++
        if($count -gt 1)
        {
        $dupMachine +=  $vm 
        }
        
      } 
      
      }
   
     
     }
     $dupMachine | Sort-Object Name -Unique
