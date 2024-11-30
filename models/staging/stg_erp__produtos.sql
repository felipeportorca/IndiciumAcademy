with
    renomeado as (
        select
            cast(id as int) as pk_produto,
            cast(supplierid as int) as fk_fornecedor,
            cast(categoryid as int) as fk_categoria,
            cast(productname as string) as nm_produto,
            cast(quantityperunit as string) as quantidade_por_unidade,
            cast(unitprice as numeric(18, 2)) as preco_por_unidade,
            cast(unitsinstock as int) as unidade_em_estoque,
            cast(unitsonorder as int) as unidade_por_pedido,
            cast(reorderlevel as int) as nivel_de_pedido,
            discontinued as eh_discontinuado
        from {{ source("erp", "products") }}
    )

select *
from renomeado
