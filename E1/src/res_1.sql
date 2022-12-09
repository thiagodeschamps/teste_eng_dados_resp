select cliente.nome, sum(transacao.valor_total*contrato.percentual/100)
from desafio_engenheiro.dbo.contrato
join desafio_engenheiro.dbo.transacao
on transacao.contrato_id = contrato.contrato_id
join desafio_engenheiro.dbo.cliente
on cliente.cliente_id = contrato.cliente_id
group by cliente.nome
