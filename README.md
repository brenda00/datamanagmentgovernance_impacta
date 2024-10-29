🎬 # **Projeto DBT - Governança e Qualidade de Dados para Netflix** 🎬  

Este projeto utiliza o DBT (Data Build Tool) e o Snowflake para implementar governança de dados, qualidade e linhagem em uma base de dados da Netflix. Nosso objetivo é construir uma estrutura de dados organizada em camadas (bronze, silver e gold), com validações automatizadas e documentação interativa.

# **Grupo**
- Ana Honoro | 2400878
- Brenda Xavier | 2400385
- Ewerton Mendonça | 2400357
- Gabriella Viroli | 2401011


📜 # **Sumário**

🎯 Objetivo  
✅ Pré-requisitos  
🗂 Estrutura do Projeto  
⚙️ Configuração e Instalação  
🚀 Execução do Projeto  
📘 Documentação e Linhagem  
🛠 Testes e Validação  

🎯 # **Objetivo**

Aplicar os conhecimentos da aula de Data Managment and Governance, o desafio: 
Garantir a governança de dados e a qualidade na análise de dados da Netflix, usando Snowflake e DBT para estruturar os dados em camadas (bronze, silver, gold), documentar as transformações e criar validações automáticas para assegurar a confiabilidade dos dados.

✅ # **Pré-requisitos**  
Para começar, você vai precisar:  

Python 🐍 - Para criar o ambiente virtual  
Snowflake ❄️ - Conta configurada e dados de conexão  
DBT (Data Build Tool) 📊 - Instalado com o plugin dbt-snowflake  
Base de Dados Netflix 🎥 - Dados disponíveis no Kaggle  

🗂 # **Estrutura do Projeto**  
O projeto é organizado em camadas para controle de governança e qualidade de dados:  

Bronze 🥉: Dados brutos importados, sem transformações.  
Silver 🥈: Dados transformados e limpos para análises.  
Gold 🏆: Dados prontos para consumo analítico.  

🏗 # **Estrutura de Diretórios**  

``` bash
.
├── README.md
├── .gitignore
├── impacta
└── DBT
    └── .venv
    └── logs
    └── netflix_project
        └── netflix_project
            └──dbt_project.yml
            └── analyses
            └── logs
            └── macros
                    └── .gitkeep
                    └── generate_schema_name.sql
            └── models
                ├── bronze
                    └── netflix_titles.sql
                    └── bronze.yml
                ├── silver
                    └── silver.yml
                    └── atores.sql
                    └── diretores.sql
                    └── filmes.sql
                    └── paises.sql
                    └── tipos.sql
                ├── gold
                    └── campanha_desenhos_terror.sql
                    └── campanha_filmes_terror.sql
                    └── campanha_series_terror.sql
            └── seeds
            └── snapshots
            └── target
            └── tests
                │   └── .gitkeep
                │   └── teststest_release_year_is_valid.sql
```

⚙️ # **Configuração e Instalação**

1) Clone o Repositório:
``` bash
git clone <https://github.com/brenda00/datamanagmentgovernance_impacta.git>
cd impacta
cd DBT
```
2) Configure o Ambiente Virtual:
``` bash
python -m venv .venv
.venv\Scripts\activate
```
3) Instale o DBT e o Plugin Snowflake:
``` bash
pip install dbt-snowflake
```
4) Configuração do DBT:

Defina suas credenciais de conexão no arquivo profiles.yml, incluindo account, user, password, role, database, warehouse, e schema.

🚀 # **Execução do Projeto**

0) Caso você queira criar um novo projeto utilize, aqui já criamos e vamos utilizar o netflix_project:
``` bash
dbt init <nome_do_projeto>
```

1) Teste a Conexão com o banco que foi configurado, aqui estamos utilizando o snowflake:
``` bash
cd netflix_project
dbt debug
```

2) Execute o Pipeline de Transformação:
``` bash
dbt run
```
Com tudo correndo bem a visão deve ser como a imagem a seguir:  


![image](https://github.com/user-attachments/assets/8c0b9539-7eea-4c2a-8c05-6bc586596a2a)



3) Execute os Testes:  
O projeto utiliza testes automáticos para verificar a qualidade dos dados:  

Testes Genéricos: Validam a integridade com checagens como unique e not_null.  
Testes Personalizados: Validam regras específicas, como o ano de lançamento válido em release_year.  
``` bash
dbt test
```
Com tudo correndo bem o seu retorno deve ser algo parecido com o da imagem a seguir, apontando o erro que foi um teste para verificar o apontamento de erros personalizados  


![image](https://github.com/user-attachments/assets/01b3d17a-8753-4b30-b7a7-babc43bd0769)


📘 # **Documentação e Linhagem**  
Para gerar a documentação e visualizar a linhagem dos dados, siga os passos abaixo:  

1) Gere a Documentação:
``` bash
dbt docs generate
```

2) Inicie o Servidor de Documentação:
``` bash
dbt docs serve
```

Acesse http://localhost:8080 para visualizar a documentação interativa, incluindo a linhagem de dados!
Com tudo correndo bem, no terminal você tem essa visão  


![image](https://github.com/user-attachments/assets/f06deaa8-a20c-4d4e-88a8-d99e93868f99)  

A visão ao acessar o localhost  


![image](https://github.com/user-attachments/assets/0509814f-f6a8-4a4f-984a-2aa192148dc1)  
![image](https://github.com/user-attachments/assets/7620b6e4-56fb-41fd-a972-138340982d94)  

Exemplo de visualização do caminho do dado para a campanha de filmes de terror 


![image](https://github.com/user-attachments/assets/ad8f1080-7e68-4423-85c6-fa83327bfe5d)






