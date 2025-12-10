# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::Porting::LoaConfigurationsTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response =
      @telnyx.porting.loa_configurations.create(
        address: {
          city: "Austin",
          country_code: "US",
          state: "TX",
          street_address: "600 Congress Avenue",
          zip_code: "78701"
        },
        company_name: "Telnyx",
        contact: {email: "testing@telnyx.com", phone_number: "+12003270001"},
        logo: {document_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"},
        name: "My LOA Configuration"
      )

    assert_pattern do
      response => Telnyx::Models::Porting::LoaConfigurationCreateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Porting::PortingLoaConfiguration | nil
      }
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response = @telnyx.porting.loa_configurations.retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::Models::Porting::LoaConfigurationRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Porting::PortingLoaConfiguration | nil
      }
    end
  end

  def test_update_required_params
    skip("Prism tests are disabled")

    response =
      @telnyx.porting.loa_configurations.update(
        "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e",
        address: {
          city: "Austin",
          country_code: "US",
          state: "TX",
          street_address: "600 Congress Avenue",
          zip_code: "78701"
        },
        company_name: "Telnyx",
        contact: {email: "testing@telnyx.com", phone_number: "+12003270001"},
        logo: {document_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"},
        name: "My LOA Configuration"
      )

    assert_pattern do
      response => Telnyx::Models::Porting::LoaConfigurationUpdateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Porting::PortingLoaConfiguration | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.porting.loa_configurations.list

    assert_pattern do
      response => Telnyx::Models::Porting::LoaConfigurationListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Porting::PortingLoaConfiguration]) | nil,
        meta: Telnyx::PaginationMeta | nil
      }
    end
  end

  def test_delete
    skip("Prism tests are disabled")

    response = @telnyx.porting.loa_configurations.delete("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => nil
    end
  end

  def test_preview_0_required_params
    skip("Prism doesn't support application/pdf responses")

    response =
      @telnyx.porting.loa_configurations.preview_0(
        address: {
          city: "Austin",
          country_code: "US",
          state: "TX",
          street_address: "600 Congress Avenue",
          zip_code: "78701"
        },
        company_name: "Telnyx",
        contact: {email: "testing@telnyx.com", phone_number: "+12003270001"},
        logo: {document_id: "182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e"},
        name: "My LOA Configuration"
      )

    assert_pattern do
      response => StringIO
    end
  end

  def test_preview_1
    skip("Prism doesn't support application/pdf responses")

    response = @telnyx.porting.loa_configurations.preview_1("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => StringIO
    end
  end
end
