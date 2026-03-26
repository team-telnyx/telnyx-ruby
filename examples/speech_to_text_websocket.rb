#!/usr/bin/env ruby
# frozen_string_literal: true

# Example: Speech-to-Text WebSocket Streaming
#
# This example demonstrates real-time audio transcription using
# the Telnyx STT WebSocket API.
#
# Prerequisites:
#   - gem install telnyx websocket-client-simple
#   - Set TELNYX_API_KEY environment variable
#   - Have an audio file to transcribe (WAV or MP3)
#
# Usage:
#   ruby examples/speech_to_text_websocket.rb path/to/audio.wav

require "bundler/setup"
require "telnyx"
require_relative "../lib/telnyx/lib/websocket"

# Configuration
api_key = ENV.fetch("TELNYX_API_KEY") do
  abort("Error: TELNYX_API_KEY environment variable is required")
end

audio_file = ARGV[0]
unless audio_file && File.exist?(audio_file)
  abort "Usage: ruby examples/speech_to_text_websocket.rb path/to/audio.wav"
end

# Create client
client = Telnyx::Client.new(api_key: api_key)

# Configure STT parameters
stt_params = {
  transcription_engine: "Deepgram",
  language: "en-US",
  input_format: audio_file.end_with?(".mp3") ? "mp3" : "wav",
  interim_results: true
}

puts "Connecting to Telnyx STT WebSocket..."
puts "Transcription engine: #{stt_params[:transcription_engine]}"
puts "Language: #{stt_params[:language]}"
puts "Input format: #{stt_params[:input_format]}"
puts

# Create WebSocket connection
ws = Telnyx::Lib::WebSocket::SpeechToTextWS.new(client, stt_params)

# Track transcription results
transcripts = []
final_transcript = ""

# Handle transcript events
ws.on(:transcript) do |event|
  if event.is_final
    puts "[FINAL] #{event.transcript}"
    final_transcript = event.transcript
    transcripts << event.transcript
  else
    print "\r[INTERIM] #{event.transcript}          "
  end
end

# Handle errors
ws.on(:error) do |error|
  puts "\n[ERROR] #{error.message}"
end

# Handle connection close
ws.on(:close) do |code, reason|
  puts "\n[CLOSED] Connection closed (code: #{code}, reason: #{reason})"
end

# Wait for connection to open
begin
  ws.wait_for_open(timeout: 10)
  puts("[CONNECTED] WebSocket connection established")
  puts
rescue StandardError => e
  abort("Failed to connect: #{e.message}")
end

# Send audio data in chunks
puts "Sending audio file: #{audio_file}"
puts "File size: #{File.size(audio_file)} bytes"
puts

chunk_size = 4096 # 4KB chunks
bytes_sent = 0

File.open(audio_file, "rb") do |f|
  while (chunk = f.read(chunk_size))
    ws.send(chunk)
    bytes_sent += chunk.bytesize

    # Small delay to prevent overwhelming the connection
    sleep(0.01)
  end
end

puts "\nSent #{bytes_sent} bytes"
puts "Waiting for final transcription..."

# Wait for processing to complete
sleep(3)

# Close the connection
ws.close

puts
puts "=" * 60
puts "FINAL TRANSCRIPTION:"
puts "=" * 60
puts final_transcript.empty? ? transcripts.join(" ") : final_transcript
puts "=" * 60
