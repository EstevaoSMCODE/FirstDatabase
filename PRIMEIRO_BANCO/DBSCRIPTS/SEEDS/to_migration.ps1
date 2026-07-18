# Primeiro Passo - Definir o diretorio atual

$scriptDirectory = Split-Path -Path $MyInvocation.MyCommand.Definition -Parent

#Arquivo saida com todos os sql
$outputFile = Join-Path -Path $scriptDirectory -ChildPath "migration.sql"

#Verifica se migration.sql ja existe se nao deleta

if (Test-Path $outputFile){
    Remove-Item $outputFile
}

#Pegar o conteudo dos arquivos do caminho $scriptDirectory

$sqlFiles = Get-ChildItem -Path $scriptDirectory -Filter *.sql -File | Sort-Object Name 

#Concaternar o Arquivos e colocar os arquivos no outputFile

foreach($file in $sqlFiles){
    Get-Content $file.FullName | Out-File -Append -FilePath $outputFile
    "GO" | Out-File -Append -FilePath $outputFile
}


Write-Host "Arquivos concatenados dentro de outputfile"