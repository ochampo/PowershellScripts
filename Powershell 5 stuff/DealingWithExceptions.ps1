#terminating exception

#nonterminating exception 


try{
    Get-WindowsErrorReporting -ErrorAction Stop
}
catch {
    "something went wrong"
}
finally {
    write-host "Do this after the try block regardless of whether an exception occurred or not"
}