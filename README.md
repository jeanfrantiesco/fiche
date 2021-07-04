# Fiche
## Imagem Termbin "Fiche" para o Dockerhub

Base para criação
1. [Container nginx](https://hub.docker.com/_/nginx)
2. [Fiche](https://github.com/solusipse/fiche)

## Utilização

**docker cli**

``` 
docker run -d \
--name=escolha \
-p 9999:9999 \
-p 8000:80 \
-v /path/to/nginx/html:/usr/share/nginx/html \
-v /path/to/nginx/conf.d:/etc/nginx/conf.d \
jeanfrantiesco/fiche
```

| Parametros| Função |
| --- | --- |
| --name | Define um nome para o Container |
| --p 9999 | Define a porta da aplicação fiche |
| --p 8000 | Define a porta web do nginx |
| --v /usr/share/nginx/html | Pasta web do nginx |
| --v /etc/nginx/conf.d | Pasta de configuração do arquivo **default.conf do nginx** |

###### OBS: Recomendo mapear a pasta do arquivo default.conf e editar o server_name e porta. Com isso automaticamente o fiche vai subir com os valores definicos no arquivo, caso contrario vai iniciar como localhost na porta 80.

## nginx

```
listen       80;
listen  [::]:80;
server_name  localhost;

location / {
    root   /usr/share/nginx/html/;
    index  index.txt index.html index.htm;
}
```

| Parametros| Função |
| --- | --- |
| listen | Define a porta padrão do nginx|
| server_name | Define seu dominio |
| index | Adicionar nesta linha o **index.txt** |

## 40-fiche.sh
Esse script tem a função de pegar as informações de porta e dominio do arquivo **default.conf** do nginx. \
E por fim iniciar a aplicação do **fiche**


## Arquivos e logs
Todos os arquivos recebidos pelo fiche serão armazenados na pasta html do nginx, caso não seja montado o volume, os arquivos serão perdidos ao reiniciar o container. \
Vai ser criado um arquivo fiche.log na raiz do nginx.
