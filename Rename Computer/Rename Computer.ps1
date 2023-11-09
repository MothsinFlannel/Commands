$ComputerName = Read-Host "Input Computer Current Name: ";
$NewName = Read-Host "Input Computer New Name: ";

Rename-Computer -ComputerName $ComputerName -NewName $NewName -DomainCredential henry.k12.ga.us\james.harrell -Restart