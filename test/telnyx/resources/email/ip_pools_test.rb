# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::Email::IPPoolsTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response = @telnyx.email.ip_pools.create(name: "primary-pool")

    assert_pattern do
      response => Telnyx::Email::IPPoolShowResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Email::IPPool
      }
    end
  end

  def test_retrieve
    skip("Mock server tests are disabled")

    response = @telnyx.email.ip_pools.retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::Email::IPPoolShowResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Email::IPPool
      }
    end
  end

  def test_update
    skip("Mock server tests are disabled")

    response = @telnyx.email.ip_pools.update("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::Email::IPPoolShowResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Email::IPPool
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.email.ip_pools.list

    assert_pattern do
      response => Telnyx::Models::Email::IPPoolListResponse
    end

    assert_pattern do
      response => {
        data: ^(Telnyx::Internal::Type::ArrayOf[Telnyx::Email::IPPool])
      }
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @telnyx.email.ip_pools.delete("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => nil
    end
  end
end
