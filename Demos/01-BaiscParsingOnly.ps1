$DemoBlock = {
  $params = @{
    Uri = 'https://google.com'
  }
  $Result = Invoke-WebRequest @Params
  '-------------------------'
  'PowerShell {0}:' -f $PSVersionTable.PSVersion
  $Result.ParsedHtml
  '-------------------------'
}.ToString()
' '
' '
' '
pwsh.exe -command $DemoBlock
powershell.exe -command $DemoBlock