json.array!(@commands) do |command|
  json.extract! command, :id, :command
  json.url command_url(command, format: :json)
end
