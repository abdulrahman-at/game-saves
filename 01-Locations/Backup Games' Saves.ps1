$WorkingPath = Split-Path -LiteralPath $PSScriptRoot;
function Execute {
    param (
        $Arguments
    )
    
    Start-Process -FilePath git -WorkingDirectory $WorkingPath -ArgumentList $Arguments -NoNewWindow -Wait;
}

Execute -Arguments @("add", ".");
$mesasge = Read-Host "Please Enter Commit Message?";
Execute -Arguments @("commit", "-m", """$mesasge""");
Execute -Arguments @("push");
Read-Host "Press Enter To Exit";