class Wallet
{
    [string] $nameOnID
    [String] $CreditCard1Bank
    [string] $CreditCardBalance
    [string] $DebitCardBank
    [float] $DebitCardAvailFunds
    [int] $cashOnHand

    [void] SpendCash ([Float] $spent )
{
    $this.CashOnHand -= $spent
}

} 

$danWallet2 = @()
$danWallet = [Wallet]::new()
$danWallet.nameOnID = 'Daniel Ocampo234'
$danWallet.CreditCard1Bank = 'First Bank of money234'
$danWallet.CreditCardBalance = 1234.52 
$danWallet.DebitCardBank =  'First Bank Of money234'
$danWallet.DebitCardAvailFunds = 100000000
$danWallet.cashOnHand = 112
$danWallet2 += $danWallet

$danWallet.SpendCash(10)
