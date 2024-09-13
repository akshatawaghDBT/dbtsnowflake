{% snapshot first_snapshot_tstmp %}
    {{
        config(
          target_database='demo_db',
          target_schema='snapshots',
          unique_key='id',
          strategy='timestamp',
          updated_at='updated_at'
        )
    }}

    -- Pro-Tip: Use sources in snapshots!
    select * from demo_db.demo_sh.first_model

{% endsnapshot %}
