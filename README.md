# Fiche
## Imagem Termbin "Fiche" para o Dockerhub

Base para criação
1. [Container nginx](https://hub.docker.com/_/nginx)
2. [Fiche](https://github.com/solusipse/fiche)

## Utilização

**docker cli**

` docker run -d --name=escolha -p 9999:9999 -p 8000:80 -v </path/to/nginx/html>:/usr/share/nginx/html -v </path/to/nginx/conf.d>:/etc/nginx/conf.d jeanfrantiesco/fiche `
  
| Parametros| Função |
| --- | --- |
| --name | Define um nome para o Container |
| --p 9999 | Define a porta da aplicação fiche |
| --p 8000 | Define a porta web do nginx |
| --v /usr/share/nginx/html | Pasta web do nginx |
| --v /etc/nginx/conf.d | Pasta de configuração do arquivo **default.conf do nginx** |

###### OBS: Recomendo mapear a pasta do arquivo default.conf e editar o server_name e porta. Com isso automaticamente o fiche vai subir com os valores definicos no arquivo, caso contrario vai iniciar como localhost na porta 80.

