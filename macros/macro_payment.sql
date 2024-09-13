{% macro macro_payemnt(amount)%}

case when amount < 1 then 'no trans'
else 
cast(amount as string)
end

{%endmacro%}