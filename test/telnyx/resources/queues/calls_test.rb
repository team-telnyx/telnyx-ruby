# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::Queues::CallsTest < Telnyx::Test::ResourceTest
  def test_retrieve_required_params
    skip("Prism tests are disabled")

    response = @telnyx.queues.calls.retrieve("call_control_id", queue_name: "queue_name")

    assert_pattern do
      response => Telnyx::Models::Queues::CallRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::Queues::CallRetrieveResponse::Data | nil
      }
    end
  end

  def test_update_required_params
    skip("Prism tests are disabled")

    response = @telnyx.queues.calls.update("call_control_id", queue_name: "queue_name")

    assert_pattern do
      response => nil
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.queues.calls.list("queue_name")

    assert_pattern do
      response => Telnyx::Models::Queues::CallListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::Queues::CallListResponse::Data]) | nil,
        meta: Telnyx::PaginationMeta | nil
      }
    end
  end

  def test_remove_required_params
    skip("Prism tests are disabled")

    response = @telnyx.queues.calls.remove("call_control_id", queue_name: "queue_name")

    assert_pattern do
      response => nil
    end
  end
end
