{% snapshot emp_snapshot_check %}

{{
    config(
        target_database='demo_db',
        target_schema='snapshots',
        strategy='check',
        check_cols=['amount'],
        unique_key='id'
        
    )

}}
select * from demo_db.demo_sh.my_table


{% endsnapshot%}