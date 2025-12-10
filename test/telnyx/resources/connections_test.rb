# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::ConnectionsTest < Telnyx::Test::ResourceTest
  def test_retrieve
    skip("Prism tests are disabled")

    response = @telnyx.connections.retrieve("id")

    assert_pattern do
      response => Telnyx::Models::ConnectionRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::ConnectionRetrieveResponse::Data | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.connections.list

    assert_pattern do
      response => Telnyx::Models::ConnectionListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::ConnectionListResponse::Data]) | nil,
        meta: Telnyx::ConnectionsPaginationMeta | nil
      }
    end
  end

  def test_list_active_calls
    skip("Prism tests are disabled")

    response = @telnyx.connections.list_active_calls("1293384261075731461")

    assert_pattern do
      response => Telnyx::Models::ConnectionListActiveCallsResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::ConnectionListActiveCallsResponse::Data]) | nil,
        meta: Telnyx::Models::ConnectionListActiveCallsResponse::Meta | nil
      }
    end
  end
end
