# frozen_string_literal: true

require_relative "../../../telnyx/test_helper"
require_relative "../../../../lib/telnyx/lib/websocket"

class Telnyx::Lib::WebSocket::TextToSpeechWSTest < Minitest::Test
  def test_tts_server_event_from_hash
    data = {
      "type" => "audio_chunk",
      "audio" => "SGVsbG8gV29ybGQ=", # Base64 for "Hello World"
      "is_final" => false,
      "cached" => false,
      "sequence" => 1
    }

    event = Telnyx::Lib::WebSocket::TtsServerEvent.from_hash(data)

    assert_equal("audio_chunk", event.type)
    assert_equal("SGVsbG8gV29ybGQ=", event.audio)
    assert_equal(false, event.is_final)
    assert_equal(false, event.cached)
    assert_equal(1, event.sequence)
    assert(event.audio_chunk?)
    refute(event.final?)
    refute(event.error?)
  end

  def test_tts_server_event_final
    data = {
      "type" => "final",
      "is_final" => true,
      "time_to_first_audio_frame_ms" => 150
    }

    event = Telnyx::Lib::WebSocket::TtsServerEvent.from_hash(data)

    assert_equal("final", event.type)
    assert_equal(150, event.time_to_first_audio_frame_ms)
    assert(event.final?)
    refute(event.audio_chunk?)
  end

  def test_tts_server_event_final_with_is_final_only
    data = {
      "type" => "audio_chunk",
      "is_final" => true
    }

    event = Telnyx::Lib::WebSocket::TtsServerEvent.from_hash(data)

    # final? returns true because is_final is true
    assert(event.final?)
  end

  def test_tts_server_event_error
    data = {
      "type" => "error",
      "error" => "Invalid voice"
    }

    event = Telnyx::Lib::WebSocket::TtsServerEvent.from_hash(data)

    assert_equal("error", event.type)
    assert_equal("Invalid voice", event.error)
    assert(event.error?)
  end

  def test_tts_server_event_decode_audio
    data = {
      "type" => "audio_chunk",
      "audio" => "SGVsbG8gV29ybGQ=" # Base64 for "Hello World"
    }

    event = Telnyx::Lib::WebSocket::TtsServerEvent.from_hash(data)
    decoded = event.decode_audio

    assert_equal("Hello World", decoded)
  end

  def test_tts_server_event_decode_audio_nil
    data = {
      "type" => "final"
    }

    event = Telnyx::Lib::WebSocket::TtsServerEvent.from_hash(data)
    decoded = event.decode_audio

    assert_nil(decoded)
  end

  def test_tts_server_event_with_encoding
    data = {
      "type" => "audio_chunk",
      "encoding" => "mp3",
      "sample_rate" => 24_000
    }

    event = Telnyx::Lib::WebSocket::TtsServerEvent.from_hash(data)

    assert_equal("mp3", event.encoding)
    assert_equal(24_000, event.sample_rate)
  end

  def test_text_to_speech_stream_params_from_hash
    options = {
      voice: "telnyx.NaturalHD.Alloy",
      output_format: "mp3",
      sample_rate: 24_000,
      speed: 1.2
    }

    params = Telnyx::Lib::WebSocket::TextToSpeechStreamParams.from_hash(options)

    assert_equal("telnyx.NaturalHD.Alloy", params.voice)
    assert_equal("mp3", params.output_format)
    assert_equal(24_000, params.sample_rate)
    assert_equal(1.2, params.speed)
  end

  def test_text_to_speech_stream_params_from_hash_string_keys
    options = {
      "voice" => "telnyx.NaturalHD.Alloy",
      "output_format" => "wav"
    }

    params = Telnyx::Lib::WebSocket::TextToSpeechStreamParams.from_hash(options)

    assert_equal("telnyx.NaturalHD.Alloy", params.voice)
    assert_equal("wav", params.output_format)
  end

  def test_text_to_speech_stream_params_to_hash
    params = Telnyx::Lib::WebSocket::TextToSpeechStreamParams.new
    params.voice = "telnyx.NaturalHD.Nova"
    params.output_format = "pcm"
    params.language = "en-GB"

    hash = params.to_hash

    assert_equal("telnyx.NaturalHD.Nova", hash["voice"])
    assert_equal("pcm", hash["output_format"])
    assert_equal("en-GB", hash["language"])
  end

  def test_text_to_speech_stream_params_to_hash_excludes_nil
    params = Telnyx::Lib::WebSocket::TextToSpeechStreamParams.new
    params.voice = "telnyx.NaturalHD.Alloy"

    hash = params.to_hash

    assert_equal("telnyx.NaturalHD.Alloy", hash["voice"])
    refute(hash.key?("output_format"))
    refute(hash.key?("sample_rate"))
  end

  def test_text_to_speech_stream_params_with_pitch_and_speed
    params = Telnyx::Lib::WebSocket::TextToSpeechStreamParams.new
    params.speed = 1.5
    params.pitch = -5.0

    hash = params.to_hash

    assert_equal("1.5", hash["speed"])
    assert_equal("-5.0", hash["pitch"])
  end

  def test_text_to_speech_stream_params_to_query_string
    params = Telnyx::Lib::WebSocket::TextToSpeechStreamParams.new
    params.voice = "telnyx.NaturalHD.Alloy"
    params.sample_rate = 22_050

    query = params.to_query_string

    assert_includes(query, "voice=telnyx.NaturalHD.Alloy")
    assert_includes(query, "sample_rate=22050")
  end

  def test_stream_message_struct
    msg = Telnyx::Lib::WebSocket::StreamMessage.new(
      type: :message,
      message: "test",
      error: nil
    )

    assert_equal(:message, msg.type)
    assert_equal("test", msg.message)
    assert_nil(msg.error)
  end

  def test_stream_message_error_type
    error = Telnyx::Lib::WebSocket::WebSocketError.new("test error")
    msg = Telnyx::Lib::WebSocket::StreamMessage.new(
      type: :error,
      message: nil,
      error: error
    )

    assert_equal(:error, msg.type)
    assert_nil(msg.message)
    assert_instance_of(Telnyx::Lib::WebSocket::WebSocketError, msg.error)
  end

  def test_stream_message_close_type
    msg = Telnyx::Lib::WebSocket::StreamMessage.new(type: :close)

    assert_equal(:close, msg.type)
    assert_nil(msg.message)
    assert_nil(msg.error)
  end
end
