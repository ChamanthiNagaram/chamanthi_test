view: order_items {
  sql_table_name: demo_db.order_items ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: inventory_item_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.inventory_item_id ;;
  }
  dimension: order_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.order_id ;;
  }
  dimension: phone {
    type: string
    sql: ${TABLE}.phone ;;
  }
  dimension: phones {
    type: string
    sql: ${TABLE}.phones ;;
  }
  dimension_group: returned {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.returned_at ;;
  }
  dimension: sale_price {
    type: number
    sql: ${TABLE}.sale_price ;;
  }
  measure: count {
    type: count
    drill_fields: [id, orders.id, inventory_items.id]
  }
  # measure: value {
  #   type: average
  #   sql: ${count} ;;
  #   value_format_name: decimal_2


  #   html:
  #   {% if status._value == 'normal' and (pq_category_1._value == 'undervoltage' or pq_category._value == 'overvoltage') %}
  #   <p style="color: #62A300; font-size:100%"> ▍<span style="color:black">{{ rendered_value | append: " V"}}</span></p>
  #   {% elsif status._value == 'normal' and (pq_category_1._value == 'long_term_flicker' or pq_category_1._value == 'short_term_flicker' or pq_category_1._value == 'voltage_unbalance') %}
  #   <p style="color: #62A300; font-size:100%"> ▍<span style="color:black">{{ rendered_value }}</span></p>
  #   {% elsif status._value == 'normal' and  (pq_category_1._value == 'thd' or pq_category_1._value == 'frequency') %}
  #   <p style="color: #62A300; font-size:100%"> ▍<span style="color:black">{{ rendered_value | append: " Hz"}}</span></p>
  #   {% elsif status._value == 'normal' and (pq_category_1._value == 'rvc' or pq_category_1._value == 'voltage_dips' or pq_category_1._value == 'voltage_swells' or pq_category_1._value == 'long_voltage_interruption' or pq_category_1._value == 'short_voltage_interruption')  %}
  #   <p style="color: #62A300; font-size:100%"> ▍<span style="color:black">{{ rendered_value |  round | append: " events"}}</span></p>

  #     {% elsif status._value == 'warning' and (pq_category_1._value == 'undervoltage' or pq_category._value == 'overvoltage') %}
  #     <p style="color: #FFD335; font-size:100%"> ▍<span style="color:black">{{ rendered_value | append: " V"}}</span></p>
  #     {% elsif status._value == 'warning' and (pq_category_1._value == 'long_term_flicker' or pq_category_1._value == 'short_term_flicker' or pq_category_1._value == 'voltage_unbalance')  %}
  #     <p style="color: #FFD335; font-size:100%"> ▍<span style="color:black">{{ rendered_value }}</span></p>
  #     {% elsif status._value == 'warning' and  (pq_category_1._value == 'thd' or pq_category_1._value == 'frequency')  %}
  #     <p style="color: #FFD335; font-size:100%"> ▍<span style="color:black">{{ rendered_value | append: " Hz"}}</span></p>
  #     {% elsif status._value == 'warning' and (pq_category_1._value == 'rvc' or pq_category_1._value == 'voltage_dips' or pq_category_1._value == 'voltage_swells' or pq_category_1._value == 'long_voltage_interruption' or pq_category_1._value == 'short_voltage_interruption')  %}
  #     <p style="color: #FFD335; font-size:100%"> ▍<span style="color:black">{{ rendered_value |  round | append: " events"}}</span></p>

  #     {% elsif status._value == 'critical' and (pq_category_1._value == 'undervoltage' or pq_category._value == 'overvoltage')  %}
  #     <p style="color: #F73030; font-size:100%"> ▍<span style="color:black">{{ rendered_value | append: " V"}}</span></p>
  #     {% elsif status._value == 'critical' and (pq_category_1._value == 'long_term_flicker' or pq_category_1._value == 'short_term_flicker' or pq_category_1._value == 'voltage_unbalance') %}
  #     <p style="color: #F73030; font-size:100%"> ▍<span style="color:black">{{ rendered_value }}</span></p>
  #     {% elsif status._value == 'critical' and  (pq_category_1._value == 'thd' or pq_category_1._value == 'frequency') %}
  #     <p style="color: #F73030; font-size:100%"> ▍<span style="color:black">{{ rendered_value | append: " Hz"}}</span></p>
  #     {% elsif status._value == 'critical' and (pq_category_1._value == 'rvc' or pq_category_1._value == 'voltage_dips' or pq_category_1._value == 'voltage_swells' or pq_category_1._value == 'long_voltage_interruption' or pq_category_1._value == 'short_voltage_interruption')  %}
  #     <p style="color: #F73030; font-size:100%"> ▍<span style="color:black">{{ rendered_value |  round | append: " events"}}</span></p>
  #     {% endif%};;


  # }


}
