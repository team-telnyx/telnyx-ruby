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
      response => Telnyx::Models::PortingOrderListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::PortingOrder]) | nil,
        meta: Telnyx::PaginationMeta | nil
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
      response => Telnyx::Models::PortingOrderRetrieveRequirementsResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Models::PortingOrderRetrieveRequirementsResponse::Data]) | nil,
        meta: Telnyx::PaginationMeta | nil
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
