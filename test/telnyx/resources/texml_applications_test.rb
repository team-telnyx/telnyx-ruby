# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::TexmlApplicationsTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response =
      @telnyx.texml_applications.create(friendly_name: "call-router", voice_url: "https://example.com")

    assert_pattern do
      response => Telnyx::Models::TexmlApplicationCreateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::TexmlApplication | nil
      }
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response = @telnyx.texml_applications.retrieve("1293384261075731499")

    assert_pattern do
      response => Telnyx::Models::TexmlApplicationRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::TexmlApplication | nil
      }
    end
  end

  def test_update_required_params
    skip("Prism tests are disabled")

    response =
      @telnyx.texml_applications.update(
        "1293384261075731499",
        friendly_name: "call-router",
        voice_url: "https://example.com"
      )

    assert_pattern do
      response => Telnyx::Models::TexmlApplicationUpdateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::TexmlApplication | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.texml_applications.list

    assert_pattern do
      response => Telnyx::Models::TexmlApplicationListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::TexmlApplication]) | nil,
        meta: Telnyx::Models::TexmlApplicationListResponse::Meta | nil
      }
    end
  end

  def test_delete
    skip("Prism tests are disabled")

    response = @telnyx.texml_applications.delete("1293384261075731499")

    assert_pattern do
      response => Telnyx::Models::TexmlApplicationDeleteResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::TexmlApplication | nil
      }
    end
  end
end
