# See skript otsib Functions kaustast kõik failid ja laeb need mällu
$functionsPath = Join-Path -Path $PSScriptRoot -ChildPath "Functions\*.ps1"
Get-ChildItem -Path $functionsPath | ForEach-Object {
    . $_.FullName
}

# Teeb need kaks funktsiooni teistele nähtavaks
Export-ModuleMember -Function Task01, Task02