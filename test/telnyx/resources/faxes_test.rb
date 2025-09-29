# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::FaxesTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response = @telnyx.faxes.create(connection_id: "234423", from: "+13125790015", to: "+13127367276")

    assert_pattern do
      response => Telnyx::Models::FaxCreateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Fax | nil
      }
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response = @telnyx.faxes.retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::Models::FaxRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Fax | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.faxes.list

    assert_pattern do
      response => Telnyx::Models::FaxListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Fax]) | nil,
        meta: Telnyx::Internal::Type::Unknown | nil
      }
    end
  end

  def test_delete
    skip("Prism tests are disabled")

    response = @telnyx.faxes.delete("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => nil
    end
  end
end
