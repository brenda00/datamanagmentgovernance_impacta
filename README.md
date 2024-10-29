🎬 # **Projeto DBT - Governança e Qualidade de Dados para Netflix** 🎬  

Este projeto utiliza o DBT (Data Build Tool) e o Snowflake para implementar governança de dados, qualidade e linhagem em uma base de dados da Netflix. Nosso objetivo é construir uma estrutura de dados organizada em camadas (bronze, silver e gold), com validações automatizadas e documentação interativa.

📜 **Sumário**

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
cd dbt-netflix-project
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

1) Teste a Conexão:
``` bash
dbt debug
```

2) Execute o Pipeline de Transformação:
``` bash
dbt run
```

3) Execute os Testes:  
O projeto utiliza testes automáticos para verificar a qualidade dos dados:  

Testes Genéricos: Validam a integridade com checagens como unique e not_null.  
Testes Personalizados: Validam regras específicas, como o ano de lançamento válido em release_year.  
``` bash
dbt test
```

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

