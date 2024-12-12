view: products {
  sql_table_name: demo_db.products ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: tabsAutomationtest {
    type: yesno
    allow_fill: yes
    suggest_persist_for: "0 minutes"
    sql: true ;;
    html:<div>
          {% assign dashboard_url = _explore._dashboard_url %}
          <nav style=" ">
              <br/> <a style="font-size: 25px; width: 100%;{% if dashboard_url == '/dashboards/4027' %}@{buttons_styleCurrentTab}{% else %}@{buttons_styleTab}{% endif %}; " href="https://gcpl2418.cloud.looker.com/dashboards/138?" title="Home">⌂ </a><br/>
              <br/> <a style="font-size: 25px; width: 100%;{% if dashboard_url == '/dashboards/4062' %}@{buttons_styleCurrentTab}{% else %}@{buttons_styleTab}{% endif %}; " href="https://gcpl2418.cloud.looker.com/dashboards/163?" title="Tops">️✪</a><br/>
              <br/> <a style="font-size: 25px; width: 100%;{% if dashboard_url == '/dashboards/4066' %}@{buttons_styleCurrentTab}{% else %}@{buttons_styleTab}{% endif %}; " href="https://gcpl2418.cloud.looker.com/dashboards/164?" title="Details">⚯</a><br/>
              <br/> <a style="font-size: 25px; width: 100%;{% if dashboard_url == '/dashboards/4067' %}@{buttons_styleCurrentTab}{% else %}@{buttons_styleTab}{% endif %}; " href="https://gcpl2418.cloud.looker.com/dashboards/165?" title="No Match">️!</a><br/>
              <br/> <a style="font-size: 25px; width: 100%;{% if dashboard_url == '/dashboards/4068' %}@{buttons_styleCurrentTab}{% else %}@{buttons_styleTab}{% endif %}; " href="https://gcpl2418.cloud.looker.com/dashboards/166?" title="Satisfaction">☹</a><br/>
              <br/> <a style="font-size: 25px; width: 100%;{% if dashboard_url == '/dashboards/4070' %}@{buttons_styleCurrentTab}{% else %}@{buttons_styleTab}{% endif %}; " href="https://gcpl2418.cloud.looker.com/dashboards/167?" title="Top Pages">️✪</a><br/>
              <br/> <a style="font-size: 25px; width: 100%;{% if dashboard_url == '/dashboards/4070' %}@{buttons_styleCurrentTab}{% else %}@{buttons_styleTab}{% endif %}; " href="https://adeoproduction.cloud.looker.com/dashboards/4070?@{buttons_styleCurrentTab}" title="Top Pages">{{ dashboard_url | remove: "/dashboards/" }}</a><br/>

      <br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>




      </div>

      ;;
  }
  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
  }
  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }
  dimension: department {
    type: string
    sql: ${TABLE}.department ;;
  }
  dimension: item_name {
    type: string
    sql: ${TABLE}.item_name ;;
  }
  dimension: rank {
    type: number
    sql: ${TABLE}.rank ;;
  }
  dimension: retail_price {
    type: number
    sql: ${TABLE}.retail_price ;;
  }
  dimension: sku {
    type: string
    sql: ${TABLE}.sku ;;
  }
  measure: count {
    type: count
    value_format: "@{money_standard_format}"
    drill_fields: [id, item_name, inventory_items.count]
  }
}
