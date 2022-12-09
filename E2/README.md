# Entregável 2

## Problema

A segunda tarefa consiste em calcular o total líquido da empresa. Esse total é calculado da seguinte forma total_liquido = soma(total_bruto – desconto_percentual). O cálculo é baseado no conjunto de dados da <a href="https://drive.google.com/file/d/1vekbII5FYAB57mMTwU9I64XRCATD_XqF/view?usp=sharing">Figura 3</a>

O resultado esperado é uma código com pyspark que retorne o total liquido da empresa que é 59973.46. 

## Solução

Para resolver este problema, vamos utilizar o PySpark.

Começaremos criando um ambiente virtual para baixar os requisitos

```bash

# Criando o ambiente virtual
python -m venv venv_e2 

# Instalando os requisitos
pip install -r requirements.txt
```


```python
transacoes = [{'transacao_id':1, 'total_bruto':3000, 'desconto_percentual':6.99},
              {'transacao_id':2, 'total_bruto':57989, 'desconto_percentual':1.45},
              {'transacao_id':4, 'total_bruto':1, 'desconto_percentual':None},
              {'transacao_id':5, 'total_bruto':34, 'desconto_percentual':0.0}]
```