param( [String]$path='.\',
       [String]$hook='commit-msg')

Write-Host "Searching git repositories on path [$path]."
$gitDirectories = Get-ChildItem -Path $path -Recurse -Attributes Hidden -Filter '.git' -Directory | Select-Object -ExpandProperty FullName
foreach($gitDir in $gitDirectories){
    $hooksDir = "$gitDir\hooks"
    try{
        Copy-Item ".\hooks\$hook" $hooksDir -ErrorAction Stop
        Write-Host "Copied [$hook] to [$hooksDir]"
    } catch {
        Write-Host "ERROR: Cannot copy [$hook] to [$hooksDir]. Reason:" $_.Exception.Message
    }
}
Write-Host "Finish copying hooks."