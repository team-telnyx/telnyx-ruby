# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::Email::DedicatedIPsTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response = @telnyx.email.dedicated_ips.create(idempotency_key: "8e03978e-40d5-43e8-bc93-6894a57f9326")

    assert_pattern do
      response => Telnyx::Email::DedicatedIPShowResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Email::DedicatedIP
      }
    end
  end

  def test_retrieve
    skip("Mock server tests are disabled")

    response = @telnyx.email.dedicated_ips.retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::Email::DedicatedIPShowResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Email::DedicatedIP
      }
    end
  end

  def test_update
    skip("Mock server tests are disabled")

    response = @telnyx.email.dedicated_ips.update("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::Email::DedicatedIPShowResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Email::DedicatedIP
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.email.dedicated_ips.list

    assert_pattern do
      response => Telnyx::Models::Email::DedicatedIPListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Email::DedicatedIP])
      }
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @telnyx.email.dedicated_ips.delete("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

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
