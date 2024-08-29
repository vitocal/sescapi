import Config

# Print only warnings and errors during test
config :logger, backends: [:console], compile_time_purge_level: :debug

config :sescapi,
  sesc_req_options: [],
  sesc_api_plugs: [
    activities_filter: true
  ]
