{{
    config(
        materialized='table'
    )

}}

select payment_id,order_id, payment_method, amount,
{{macro_payemnt(amount)}} as trans_stat
from demo_db.demo_sh.payment_macro order by amount