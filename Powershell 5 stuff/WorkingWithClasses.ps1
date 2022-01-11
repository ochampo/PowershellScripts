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



$danWallet = [Wallet]::new()

$danWallet.nameOnID = 'Daniel Ocampo'
$danWallet.CreditCard1Bank = 'First Bank of money'
$danWallet.CreditCardBalance = 1234.5 
$danWallet.DebitCardBank =  'First Bank Of money'
$danWallet.DebitCardAvailFunds = 10000000000
$danWallet.cashOnHand = 112


$danWallet.SpendCash(10)
