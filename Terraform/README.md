
**Documentação Desafio - Terraform**

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


Passo 5: Instalar o terraform; 

 - Instalei uma extensão do terraform para facilitar meu trabalho;


  
# Bloco 2 - Execução do desafio:

 Passo 1: Criação do arquivo `main.ft;`

 Passo 2: Pesquisei no site oficial do terraform.io os parâmetros para criação do `main.tf`

Passo 3: Criei o arquivo `terraform.tfvars` para informar os valores das variáveis. 

Passo 4: Criei um arquivo `variable.tf` para informar as variáveis que o arquivo `main.tf` irá usar.

 - [ ] Boas práticas: 
	 - Declarei as variáveis no arquivo `main.tf` que estão descritas no `terraform.tfvars`
	 
	 - Criei o arquivo `.gitignore` para ignorar algumas extensões utilizadas no terraform; 

	 - Incluir no arquivo `main.tf` tags de identificação;

Passo 5: Desafio concluído.
 
# Bloco 3 - Modo de execução:

Passo 1: Realize um git clone no repositório; 

Passo 2: Navegue até a pasta onde está o arquivo `main.tf`

Passo 3: Informe as credenciais através do comando: 

    export AWS_ACCESS_KEY_ID="CHAVE"
    export AWS_SECRET_ACCESS_KEY="CHAVE SECRETA"

Passo 4: Execute o comando `terraform init`

Passo 5: Execute o comando `terraform plan` para analisar o que será criado

Passo 6: Execute o comando `terraform apply` 

Passo 6: Instância criada;

 - [ ] **Observação:** Você deve criar um usuário na ***AWS IAM*** para informar a chave no parâmetro acima.  

# Fontes de pequisa:

https://thecloudbootcamp.com/pt/blog/aws/criando-uma-instancia-ec2-utilizando-o-terraform/

https://developer.hashicorp.com/terraform/install#linux

https://developer.hashicorp.com/terraform/language/providers/configuration

https://registry.terraform.io/providers/hashicorp/aws/latest/docs

https://www.youtube.com/watch?v=r11veZ_Hwgo

https://developer.hashicorp.com/terraform/tutorials/aws-get-started/aws-build

https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance

https://registry.terraform.io/providers/hashicorp/aws/latest/docs