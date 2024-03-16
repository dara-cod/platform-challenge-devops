
  

**Documentação Desafio - Docker**

  

Versão 1.0

  

**Objetivo:** Explicar passo a passo de como foi realizado o desafio.

  

**Autora:** Tatiana Dara

  

# Bloco 1 - Configurando o ambiente:

  

Passo 1: Utilizar uma VM ou versão linux de sua preferência.

  

 - Utilizei a versão ubuntu para execução do desafio;

  

Passo 2: Instalar o VSCODE; 

 - Instalei algumas extensões para facilitar meu trabalho;

  

Passo 3: Instalar o git;

  

Passo 4: Clonar o repositório para o VSCODE;

  

# Bloco 2 - Execução do desafio:

  

Passo 1: Incluir a variável "ENV NAME tatiana dara" no arquivo "dockerfile"

  

- Fiz isso porque no arquivo app.js foi setado o parâmetro ENV e o parâmetro NAME.

  

- Sendo assim ao executar o contêiner ele irá substituir automaticamente os parâmetros informados no arquivo "dockerfile"

  

Passo 2: Criei o script para execução `start.sh`;

  

Passo 3: Dei permissão de execução ao arquivo `start.sh` - (chmod +x start.sh);

  

Passo 5: Realizei o teste através do http://localhost:3000/;

  

Passo 6: Desafio concluído.

  

# Bloco 3 - Modo de execução:

  

Passo 1: Realize um git clone do repositório;

  

Passo 2: Navegue até a pasta docker: `cd Docker/`

Passo 3: Dar permissão de execução ao arquivo "start.sh" - `chmod +x start.sh`;

  

Passo 4: Execute o comando `./start.sh`

  

Passo 5: Teste http://localhost:3000/

# Fontes de pequisa:

  

https://www.macoratti.net/19/02/dock_imgfile1.htm

  

https://docs.docker.com/reference/cli/docker/image/build/

  

https://www.alura.com.br/artigos/desvendando-o-dockerfile

  

https://www.hostinger.com.br/tutoriais/container-docker?ppc_campaign=google_search_generic_hosting_all&bidkw=defaultkeyword&lo=1001533&gad_source=1&gclid=Cj0KCQjwwMqvBhCtARIsAIXsZpZp0bA3sYDBHCHlTGqKIBJvjfCs6EB_kr5FWtDjDOB3gfnlPckbEogaAo1SEALw_wcB
