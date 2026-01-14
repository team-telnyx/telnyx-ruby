# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::SimCardsTest < Telnyx::Test::ResourceTest
  def test_retrieve
    skip("Prism tests are disabled")

    response = @telnyx.sim_cards.retrieve("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

    assert_pattern do
      response => Telnyx::Models::SimCardRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::SimCard | nil
      }
    end
  end

  def test_update
    skip("Prism tests are disabled")

    response = @telnyx.sim_cards.update("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

    assert_pattern do
      response => Telnyx::Models::SimCardUpdateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::SimCard | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.sim_cards.list

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::SimpleSimCard
    end

    assert_pattern do
      row => {
        id: String | nil,
        actions_in_progress: Telnyx::Internal::Type::Boolean | nil,
        authorized_imeis: ^(Telnyx::Internal::Type::ArrayOf[String]) | nil,
        created_at: String | nil,
        current_billing_period_consumed_data: Telnyx::SimpleSimCard::CurrentBillingPeriodConsumedData | nil,
        data_limit: Telnyx::SimpleSimCard::DataLimit | nil,
        eid: String | nil,
        esim_installation_status: Telnyx::SimpleSimCard::EsimInstallationStatus | nil,
        iccid: String | nil,
        imsi: String | nil,
        msisdn: String | nil,
        record_type: String | nil,
        resources_with_in_progress_actions: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]]) | nil,
        sim_card_group_id: String | nil,
        status: Telnyx::SimCardStatus | nil,
        tags: ^(Telnyx::Internal::Type::ArrayOf[String]) | nil,
        type: Telnyx::SimpleSimCard::Type | nil,
        updated_at: String | nil,
        version: String | nil
      }
    end
  end

  def test_delete
    skip("Prism tests are disabled")

    response = @telnyx.sim_cards.delete("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

    assert_pattern do
      response => Telnyx::Models::SimCardDeleteResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::SimCard | nil
      }
    end
  end

  def test_get_activation_code
    skip("Prism tests are disabled")

    response = @telnyx.sim_cards.get_activation_code("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

    assert_pattern do
      response => Telnyx::Models::SimCardGetActivationCodeResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::SimCardGetActivationCodeResponse::Data | nil
      }
    end
  end

  def test_get_device_details
    skip("Prism tests are disabled")

    response = @telnyx.sim_cards.get_device_details("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

    assert_pattern do
      response => Telnyx::Models::SimCardGetDeviceDetailsResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::SimCardGetDeviceDetailsResponse::Data | nil
      }
    end
  end

  def test_get_public_ip
    skip("Prism tests are disabled")

    response = @telnyx.sim_cards.get_public_ip("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

    assert_pattern do
      response => Telnyx::Models::SimCardGetPublicIPResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::SimCardGetPublicIPResponse::Data | nil
      }
    end
  end

  def test_list_wireless_connectivity_logs
    skip("Prism tests are disabled")

    response = @telnyx.sim_cards.list_wireless_connectivity_logs("6a09cdc3-8948-47f0-aa62-74ac943d6c58")

    assert_pattern do
      response => Telnyx::Internal::DefaultFlatPagination
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => Telnyx::Models::SimCardListWirelessConnectivityLogsResponse
    end

    assert_pattern do
      row => {
        id: Integer | nil,
        apn: String | nil,
        cell_id: String | nil,
        created_at: String | nil,
        imei: String | nil,
        imsi: String | nil,
        ipv4: String | nil,
        ipv6: String | nil,
        last_seen: String | nil,
        log_type: Telnyx::Models::SimCardListWirelessConnectivityLogsResponse::LogType | nil,
        mobile_country_code: String | nil,
        mobile_network_code: String | nil,
        radio_access_technology: String | nil,
        record_type: String | nil,
        sim_card_id: String | nil,
        start_time: String | nil,
        state: String | nil,
        stop_time: String | nil
      }
    end
  end
end
