# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::EmailValidations::BatchTest < Telnyx::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response = @telnyx.email_validations.batch.create(emails: ["user@example.com", "admin@example.org"])

    assert_pattern do
      response => Telnyx::Models::EmailValidations::BatchCreateResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::EmailValidations::BatchCreateResponse::Data
      }
    end
  end

  def test_retrieve
    skip("Mock server tests are disabled")

    response = @telnyx.email_validations.batch.retrieve("182bd5e5-6e1a-4fe4-a799-aa6d9a6ab26e")

    assert_pattern do
      response => Telnyx::Models::EmailValidations::BatchRetrieveResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::EmailValidations::BatchRetrieveResponse::Data
      }
    end
  end
end
