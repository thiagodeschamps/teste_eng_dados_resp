select cliente.nome, 
round(sum((contrato.percentual*(transacao.valor_total*(1-coalesce(transacao.percentual_desconto, 0)/100)))/100), 2) as valor
from desafio_engenheiro.dbo.contrato
join desafio_engenheiro.dbo.transacao
on transacao.contrato_id = contrato.contrato_id
join desafio_engenheiro.dbo.cliente
on cliente.cliente_id = contrato.cliente_id
group by cliente.nome
