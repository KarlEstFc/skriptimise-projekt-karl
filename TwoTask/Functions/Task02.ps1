function Task02 {
    param ([Parameter(Mandatory=$true)][string]$Laiend)
    try {
        $count = @(Get-Content .\random.txt -Encoding UTF8 -EA Stop | Where-Object { $_ -eq $Laiend }).Count
        Write-Host "$($Laiend): $count" -ForegroundColor Cyan
    } catch {
        Write-Error "random.txt puudub"
    }
}