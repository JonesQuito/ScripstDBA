## Configuração do servidor de arquivos Samba

### Download e instalação
- Debian
	`sudo apt-get install libcups2 samba samba-common`
- Rad Hat

### Configuração
A configuração é feita no arquivo /etc/samba/smb.conf
	`vi /etc/samba/smb.conf`
	
O arquivo é composto de sessões. A sessão [global] contém as configurações globais que serão aplicadas a todos os usuários do samba
- habilitar o security = user
- a entrada `security = user` habilita os usuários do linux acessarem o compartilhamento

- Reiniciar o servidor samba `service smbd restart`
- Criando um diretório para disponibilizá-lo como publico
	`mkdir /home/publico`
	`ls -l /home`
- Alterar o grupo proprietário do diretório
	`chgrp users /home/publico`
	
- Alterar as [permissões de escrita, leitura e execução](https://github.com/JonesQuito/ScriptsDBA/blob/master/SO/tutoriais/security-linux/permissoes.md)
	`chmod 775 /home/publico`
	
	
	