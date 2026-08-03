# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::EmailValidationsTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response = @telnyx.email_validations.create(email: "user@example.com")

    assert_pattern do
      response => Telnyx::Models::EmailValidationCreateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::EmailValidationCreateResponse::Data
      }
    end
  end
end
