# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::Enterprises::VerifyEmailTest < Telnyx::Test::ResourceTest
  def test_create
    skip("Mock server tests are disabled")

    response = @telnyx.enterprises.verify_email.create("4a6192a4-573d-446d-b3ce-aff9117272a6")

    assert_pattern do
      response => Telnyx::Enterprises::EnterpriseEmailVerificationStatusWrapped
    end

    assert_pattern do
      response => {
        data: Telnyx::Enterprises::EnterpriseEmailVerificationStatusWrapped::Data
      }
    end
  end

  def test_confirm_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.enterprises.verify_email.confirm("4a6192a4-573d-446d-b3ce-aff9117272a6", code: "482915")

    assert_pattern do
      response => Telnyx::Enterprises::EnterpriseEmailVerificationStatusWrapped
    end

    assert_pattern do
      response => {
        data: Telnyx::Enterprises::EnterpriseEmailVerificationStatusWrapped::Data
      }
    end
  end
end
