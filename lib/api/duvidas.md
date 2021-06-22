## elegibilidade_verifica_elegibilidade
P:Qual o cnpj deve ser usado em identificacaoPrestador origem ?
R:Seria nossa clinica prestadora do serviço de saúde 
O:O mesmo acontece em autorizacao_cancela_procedimento

P:Qual o cnpj deve ser usado em identificacaoPrestador destino ?
R:Seria o cnpj do IPSM
O:O mesmo acontece em autorizacao_cancela_procedimento

'''
    "cabecalho": {
        "origem": {
            "identificacaoPrestador": {
                "cnpj": "00000000000000"
            }
        },
        "destino": {
            "identificacaoPrestador": {
                "cnpj": "00000000000000"
            }
        },
'''


Eu preciso identificar a transação no Request ?
'''
        "versaoPadrao": "3.02.00",
        "identificacaoTransacao": {
            "dataRegistroTransacao": "1999-01-21",
            "sequencialTransacao": "985",
            "horaRegistroTransacao": "13:20:00-05:00",
            "tipoTransacao": "VERIFICA_ELEGIBILIDADE"
        }
'''

## autorizacao_cancela_procedimento
P:Qual o cnpj deve ser usado na origem ?
R:Seria nossa clinica prestadora do serviço de saúde 
P:Qual o cnpj deve ser usado no destino ?
R:Seria o cnpj do IPSM
'''
        "origem": {
            "identificacaoPrestador": {
                "cnpj": "04532957000258"
            }
        },
        "destino": {
            "registroANS": "000043"
        },
'''

## autorizacao_solicita_procedimento
Quem é codigonaOperadora
'''
                "dadosExecutante": {
                    "nomeContratado": "GILBERTO",
                    "CNES": 11233233,
                    "codigonaOperadora": 258530586811
                },
'''