# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::Dir::VerifyEmailTest < Telnyx::Test::ResourceTest
  def test_confirm_required_params
    skip("Mock server tests are disabled")

    response = @telnyx.dir.verify_email.confirm("16635d38-75a6-4481-82e8-69af60e05011", code: "482915")

    assert_pattern do
      response => Telnyx::Models::Dir::VerifyEmailConfirmResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::Dir::VerifyEmailConfirmResponse::Data
      }
    end
  end

  def test_send_
    skip("Mock server tests are disabled")

    response = @telnyx.dir.verify_email.send_("16635d38-75a6-4481-82e8-69af60e05011")

    assert_pattern do
      response => Telnyx::Models::Dir::VerifyEmailSendResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::Dir::VerifyEmailSendResponse::Data
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
