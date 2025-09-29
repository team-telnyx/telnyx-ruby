# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::Payment::AutoRechargePrefsTest < Telnyx::Test::ResourceTest
  def test_update
    skip("Prism tests are disabled")

    response = @telnyx.payment.auto_recharge_prefs.update

    assert_pattern do
      response => Telnyx::Models::Payment::AutoRechargePrefUpdateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::Payment::AutoRechargePrefUpdateResponse::Data | nil
      }
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.payment.auto_recharge_prefs.list

    assert_pattern do
      response => Telnyx::Models::Payment::AutoRechargePrefListResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::Payment::AutoRechargePrefListResponse::Data | nil
      }
    end
  end
end
