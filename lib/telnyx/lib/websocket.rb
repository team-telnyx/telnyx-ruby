# frozen_string_literal: true

# WebSocket support for Telnyx Speech-to-Text (STT) and Text-to-Speech (TTS) streaming.
#
# This module provides WebSocket clients for real-time audio transcription
# and speech synthesis using the Telnyx API.
#
# Example - Speech-to-Text:
#
#   require "telnyx"
#   require "telnyx/lib/websocket"
#
#   client = Telnyx::Client.new(api_key: ENV["TELNYX_API_KEY"])
#
#   ws = Telnyx::Lib::WebSocket::SpeechToTextWS.new(client, {
#     transcription_engine: "Deepgram",
#     language: "en-US"
#   })
#
#   ws.on(:transcript) do |event|
#     puts event.transcript if event.is_final
#   end
#
#   ws.wait_for_open
#   ws.send(audio_data)
#   ws.close
#
# Example - Text-to-Speech:
#
#   ws = Telnyx::Lib::WebSocket::TextToSpeechWS.new(client, {
#     voice: "telnyx.NaturalHD.Alloy"
#   })
#
#   ws.each do |msg|
#     case msg.type
#     when :message
#       audio = msg.message.decode_audio if msg.message.audio_chunk?
#     when :close
#       break
#     end
#   end
#

require_relative "websocket/websocket_error"
require_relative "websocket/stt_server_event"
require_relative "websocket/tts_server_event"
require_relative "websocket/speech_to_text_stream_params"
require_relative "websocket/text_to_speech_stream_params"
require_relative "websocket/base"
require_relative "websocket/speech_to_text_ws"
require_relative "websocket/text_to_speech_ws"
