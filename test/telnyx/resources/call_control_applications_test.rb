# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::CallControlApplicationsTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response =
      @telnyx.call_control_applications.create(
        application_name: "call-router",
        webhook_event_url: "https://example.com"
      )

    assert_pattern do
      response => Telnyx::Models::CallControlApplicationCreateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::CallControlApplication | nil
      }
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response = @telnyx.call_control_applications.retrieve("id")

    assert_pattern do
      response => Telnyx::Models::CallControlApplicationRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::CallControlApplication | nil
      }
    end
  end

  def test_update_required_params
    skip("Prism tests are disabled")

    response =
      @telnyx.call_control_applications.update(
        "id",
        application_name: "call-router",
        webhook_event_url: "https://example.com"
      )

    assert_pattern do
      response => Telnyx::Models::CallControlApplicationUpdateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::CallControlApplication | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.call_control_applications.list

    assert_pattern do
      response => Telnyx::Models::CallControlApplicationListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::CallControlApplication]) | nil,
        meta: Telnyx::PaginationMeta | nil
      }
    end
  end

  def test_delete
    skip("Prism tests are disabled")

    response = @telnyx.call_control_applications.delete("id")

    assert_pattern do
      response => Telnyx::Models::CallControlApplicationDeleteResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::CallControlApplication | nil
      }
    end
  end
end
