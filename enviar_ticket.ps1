$url = "COLOQUE_SEU_WEBHOOK_AQUI"

$nome = Read-Host "Nome"
$email = Read-Host "Email"
$tipo_problema = Read-Host "Tipo de problema"
$mensagem = Read-Host "Mensagem"

$corpo = @{
    nome = $nome
    email = $email
    tipo_problema = $tipo_problema
    mensagem = $mensagem
} | ConvertTo-Json

Invoke-RestMethod -Uri $url -Method Post -Body $corpo -ContentType "application/json; charset=utf-8"

Write-Host "Chamado enviado com sucesso!" -ForegroundColor Green