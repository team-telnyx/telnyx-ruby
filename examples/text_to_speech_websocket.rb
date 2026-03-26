#!/usr/bin/env ruby
# frozen_string_literal: true

# Example: Text-to-Speech WebSocket Streaming
#
# This example demonstrates real-time speech synthesis using
# the Telnyx TTS WebSocket API with both callback and Enumerable patterns.
#
# Prerequisites:
#   - gem install telnyx websocket-client-simple
#   - Set TELNYX_API_KEY environment variable
#
# Usage:
#   ruby examples/text_to_speech_websocket.rb "Hello, world!"
#   ruby examples/text_to_speech_websocket.rb --enumerable "Hello, world!"

require "bundler/setup"
require "telnyx"
require "base64"
require_relative "../lib/telnyx/lib/websocket"

# Configuration
api_key = ENV.fetch("TELNYX_API_KEY") do
  abort("Error: TELNYX_API_KEY environment variable is required")
end

# Parse arguments
use_enumerable = ARGV.delete("--enumerable")
text = ARGV.join(" ")

if text.empty?
  text = "Hello! This is a test of the Telnyx text to speech API. " \
         "The audio is streamed in real-time using WebSockets."
end

output_file = "output.mp3"

# Create client
client = Telnyx::Client.new(api_key: api_key)

# Configure TTS parameters
tts_params = {
  voice: "telnyx.NaturalHD.Alloy",
  output_format: "mp3"
}

puts "Text to synthesize:"
puts "  #{text}"
puts
puts "Voice: #{tts_params[:voice]}"
puts "Output format: #{tts_params[:output_format]}"
puts "Output file: #{output_file}"
puts

# Create WebSocket connection
ws = Telnyx::Lib::WebSocket::TextToSpeechWS.new(client, tts_params)

audio_chunks = []
time_to_first = nil

if use_enumerable
  # Example using Enumerable pattern
  puts "Using Enumerable pattern..."
  puts "Connecting..."

  # Wait for open in the enumerable flow
  Thread.new do
    sleep 0.5 # Give time for connection
    if ws.open?
      puts "[CONNECTED] Sending text..."
      ws.send({type: "text", text: text})
      ws.send({type: "flush"})
    end
  end

  ws.each do |msg|
    case msg.type
    when :open
      puts("[OPEN] Connection established")
    when :message
      event = msg.message
      case event.type
      when "audio_chunk"
        audio = event.decode_audio
        audio_chunks << audio if audio
        print(".")
      when "final"
        time_to_first = event.time_to_first_audio_frame_ms
        puts("\n[FINAL] Synthesis complete")
        break
      end
    when :error
      puts("\n[ERROR] #{msg.error.message}")
    when :close
      puts("[CLOSED]")
      break
    end
  end
else
  # Example using callback pattern
  puts "Using callback pattern..."

  ws.on(:open) do
    puts "[OPEN] Connection established"
  end

  ws.on(:audio_chunk) do |event|
    audio = event.decode_audio
    audio_chunks << audio if audio
    print "."
  end

  ws.on(:final) do |event|
    time_to_first = event.time_to_first_audio_frame_ms
    puts "\n[FINAL] Synthesis complete"
  end

  ws.on(:error) do |error|
    puts "\n[ERROR] #{error.message}"
  end

  ws.on(:close) do |code, _reason|
    puts "[CLOSED] (code: #{code})"
  end

  # Wait for connection
  puts "Connecting..."
  begin
    ws.wait_for_open(timeout: 10)
  rescue StandardError => e
    abort("Failed to connect: #{e.message}")
  end

  # Send text for synthesis
  puts "Sending text..."
  ws.send({type: "text", text: text})
  ws.send({type: "flush"})

  # Wait for synthesis to complete
  sleep(5)
end

# Close the connection
ws.close

# Write audio to file
if audio_chunks.any?
  File.open(output_file, "wb") do |f|
    audio_chunks.each { |chunk| f.write(chunk) }
  end

  puts
  puts "=" * 60
  puts "RESULTS:"
  puts "=" * 60
  puts "Audio chunks received: #{audio_chunks.length}"
  puts "Total audio size: #{audio_chunks.sum(&:bytesize)} bytes"
  puts "Time to first audio: #{time_to_first}ms" if time_to_first
  puts "Output saved to: #{output_file}"
  puts "=" * 60
  puts
  puts "Play the audio with: afplay #{output_file}"
else
  puts
  puts "No audio chunks received."
end
