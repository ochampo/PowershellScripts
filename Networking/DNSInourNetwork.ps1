$Nslookup = @()
try{
for($i = 0; $i -le 255; $i++)
{
$Nslookup += nslookup 192.168.0.$i 

}

}
catch{
"no machine"
}
$DNSInfo =@()
$DNSInfo = $Nslookup | where{ $_ -NE "" } 
$myObject = @()

for($i =0; $i -le $DNSInfo.length; $i++) {


if($DNSInfo[$i] -like "Name:*" )
{
$myHashtable2 = @{
    Name  = $DNSInfo[$i]
    IPAddress = ($DNSInfo[$i+1])
    }
}
else
{
}
$system = New-Object -TypeName PSObject -Property $myHashtable2
$myObject += $system
$myHashtable2 = @()
$system = @()
}
$parsedDNS = parseDNSEntry($myObject)
$parsedDNS
function parseDNSEntry([psobject] $dns )
{
   $NewDnsObject = @()
   foreach($dnsMod in $dns)
   {

   $myHashtable = @{
    Name  = $dnsMod.Name.Replace(' ','').Replace('Name:','') 
    IPAddress = $dnsMod.IPAddress.Replace(' ','').Replace('Address:','') 
    }
    

   $NewDnsObjectTemp =  New-Object -TypeName PSObject -Property $myHashtable
   $NewDnsObject += $NewDnsObjectTemp
   $myHashtable =@()
   $NewDnsObjectTemp= @()

   }
   
   $NewDnsObject

  }






 
  