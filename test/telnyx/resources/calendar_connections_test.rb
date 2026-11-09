# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::CalendarConnectionsTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response = @telnyx.calendar_connections.create(platform: :google_calendar)

    assert_pattern do
      response => Telnyx::Models::CalendarConnectionCreateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::CalendarConnectionCreateResponse::Data
      }
    end
  end

  def test_retrieve
    skip("Mock server tests are disabled")

    response = @telnyx.calendar_connections.retrieve("id")

    assert_pattern do
      response => Telnyx::CalendarConnectionResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::CalendarConnection
      }
    end
  end

  def test_update
    skip("Mock server tests are disabled")

    response = @telnyx.calendar_connections.update("id")

    assert_pattern do
      response => Telnyx::Models::CalendarConnectionUpdateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::CalendarConnectionUpdateResponse::Data
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.calendar_connections.list

    assert_pattern do
      response => Telnyx::Models::CalendarConnectionListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::CalendarConnection])
      }
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @telnyx.calendar_connections.delete("id")

    assert_pattern do
      response => Telnyx::CalendarConnectionResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::CalendarConnection
      }
    end
  end
end
