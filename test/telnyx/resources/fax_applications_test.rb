# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::FaxApplicationsTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response =
      @telnyx.fax_applications.create(application_name: "fax-router", webhook_event_url: "https://example.com")

    assert_pattern do
      response => Telnyx::Models::FaxApplicationCreateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::FaxApplication | nil
      }
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response = @telnyx.fax_applications.retrieve("1293384261075731499")

    assert_pattern do
      response => Telnyx::Models::FaxApplicationRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::FaxApplication | nil
      }
    end
  end

  def test_update_required_params
    skip("Prism tests are disabled")

    response =
      @telnyx.fax_applications.update(
        "1293384261075731499",
        application_name: "fax-router",
        webhook_event_url: "https://example.com"
      )

    assert_pattern do
      response => Telnyx::Models::FaxApplicationUpdateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::FaxApplication | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.fax_applications.list

    assert_pattern do
      response => Telnyx::Models::FaxApplicationListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::FaxApplication]) | nil,
        meta: Telnyx::PaginationMeta | nil
      }
    end
  end

  def test_delete
    skip("Prism tests are disabled")

    response = @telnyx.fax_applications.delete("1293384261075731499")

    assert_pattern do
      response => Telnyx::Models::FaxApplicationDeleteResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::FaxApplication | nil
      }
    end
  end
end
