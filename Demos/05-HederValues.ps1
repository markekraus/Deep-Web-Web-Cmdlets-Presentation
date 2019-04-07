$DemoBlock = {
  '-------------------------'
  'PowerShell {0}:' -f $PSVersionTable.PSVersion
  $Response = Invoke-WebRequest -Uri 'http://127.0.0.1:8083/ResponseHeaders?x-test-header=TestValue'
  '===== Type ====='
  $Response.Headers['x-test-header'].GetType().FullName
  '===== Index 0 ====='
  $Response.Headers['x-test-header'][0]
  '===== Select ====='
  $Response.Headers['x-test-header'] | Select-Object -First 1
  '-------------------------'
}.ToString()
' '
' '
' '
pwsh.exe -command $DemoBlock
powershell.exe -command $DemoBlock