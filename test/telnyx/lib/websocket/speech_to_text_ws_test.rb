# frozen_string_literal: true

require_relative "../../../telnyx/test_helper"
require_relative "../../../../lib/telnyx/lib/websocket"

class Telnyx::Lib::WebSocket::SpeechToTextWSTest < Minitest::Test
  def test_stt_server_event_from_hash
    data = {
      "type" => "transcript",
      "transcript" => "Hello world",
      "is_final" => true,
      "confidence" => 0.95
    }

    event = Telnyx::Lib::WebSocket::SttServerEvent.from_hash(data)

    assert_equal("transcript", event.type)
    assert_equal("Hello world", event.transcript)
    assert_equal(true, event.is_final)
    assert_equal(0.95, event.confidence)
    assert(event.final?)
    refute(event.error?)
  end

  def test_stt_server_event_error
    data = {
      "type" => "error",
      "error" => "Connection failed"
    }

    event = Telnyx::Lib::WebSocket::SttServerEvent.from_hash(data)

    assert_equal("error", event.type)
    assert_equal("Connection failed", event.error)
    assert(event.error?)
    refute(event.final?)
  end

  def test_stt_server_event_with_words
    data = {
      "type" => "transcript",
      "transcript" => "Hello world",
      "is_final" => true,
      "words" => [
        {"word" => "Hello", "start" => 0.0, "end" => 0.5},
        {"word" => "world", "start" => 0.6, "end" => 1.0}
      ],
      "speaker" => "speaker_0"
    }

    event = Telnyx::Lib::WebSocket::SttServerEvent.from_hash(data)

    assert_equal(2, event.words.length)
    assert_equal("speaker_0", event.speaker)
  end

  def test_speech_to_text_stream_params_from_hash
    options = {
      transcription_engine: "Deepgram",
      language: "en-US",
      input_format: "wav",
      sample_rate: 16_000,
      interim_results: true
    }

    params = Telnyx::Lib::WebSocket::SpeechToTextStreamParams.from_hash(options)

    assert_equal("Deepgram", params.transcription_engine)
    assert_equal("en-US", params.language)
    assert_equal("wav", params.input_format)
    assert_equal(16_000, params.sample_rate)
    assert_equal(true, params.interim_results)
  end

  def test_speech_to_text_stream_params_from_hash_string_keys
    options = {
      "transcription_engine" => "Google",
      "language" => "es-ES"
    }

    params = Telnyx::Lib::WebSocket::SpeechToTextStreamParams.from_hash(options)

    assert_equal("Google", params.transcription_engine)
    assert_equal("es-ES", params.language)
  end

  def test_speech_to_text_stream_params_to_hash
    params = Telnyx::Lib::WebSocket::SpeechToTextStreamParams.new
    params.transcription_engine = "Google"
    params.language = "es-ES"
    params.punctuate = true

    hash = params.to_hash

    assert_equal("Google", hash["transcription_engine"])
    assert_equal("es-ES", hash["language"])
    assert_equal("true", hash["punctuate"])
  end

  def test_speech_to_text_stream_params_to_hash_excludes_nil
    params = Telnyx::Lib::WebSocket::SpeechToTextStreamParams.new
    params.transcription_engine = "Deepgram"

    hash = params.to_hash

    assert_equal("Deepgram", hash["transcription_engine"])
    refute(hash.key?("language"))
    refute(hash.key?("sample_rate"))
  end

  def test_speech_to_text_stream_params_keywords
    params = Telnyx::Lib::WebSocket::SpeechToTextStreamParams.new
    params.keywords = %w[hello world telnyx]

    hash = params.to_hash

    assert_equal("hello,world,telnyx", hash["keywords"])
  end

  def test_speech_to_text_stream_params_to_query_string
    params = Telnyx::Lib::WebSocket::SpeechToTextStreamParams.new
    params.transcription_engine = "Deepgram"
    params.language = "en-US"

    query = params.to_query_string

    assert_includes(query, "transcription_engine=Deepgram")
    assert_includes(query, "language=en-US")
  end

  def test_websocket_error
    error = Telnyx::Lib::WebSocket::WebSocketError.new(
      "Connection failed",
      error: {"code" => 1001},
      cause: StandardError.new("Underlying error")
    )

    assert_equal("Connection failed", error.message)
    assert_equal({"code" => 1001}, error.error)
    assert_instance_of(StandardError, error.cause)
  end

  def test_websocket_error_without_cause
    error = Telnyx::Lib::WebSocket::WebSocketError.new("Simple error")

    assert_equal("Simple error", error.message)
    assert_nil(error.error)
    assert_nil(error.cause)
  end

  def test_base_event_registration
    base = TestableBase.new

    events_received = []
    base.on(:test_event) { |data| events_received << data }
    base.trigger_emit(:test_event, "test_data")

    assert_equal(["test_data"], events_received)
  end

  def test_base_multiple_listeners
    base = TestableBase.new

    events1 = []
    events2 = []
    base.on(:test_event) { |data| events1 << data }
    base.on(:test_event) { |data| events2 << data }
    base.trigger_emit(:test_event, "test_data")

    assert_equal(["test_data"], events1)
    assert_equal(["test_data"], events2)
  end

  def test_base_event_removal
    base = TestableBase.new

    events_received = []
    handler = ->(data) { events_received << data }
    base.on(:test_event, &handler)
    base.off(:test_event, handler)
    base.trigger_emit(:test_event, "test_data")

    assert_empty(events_received)
  end

  def test_base_event_removal_all
    base = TestableBase.new

    events_received = []
    base.on(:test_event) { |data| events_received << data }
    base.on(:test_event) { |data| events_received << data }
    base.off(:test_event)
    base.trigger_emit(:test_event, "test_data")

    assert_empty(events_received)
  end

  def test_base_connection_states
    base = TestableBase.new

    # Initial state is CONNECTING
    assert(base.connecting?)
    refute(base.open?)
    refute(base.closed?)

    # Mark as open
    base.trigger_mark_open
    assert(base.open?)
    refute(base.connecting?)
    refute(base.closed?)

    # Mark as closed
    base.trigger_mark_closed
    assert(base.closed?)
    refute(base.open?)
    refute(base.connecting?)
  end

  def test_base_wait_for_open_when_already_open
    base = TestableBase.new
    base.trigger_mark_open

    result = base.wait_for_open
    assert_same(base, result)
  end

  # Helper class to test Base without WebSocket connection
  class TestableBase < Telnyx::Lib::WebSocket::Base
    def trigger_emit(event, *args)
      emit(event, *args)
    end

    def trigger_mark_open
      mark_open
    end

    def trigger_mark_closed
      mark_closed
    end
  end
end
