# frozen_string_literal: true

require_relative "../../../test_helper"

class Telnyx::Test::Resources::Email::DedicatedIPs::ActionsTest < Telnyx::Test::ResourceTest
  def test_complete_warmup
    skip("Mock server tests are disabled")

    response = @telnyx.email.dedicated_ips.actions.complete_warmup("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::Email::DedicatedIPShowResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Email::DedicatedIP
      }
    end
  end

  def test_pause_warmup
    skip("Mock server tests are disabled")

    response = @telnyx.email.dedicated_ips.actions.pause_warmup("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::Email::DedicatedIPShowResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Email::DedicatedIP
      }
    end
  end

  def test_resume_warmup
    skip("Mock server tests are disabled")

    response = @telnyx.email.dedicated_ips.actions.resume_warmup("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::Email::DedicatedIPShowResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Email::DedicatedIP
      }
    end
  end

  def test_start_warmup
    skip("Mock server tests are disabled")

    response = @telnyx.email.dedicated_ips.actions.start_warmup("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::Email::DedicatedIPShowResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Email::DedicatedIP
      }
    end
  end
end
