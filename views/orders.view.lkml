view: orders {
  sql_table_name: demo_db.orders ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: status {
    sql: ${TABLE}.status ;;
    html: {% if value == 'COMPLETED' %}
      <p style="color: #62A300; font-size:100%"> ▍<span style="color:black">{{ rendered_value | append: " V"}}</span></p>
    {% elsif value == 'CANCELLED' %}
      <p style="color: #FFD335; font-size:100%"> ▍<span style="color:black">{{ rendered_value | append: " V"}}</span></p>
    {% else %}
      <p style="color: #F73030; font-size:100%"> ▍<span style="color:black">{{ rendered_value |  round | append: " events"}}</span></p>
    {% endif %}
;;
  }
  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }
  # dimension_group: order {
  #   type: time
  #   timeframes: [raw,time,date,week,week_of_year,day_of_week,day_of_week_index,month,quarter,year,day_of_year,month_name,month_name,day_of_month]
  #   datatype: datetime
  #   sql: ${TABLE}.order_date ;;
  #   drill_fields: [order_month_name,order_week_of_year,order_day_of_month]
  # }
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
  id,
  users.id,
  users.first_name,
  users.last_name,
  billion_orders.count,
  fakeorders.count,
  hundred_million_orders.count,
  hundred_million_orders_wide.count,
  order_items.count,
  order_items_vijaya.count,
  ten_million_orders.count
  ]
  }

}
