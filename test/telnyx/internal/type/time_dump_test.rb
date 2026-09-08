# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::TimeDumpTest < Minitest::Test
  class Scheduled < Telnyx::Internal::Type::BaseModel
    optional :send_at, Time, nil?: true
  end

  def test_native_time_dump_preserves_nanoseconds_and_offsets
    [
      "2030-01-02T03:04:00Z",
      "2030-01-02T08:34:00+05:30",
      "2031-07-08T09:10:00Z",
      "2030-01-02T08:34:00.123456789+05:30"
    ].each do |text|
      # No test-local require "time": the normal SDK entrypoint must load it.
      time = Time.iso8601(text)
      dumped = Scheduled.dump(Scheduled.new(send_at: time), state: {})
      wire = JSON.parse(JSON.generate(dumped)).fetch("send_at")
      assert_instance_of(String, dumped.fetch(:send_at))
      assert_match(/\A\d{4}-\d{2}-\d{2}T\d{2}:\d{2}:\d{2}\.\d{9}(?:Z|[+-]\d{2}:\d{2})\z/, wire)
      assert_equal(time.to_r, Time.iso8601(wire).to_r)
      assert_equal(time.utc_offset, Time.iso8601(wire).utc_offset)
    end
  end

  def test_nested_time_strings_and_nil
    text = "2030-01-02T08:34:00.123456789+05:30"
    time = Time.iso8601(text)
    value = {nested: [{send_at: time}], text: text, absent: nil}
    dumped = Telnyx::Internal::Type::Unknown.dump(value, state: {})
    assert_equal({nested: [{send_at: text}], text: text, absent: nil}, dumped)
    assert_same(time, value.fetch(:nested).first.fetch(:send_at))
    assert_nil(Scheduled.dump(Scheduled.new(send_at: nil), state: {}).fetch(:send_at))
  end
end
