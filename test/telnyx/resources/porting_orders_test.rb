# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::PortingOrdersTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

    response = @telnyx.porting_orders.create(phone_numbers: ["+13035550000", "+13035550001", "+13035550002"])

    assert_pattern do
      response => Telnyx::Models::PortingOrderCreateResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::PortingOrder]) | nil
      }
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response = @telnyx.porting_orders.retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::Models::PortingOrderRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::PortingOrder | nil,
        meta: Telnyx::Models::PortingOrderRetrieveResponse::Meta | nil
      }
    end
  end

  def test_update
    skip("Prism tests are disabled")

    response = @telnyx.porting_orders.update("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::Models::PortingOrderUpdateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::PortingOrder | nil,
        meta: Telnyx::Models::PortingOrderUpdateResponse::Meta | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.porting_orders.list

    assert_pattern do
      response => Telnyx::Internal::DefaultPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::PortingOrder
    end

    assert_pattern do
      row => {
        id: String | nil,
        activation_settings: Telnyx::PortingOrderActivationSettings | nil,
        additional_steps: ^(Telnyx::Internal::Type::ArrayOf[enum: Telnyx::PortingOrder::AdditionalStep]) | nil,
        created_at: Time | nil,
        customer_group_reference: String | nil,
        customer_reference: String | nil,
        description: String | nil,
        documents: Telnyx::PortingOrderDocuments | nil,
        end_user: Telnyx::PortingOrderEndUser | nil,
        messaging: Telnyx::PortingOrderMessaging | nil,
        misc: Telnyx::PortingOrderMisc | nil,
        old_service_provider_ocn: String | nil,
        parent_support_key: String | nil,
        phone_number_configuration: Telnyx::PortingOrderPhoneNumberConfiguration | nil,
        phone_number_type: Telnyx::PortingOrder::PhoneNumberType | nil,
        porting_phone_numbers_count: Integer | nil,
        record_type: String | nil,
        requirements: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::PortingOrderRequirement]) | nil,
        requirements_met: Telnyx::Internal::Type::Boolean | nil,
        status: Telnyx::PortingOrderStatus | nil,
        support_key: String | nil,
        updated_at: Time | nil,
        user_feedback: Telnyx::PortingOrderUserFeedback | nil,
        user_id: String | nil,
        webhook_url: String | nil
      }
    end
  end

  def test_delete
    skip("Prism tests are disabled")

    response = @telnyx.porting_orders.delete("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => nil
    end
  end

  def test_retrieve_allowed_foc_windows
    skip("Prism tests are disabled")

    response = @telnyx.porting_orders.retrieve_allowed_foc_windows("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::Models::PortingOrderRetrieveAllowedFocWindowsResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::PortingOrderRetrieveAllowedFocWindowsResponse::Data]) | nil,
        meta: Telnyx::PaginationMeta | nil
      }
    end
  end

  def test_retrieve_exception_types
    skip("Prism tests are disabled")

    response = @telnyx.porting_orders.retrieve_exception_types

    assert_pattern do
      response => Telnyx::Models::PortingOrderRetrieveExceptionTypesResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::PortingOrdersExceptionType]) | nil
      }
    end
  end

  def test_retrieve_loa_template
    skip("Prism doesn't support application/pdf responses")

    response = @telnyx.porting_orders.retrieve_loa_template("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => StringIO
    end
  end

  def test_retrieve_requirements
    skip("Prism tests are disabled")

    response = @telnyx.porting_orders.retrieve_requirements("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::Internal::DefaultPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::Models::PortingOrderRetrieveRequirementsResponse
    end

    assert_pattern do
      row => {
        field_type: Telnyx::Models::PortingOrderRetrieveRequirementsResponse::FieldType | nil,
        field_value: String | nil,
        record_type: String | nil,
        requirement_status: String | nil,
        requirement_type: Telnyx::Models::PortingOrderRetrieveRequirementsResponse::RequirementType | nil
      }
    end
  end

  def test_retrieve_sub_request
    skip("Prism tests are disabled")

    response = @telnyx.porting_orders.retrieve_sub_request("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::Models::PortingOrderRetrieveSubRequestResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::PortingOrderRetrieveSubRequestResponse::Data | nil
      }
    end
  end
end
