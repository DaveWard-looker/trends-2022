view: dt_terms {
  derived_table: {
    sql: SELECT
    terms.dma_name,
    terms.term,
    terms.score
    FROM `daveward-ps-dev.daveward_demodataset.top_terms` terms
    WHERE
    {% condition timeframe %} terms.refresh_date {% endcondition %}
    AND
    {% condition test %} terms.dma_name {% endcondition %}
    group by 1,2,3
      ;;
  }

  filter: timeframe {
    type: date_time
  }

  filter: test {
    type: string
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: dma_name {
    type: string
    sql: ${TABLE}.dma_name ;;
  }

  dimension: term {
    type: string
    sql: ${TABLE}.term ;;
  }

  dimension: score {
    type: number
    sql: ${TABLE}.score ;;
  }

  set: detail {
    fields: [dma_name, term, score]
  }
}
