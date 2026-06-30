# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::Dir::VerifyEmailTest < Telnyx::Test::ResourceTest
  def test_create
    skip("Mock server tests are disabled")

    response = @telnyx.dir.verify_email.create("16635d38-75a6-4481-82e8-69af60e05011")

    assert_pattern do
      response => Telnyx::Dir::EmailVerificationStatusWrapped
    end

    assert_pattern do
      response => {
        data: Telnyx::Dir::EmailVerificationStatusWrapped::Data
      }
    end
  end

  def test_list
    skip("Mock server tests are disabled")

    response = @telnyx.dir.verify_email.list("16635d38-75a6-4481-82e8-69af60e05011")

    assert_pattern do
      response => Telnyx::Dir::EmailVerificationStatusWrapped
    end

    assert_pattern do
      response => {
        data: Telnyx::Dir::EmailVerificationStatusWrapped::Data
      }
    end
  end

  def test_confirm_required_params
    skip("Mock server tests are disabled")

    response = @telnyx.dir.verify_email.confirm("16635d38-75a6-4481-82e8-69af60e05011", code: "482915")

    assert_pattern do
      response => Telnyx::Dir::EmailVerificationStatusWrapped
    end

    assert_pattern do
      response => {
        data: Telnyx::Dir::EmailVerificationStatusWrapped::Data
      }
    end
  end
end
