$AppSettings = Get-Content -Path .\.example.env
foreach($setting in $AppSettings)
{
    if(($setting -ne "") -and (-Not $setting.StartsWith("#"))) {
        $Key = $setting.Split("=")
        Write-Host $Key[0] : $Key[1]
    }
}