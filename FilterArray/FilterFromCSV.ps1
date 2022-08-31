#download transaction
$bankHistory = Import-Csv '.\transactions.csv'  -Delimiter "," 
$temp = 0
$temp1 = 0
$TransferTo = $bankHistory | Where-Object  Description -like  "*TO LASTNAME,FIRSTNAME*" #| Where-Object Amount -eq -45.00
$DepositTo  = $bankHistory | Where-Object Description -like  "*From LASTNAME,FIRSTNAME*"  
$TransferTo | Format-Table
$DepositTo | Format-Table 

$TransferTo = $TransferTo.Amount -replace ‘[()]’
$DepositTo  = $DepositTo.Amount -replace ‘[()]’



foreach($amountT in $TransferTo)
{
  
  $temp = $temp + $amountT   
}

foreach($AmountD in $DepositTo)
{
  
  $temp1 = $temp1 + $amountD   
}

"Total Paid" + " " + $temp
"Amount Given" + " " + $temp1