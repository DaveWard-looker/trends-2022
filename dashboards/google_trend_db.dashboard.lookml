- dashboard: google_trends
  title: Google Trends
  layout: newspaper
  preferred_viewer: dashboards-next
  crossfilter_enabled: true
  description: ''
  elements:
  - title: Top 25 trends
    name: Top 25 trends
    model: google_trends
    explore: top_terms
    type: looker_bar
    fields: [top_terms.term, top_terms.total_score]
    sorts: [top_terms.total_score desc]
    limit: 25
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    up_color: false
    down_color: false
    total_color: false
    groupBars: true
    labelSize: 10pt
    showLegend: true
    listen:
      Week: top_terms.week_week
      Term: top_terms.term
      Rank: top_terms.rank
    row: 24
    col: 5
    width: 14
    height: 10
  - title: Trend Per State
    name: Trend Per State
    model: google_trends
    explore: top_terms
    type: looker_map
    fields: [top_terms.total_score, top_terms.state]
    sorts: [top_terms.total_score desc]
    limit: 500
    column_limit: 50
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_view_names: false
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    series_types: {}
    listen:
      Week: top_terms.week_week
      Term: top_terms.term
      Rank: top_terms.rank
    row: 34
    col: 0
    width: 24
    height: 13
  - title: Untitled
    name: Untitled
    model: google_trends
    explore: top_terms
    type: single_value
    fields: [top_terms.count]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Count of searchs
    defaults_version: 1
    listen: {}
    row: 24
    col: 0
    width: 5
    height: 10
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: '[![Alternate Text](data:image/png;base64,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)](https://youtu.be/FBlyD2nCJds
      "Link Title")'
    row: 24
    col: 19
    width: 5
    height: 10
  - name: " (2)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: |-
      <div>
      <img src="https://sp-ao.shortpixel.ai/client/to_webp,q_glossy,ret_img,w_1509/https://gpsmember.com/wp-content/uploads/2017/02/Google-Trends.png" class="btn btn-primary">
      </div>
    row: 7
    col: 0
    width: 24
    height: 17
  - name: " (3)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: "<!-- verbose inline css award winner 2020 -->\n<center>\n\n<div style=\"\
      margin: auto; \">\n\n<a style=\"\n\n\tcolor: #fff;\n\n    background-color:\
      \ #4285F4;\n\n    border-color: #4285F4;\n\n    float: left;\n\n    font-weight:\
      \ 400;\n\n    text-align: center;\n\n    vertical-align: middle;\n\n    cursor:\
      \ pointer;\n\n    user-select: none;\n\n    padding: 10px;\n\n    margin: 5px;\n\
      \n    font-size: 1rem;\n\n    line-height: 1.5;\n\n    border-radius: 5px;\"\
      \n\n    href=\"#\">\n\n    This is a button!\n\n</a>\n\n\n\n<a style=\"\n\n\t\
      color: #fff;\n\n    background-color: #EA4335;\n\n    border-color: #EA4335;\n\
      \n    float: left;\n\n    font-weight: 400;\n\n    text-align: center;\n\n \
      \   vertical-align: middle;\n\n    cursor: pointer;\n\n    user-select: none;\n\
      \n    padding: 10px;\n\n    margin: 5px;\n\n    font-size: 1rem;\n\n    line-height:\
      \ 1.5;\n\n    border-radius: 5px;\"\n\n    href=\"#\">\n\n    This is a button!\n\
      \n</a>\n\n\n\n<a style=\"\n\n\tcolor: #fff;\n\n    background-color: #FBBC04;\n\
      \n    border-color: #FBBC04;\n\n    float: left;\n\n    font-weight: 400;\n\n\
      \    text-align: center;\n\n    vertical-align: middle;\n\n    cursor: pointer;\n\
      \n    user-select: none;\n\n    padding: 10px;\n\n    margin: 5px;\n\n    font-size:\
      \ 1rem;\n\n    line-height: 1.5;\n\n    border-radius: 5px;\"\n\n    href=\"\
      #\">\n\n    This is a button!\n\n</a>\n\n\n\n<a style=\"\n\n\tcolor: #fff;\n\
      \n    background-color: #34A852;\n\n    border-color: #34A852;\n\n    float:\
      \ left;\n\n    font-weight: 400;\n\n    text-align: center;\n\n    vertical-align:\
      \ middle;\n\n    cursor: pointer;\n\n    user-select: none;\n\n    padding:\
      \ 10px;\n\n    margin: 5px;\n\n    font-size: 1rem;\n\n    line-height: 1.5;\n\
      \n    border-radius: 5px;\"\n\n    href=\"#\">\n\n    This is a button!\n\n\
      </a>\n\n\n<a style=\"\n\n\tcolor: #fff;\n\n    background-color: #4285F4;\n\n\
      \    border-color: #4285F4;\n\n    float: left;\n\n    font-weight: 400;\n\n\
      \    text-align: center;\n\n    vertical-align: middle;\n\n    cursor: pointer;\n\
      \n    user-select: none;\n\n    padding: 10px;\n\n    margin: 5px;\n\n    font-size:\
      \ 1rem;\n\n    line-height: 1.5;\n\n    border-radius: 5px;\"\n\n    href=\"\
      #\">\n\n    This is a button!\n\n</a>\n\n\n\n<a style=\"\n\n\tcolor: #fff;\n\
      \n    background-color: #EA4335;\n\n    border-color: #EA4335;\n\n    float:\
      \ left;\n\n    font-weight: 400;\n\n    text-align: center;\n\n    vertical-align:\
      \ middle;\n\n    cursor: pointer;\n\n    user-select: none;\n\n    padding:\
      \ 10px;\n\n    margin: 5px;\n\n    font-size: 1rem;\n\n    line-height: 1.5;\n\
      \n    border-radius: 5px;\"\n\n    href=\"#\">\n\n    This is a button!\n\n\
      </a>\n\n\n\n<a style=\"\n\n\tcolor: #fff;\n\n    background-color: #FBBC04;\n\
      \n    border-color: #FBBC04;\n\n    float: left;\n\n    font-weight: 400;\n\n\
      \    text-align: center;\n\n    vertical-align: middle;\n\n    cursor: pointer;\n\
      \n    user-select: none;\n\n    padding: 10px;\n\n    margin: 5px;\n\n    font-size:\
      \ 1rem;\n\n    line-height: 1.5;\n\n    border-radius: 5px;\"\n\n    href=\"\
      #\">\n\n    This is a button!\n\n</a>\n\n\n\n<a style=\"\n\n\tcolor: #fff;\n\
      \n    background-color: #34A852;\n\n    border-color: #34A852;\n\n    float:\
      \ left;\n\n    font-weight: 400;\n\n    text-align: center;\n\n    vertical-align:\
      \ middle;\n\n    cursor: pointer;\n\n    user-select: none;\n\n    padding:\
      \ 10px;\n\n    margin: 5px;\n\n    font-size: 1rem;\n\n    line-height: 1.5;\n\
      \n    border-radius: 5px;\"\n\n    href=\"#\">\n\n    This is a button!\n\n\
      </a>\n\n</div>\n<div>\n<br>\n<br>\n<br>\n<br>\n<br>\n</div>\n<div style=\"margin:\
      \ auto; \">\n\n<a style=\"\n\n\tcolor: #fff;\n\n    background-color: #4285F4;\n\
      \n    border-color: #4285F4;\n\n    float: left;\n\n    font-weight: 400;\n\n\
      \    text-align: center;\n\n    vertical-align: middle;\n\n    cursor: pointer;\n\
      \n    user-select: none;\n\n    padding: 10px;\n\n    margin: 5px;\n\n    font-size:\
      \ 1rem;\n\n    line-height: 1.5;\n\n    border-radius: 5px;\"\n\n    href=\"\
      #\">\n\n    This is a button!\n\n</a>\n\n\n\n<a style=\"\n\n\tcolor: #fff;\n\
      \n    background-color: #EA4335;\n\n    border-color: #EA4335;\n\n    float:\
      \ left;\n\n    font-weight: 400;\n\n    text-align: center;\n\n    vertical-align:\
      \ middle;\n\n    cursor: pointer;\n\n    user-select: none;\n\n    padding:\
      \ 10px;\n\n    margin: 5px;\n\n    font-size: 1rem;\n\n    line-height: 1.5;\n\
      \n    border-radius: 5px;\"\n\n    href=\"#\">\n\n    This is a button!\n\n\
      </a>\n\n\n\n<a style=\"\n\n\tcolor: #fff;\n\n    background-color: #FBBC04;\n\
      \n    border-color: #FBBC04;\n\n    float: left;\n\n    font-weight: 400;\n\n\
      \    text-align: center;\n\n    vertical-align: middle;\n\n    cursor: pointer;\n\
      \n    user-select: none;\n\n    padding: 10px;\n\n    margin: 5px;\n\n    font-size:\
      \ 1rem;\n\n    line-height: 1.5;\n\n    border-radius: 5px;\"\n\n    href=\"\
      #\">\n\n    This is a button!\n\n</a>\n\n\n\n<a style=\"\n\n\tcolor: #fff;\n\
      \n    background-color: #34A852;\n\n    border-color: #34A852;\n\n    float:\
      \ left;\n\n    font-weight: 400;\n\n    text-align: center;\n\n    vertical-align:\
      \ middle;\n\n    cursor: pointer;\n\n    user-select: none;\n\n    padding:\
      \ 10px;\n\n    margin: 5px;\n\n    font-size: 1rem;\n\n    line-height: 1.5;\n\
      \n    border-radius: 5px;\"\n\n    href=\"#\">\n\n    This is a button!\n\n\
      </a>\n\n\n<a style=\"\n\n\tcolor: #fff;\n\n    background-color: #4285F4;\n\n\
      \    border-color: #4285F4;\n\n    float: left;\n\n    font-weight: 400;\n\n\
      \    text-align: center;\n\n    vertical-align: middle;\n\n    cursor: pointer;\n\
      \n    user-select: none;\n\n    padding: 10px;\n\n    margin: 5px;\n\n    font-size:\
      \ 1rem;\n\n    line-height: 1.5;\n\n    border-radius: 5px;\"\n\n    href=\"\
      #\">\n\n    This is a button!\n\n</a>\n\n\n\n<a style=\"\n\n\tcolor: #fff;\n\
      \n    background-color: #EA4335;\n\n    border-color: #EA4335;\n\n    float:\
      \ left;\n\n    font-weight: 400;\n\n    text-align: center;\n\n    vertical-align:\
      \ middle;\n\n    cursor: pointer;\n\n    user-select: none;\n\n    padding:\
      \ 10px;\n\n    margin: 5px;\n\n    font-size: 1rem;\n\n    line-height: 1.5;\n\
      \n    border-radius: 5px;\"\n\n    href=\"#\">\n\n    This is a button!\n\n\
      </a>\n\n\n\n<a style=\"\n\n\tcolor: #fff;\n\n    background-color: #FBBC04;\n\
      \n    border-color: #FBBC04;\n\n    float: left;\n\n    font-weight: 400;\n\n\
      \    text-align: center;\n\n    vertical-align: middle;\n\n    cursor: pointer;\n\
      \n    user-select: none;\n\n    padding: 10px;\n\n    margin: 5px;\n\n    font-size:\
      \ 1rem;\n\n    line-height: 1.5;\n\n    border-radius: 5px;\"\n\n    href=\"\
      #\">\n\n    This is a button!\n\n</a>\n\n\n\n<a style=\"\n\n\tcolor: #fff;\n\
      \n    background-color: #34A852;\n\n    border-color: #34A852;\n\n    float:\
      \ left;\n\n    font-weight: 400;\n\n    text-align: center;\n\n    vertical-align:\
      \ middle;\n\n    cursor: pointer;\n\n    user-select: none;\n\n    padding:\
      \ 10px;\n\n    margin: 5px;\n\n    font-size: 1rem;\n\n    line-height: 1.5;\n\
      \n    border-radius: 5px;\"\n\n    href=\"#\">\n\n    This is a button!\n\n\
      </a>\n\n</div>\n<div>\n<br>\n<br>\n<br>\n<br>\n<br>\n</div>\n<div style=\"margin:\
      \ auto; \">\n\n<a style=\"\n\n\tcolor: #fff;\n\n    background-color: #4285F4;\n\
      \n    border-color: #4285F4;\n\n    float: left;\n\n    font-weight: 400;\n\n\
      \    text-align: center;\n\n    vertical-align: middle;\n\n    cursor: pointer;\n\
      \n    user-select: none;\n\n    padding: 10px;\n\n    margin: 5px;\n\n    font-size:\
      \ 1rem;\n\n    line-height: 1.5;\n\n    border-radius: 5px;\"\n\n    href=\"\
      #\">\n\n    This is a button!\n\n</a>\n\n\n\n<a style=\"\n\n\tcolor: #fff;\n\
      \n    background-color: #EA4335;\n\n    border-color: #EA4335;\n\n    float:\
      \ left;\n\n    font-weight: 400;\n\n    text-align: center;\n\n    vertical-align:\
      \ middle;\n\n    cursor: pointer;\n\n    user-select: none;\n\n    padding:\
      \ 10px;\n\n    margin: 5px;\n\n    font-size: 1rem;\n\n    line-height: 1.5;\n\
      \n    border-radius: 5px;\"\n\n    href=\"#\">\n\n    This is a button!\n\n\
      </a>\n\n\n\n<a style=\"\n\n\tcolor: #fff;\n\n    background-color: #FBBC04;\n\
      \n    border-color: #FBBC04;\n\n    float: left;\n\n    font-weight: 400;\n\n\
      \    text-align: center;\n\n    vertical-align: middle;\n\n    cursor: pointer;\n\
      \n    user-select: none;\n\n    padding: 10px;\n\n    margin: 5px;\n\n    font-size:\
      \ 1rem;\n\n    line-height: 1.5;\n\n    border-radius: 5px;\"\n\n    href=\"\
      #\">\n\n    This is a button!\n\n</a>\n\n\n\n<a style=\"\n\n\tcolor: #fff;\n\
      \n    background-color: #34A852;\n\n    border-color: #34A852;\n\n    float:\
      \ left;\n\n    font-weight: 400;\n\n    text-align: center;\n\n    vertical-align:\
      \ middle;\n\n    cursor: pointer;\n\n    user-select: none;\n\n    padding:\
      \ 10px;\n\n    margin: 5px;\n\n    font-size: 1rem;\n\n    line-height: 1.5;\n\
      \n    border-radius: 5px;\"\n\n    href=\"#\">\n\n    This is a button!\n\n\
      </a>\n\n\n<a style=\"\n\n\tcolor: #fff;\n\n    background-color: #4285F4;\n\n\
      \    border-color: #4285F4;\n\n    float: left;\n\n    font-weight: 400;\n\n\
      \    text-align: center;\n\n    vertical-align: middle;\n\n    cursor: pointer;\n\
      \n    user-select: none;\n\n    padding: 10px;\n\n    margin: 5px;\n\n    font-size:\
      \ 1rem;\n\n    line-height: 1.5;\n\n    border-radius: 5px;\"\n\n    href=\"\
      #\">\n\n    This is a button!\n\n</a>\n\n\n\n<a style=\"\n\n\tcolor: #fff;\n\
      \n    background-color: #EA4335;\n\n    border-color: #EA4335;\n\n    float:\
      \ left;\n\n    font-weight: 400;\n\n    text-align: center;\n\n    vertical-align:\
      \ middle;\n\n    cursor: pointer;\n\n    user-select: none;\n\n    padding:\
      \ 10px;\n\n    margin: 5px;\n\n    font-size: 1rem;\n\n    line-height: 1.5;\n\
      \n    border-radius: 5px;\"\n\n    href=\"#\">\n\n    This is a button!\n\n\
      </a>\n\n\n\n<a style=\"\n\n\tcolor: #fff;\n\n    background-color: #FBBC04;\n\
      \n    border-color: #FBBC04;\n\n    float: left;\n\n    font-weight: 400;\n\n\
      \    text-align: center;\n\n    vertical-align: middle;\n\n    cursor: pointer;\n\
      \n    user-select: none;\n\n    padding: 10px;\n\n    margin: 5px;\n\n    font-size:\
      \ 1rem;\n\n    line-height: 1.5;\n\n    border-radius: 5px;\"\n\n    href=\"\
      #\">\n\n    This is a button!\n\n</a>\n\n\n\n<a style=\"\n\n\tcolor: #fff;\n\
      \n    background-color: #34A852;\n\n    border-color: #34A852;\n\n    float:\
      \ left;\n\n    font-weight: 400;\n\n    text-align: center;\n\n    vertical-align:\
      \ middle;\n\n    cursor: pointer;\n\n    user-select: none;\n\n    padding:\
      \ 10px;\n\n    margin: 5px;\n\n    font-size: 1rem;\n\n    line-height: 1.5;\n\
      \n    border-radius: 5px;\"\n\n    href=\"#\">\n\n    This is a button!\n\n\
      </a>\n\n</div>\n<div>\n<br>\n<br>\n<br>\n<br>\n<br>\n</div>\n<div style=\"margin:\
      \ auto; \">\n\n<a style=\"\n\n\tcolor: #fff;\n\n    background-color: #4285F4;\n\
      \n    border-color: #4285F4;\n\n    float: left;\n\n    font-weight: 400;\n\n\
      \    text-align: center;\n\n    vertical-align: middle;\n\n    cursor: pointer;\n\
      \n    user-select: none;\n\n    padding: 10px;\n\n    margin: 5px;\n\n    font-size:\
      \ 1rem;\n\n    line-height: 1.5;\n\n    border-radius: 5px;\"\n\n    href=\"\
      #\">\n\n    This is a button!\n\n</a>\n\n\n\n<a style=\"\n\n\tcolor: #fff;\n\
      \n    background-color: #EA4335;\n\n    border-color: #EA4335;\n\n    float:\
      \ left;\n\n    font-weight: 400;\n\n    text-align: center;\n\n    vertical-align:\
      \ middle;\n\n    cursor: pointer;\n\n    user-select: none;\n\n    padding:\
      \ 10px;\n\n    margin: 5px;\n\n    font-size: 1rem;\n\n    line-height: 1.5;\n\
      \n    border-radius: 5px;\"\n\n    href=\"#\">\n\n    This is a button!\n\n\
      </a>\n\n\n\n<a style=\"\n\n\tcolor: #fff;\n\n    background-color: #FBBC04;\n\
      \n    border-color: #FBBC04;\n\n    float: left;\n\n    font-weight: 400;\n\n\
      \    text-align: center;\n\n    vertical-align: middle;\n\n    cursor: pointer;\n\
      \n    user-select: none;\n\n    padding: 10px;\n\n    margin: 5px;\n\n    font-size:\
      \ 1rem;\n\n    line-height: 1.5;\n\n    border-radius: 5px;\"\n\n    href=\"\
      #\">\n\n    This is a button!\n\n</a>\n\n\n\n<a style=\"\n\n\tcolor: #fff;\n\
      \n    background-color: #34A852;\n\n    border-color: #34A852;\n\n    float:\
      \ left;\n\n    font-weight: 400;\n\n    text-align: center;\n\n    vertical-align:\
      \ middle;\n\n    cursor: pointer;\n\n    user-select: none;\n\n    padding:\
      \ 10px;\n\n    margin: 5px;\n\n    font-size: 1rem;\n\n    line-height: 1.5;\n\
      \n    border-radius: 5px;\"\n\n    href=\"#\">\n\n    This is a button!\n\n\
      </a>\n\n\n<a style=\"\n\n\tcolor: #fff;\n\n    background-color: #4285F4;\n\n\
      \    border-color: #4285F4;\n\n    float: left;\n\n    font-weight: 400;\n\n\
      \    text-align: center;\n\n    vertical-align: middle;\n\n    cursor: pointer;\n\
      \n    user-select: none;\n\n    padding: 10px;\n\n    margin: 5px;\n\n    font-size:\
      \ 1rem;\n\n    line-height: 1.5;\n\n    border-radius: 5px;\"\n\n    href=\"\
      #\">\n\n    This is a button!\n\n</a>\n\n\n\n<a style=\"\n\n\tcolor: #fff;\n\
      \n    background-color: #EA4335;\n\n    border-color: #EA4335;\n\n    float:\
      \ left;\n\n    font-weight: 400;\n\n    text-align: center;\n\n    vertical-align:\
      \ middle;\n\n    cursor: pointer;\n\n    user-select: none;\n\n    padding:\
      \ 10px;\n\n    margin: 5px;\n\n    font-size: 1rem;\n\n    line-height: 1.5;\n\
      \n    border-radius: 5px;\"\n\n    href=\"#\">\n\n    This is a button!\n\n\
      </a>\n\n\n\n<a style=\"\n\n\tcolor: #fff;\n\n    background-color: #FBBC04;\n\
      \n    border-color: #FBBC04;\n\n    float: left;\n\n    font-weight: 400;\n\n\
      \    text-align: center;\n\n    vertical-align: middle;\n\n    cursor: pointer;\n\
      \n    user-select: none;\n\n    padding: 10px;\n\n    margin: 5px;\n\n    font-size:\
      \ 1rem;\n\n    line-height: 1.5;\n\n    border-radius: 5px;\"\n\n    href=\"\
      #\">\n\n    This is a button!\n\n</a>\n\n\n\n<a style=\"\n\n\tcolor: #fff;\n\
      \n    background-color: #34A852;\n\n    border-color: #34A852;\n\n    float:\
      \ left;\n\n    font-weight: 400;\n\n    text-align: center;\n\n    vertical-align:\
      \ middle;\n\n    cursor: pointer;\n\n    user-select: none;\n\n    padding:\
      \ 10px;\n\n    margin: 5px;\n\n    font-size: 1rem;\n\n    line-height: 1.5;\n\
      \n    border-radius: 5px;\"\n\n    href=\"#\">\n\n    This is a button!\n\n\
      </a>\n\n</div>\n</center>"
    row: 0
    col: 0
    width: 24
    height: 7
  filters:
  - name: Week
    title: Week
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: google_trends
    explore: top_terms
    listens_to_filters: []
    field: top_terms.week_week
  - name: Term
    title: Term
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
      options: []
    model: google_trends
    explore: top_terms
    listens_to_filters: []
    field: top_terms.term
  - name: Rank
    title: Rank
    type: field_filter
    default_value: "[0,100]"
    allow_multiple_values: true
    required: false
    ui_config:
      type: range_slider
      display: inline
      options: []
    model: google_trends
    explore: top_terms
    listens_to_filters: []
    field: top_terms.rank
