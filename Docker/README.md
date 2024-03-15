
**Documentação Desafio - Docker**

Versão 1.0

**Objetivo:** Explicar passo a passo de como foi realizado o desafio.

**Autora:** Tatiana Dara
  
# Bloco 1 - Configurando o ambiente:
  
Passo 1: Utilizei uma VM que já estava instalada e configurada no meu desktop;
Passo 2: Utilizei a versão ubuntu para execução do desafio;
Passo 3: Instalei o VSCODE e instalei algumas extensão para facilitar meu trabalho;
Passo 4: Instalei o git;
Passo 5: Clonei o repositório para o VSCODE;
  
# Bloco 2 - Execução do desafio:

  Passo 1: Incluir a variável "ENV NAME tatiana dara" no arquivo "dockerfile"

 - Fiz isso porque no arquivo app.js foi setado o paramento ENV e o paramento NAME.
 - Sendo assim ao executar o container ele irá substituir automaticamente os paramentos informados no arquivo "dockerfile"


Passo 2: Criei o script para execução "star.sh"
Passo 3: Dei permissão de execução ao arquivo "star.sh" - (chmod +x star.sh)
Passo 4: Realizei o teste através do http://localhost:3000/
Passo 5: Desafio concluído.
 

# Fontes de pequisa:

https://www.macoratti.net/19/02/dock_imgfile1.htm

https://docs.docker.com/reference/cli/docker/image/build/

https://www.alura.com.br/artigos/desvendando-o-dockerfile

https://www.hostinger.com.br/tutoriais/container-docker?ppc_campaign=google_search_generic_hosting_all&bidkw=defaultkeyword&lo=1001533&gad_source=1&gclid=Cj0KCQjwwMqvBhCtARIsAIXsZpZp0bA3sYDBHCHlTGqKIBJvjfCs6EB_kr5FWtDjDOB3gfnlPckbEogaAo1SEALw_wcB
