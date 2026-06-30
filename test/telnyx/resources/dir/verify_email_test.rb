# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::Dir::VerifyEmailTest < Telnyx::Test::ResourceTest
  def test_confirm_code_required_params
    skip("Mock server tests are disabled")

    response = @telnyx.dir.verify_email.confirm_code("16635d38-75a6-4481-82e8-69af60e05011", code: "482915")

    assert_pattern do
      response => Telnyx::Models::Dir::VerifyEmailConfirmCodeResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::Dir::VerifyEmailConfirmCodeResponse::Data
      }
    end
  end

  def test_send_code
    skip("Mock server tests are disabled")

    response = @telnyx.dir.verify_email.send_code("16635d38-75a6-4481-82e8-69af60e05011")

    assert_pattern do
      response => Telnyx::Models::Dir::VerifyEmailSendCodeResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::Dir::VerifyEmailSendCodeResponse::Data
      }
    end
  end

  def test_status
    skip("Mock server tests are disabled")

    response = @telnyx.dir.verify_email.status("16635d38-75a6-4481-82e8-69af60e05011")

    assert_pattern do
      response => Telnyx::Models::Dir::VerifyEmailStatusResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::Dir::VerifyEmailStatusResponse::Data
      }
    end
  end
end
