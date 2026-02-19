# frozen_string_literal: true

require_relative "../../test_helper"

class Telnyx::Test::Resources::Rooms::ActionsTest < Telnyx::Test::ResourceTest
  def test_generate_join_client_token
    skip("Mock server tests are disabled")

    response = @telnyx.rooms.actions.generate_join_client_token("0ccc7b54-4df3-4bca-a65a-3da1ecc777f0")

    assert_pattern do
      response => Telnyx::Models::Rooms::ActionGenerateJoinClientTokenResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::Rooms::ActionGenerateJoinClientTokenResponse::Data | nil
      }
    end
  end

  def test_refresh_client_token_required_params
    skip("Mock server tests are disabled")

    response =
      @telnyx.rooms.actions.refresh_client_token(
        "0ccc7b54-4df3-4bca-a65a-3da1ecc777f0",
        refresh_token: "eyJhbGciOiJIUzUxMiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJ0ZWxueXhfdGVsZXBob255IiwiZXhwIjoxNTkwMDEwMTQzLCJpYXQiOjE1ODc1OTA5NDMsImlzcyI6InRlbG55eF90ZWxlcGhvbnkiLCJqdGkiOiJiOGM3NDgzNy1kODllLTRhNjUtOWNmMi0zNGM3YTZmYTYwYzgiLCJuYmYiOjE1ODc1OTA5NDIsInN1YiI6IjVjN2FjN2QwLWRiNjUtNGYxMS05OGUxLWVlYzBkMWQ1YzZhZSIsInRlbF90b2tlbiI6InJqX1pra1pVT1pNeFpPZk9tTHBFVUIzc2lVN3U2UmpaRmVNOXMtZ2JfeENSNTZXRktGQUppTXlGMlQ2Q0JSbWxoX1N5MGlfbGZ5VDlBSThzRWlmOE1USUlzenl6U2xfYURuRzQ4YU81MHlhSEd1UlNZYlViU1ltOVdJaVEwZz09IiwidHlwIjoiYWNjZXNzIn0.gNEwzTow5MLLPLQENytca7pUN79PmPj6FyqZWW06ZeEmesxYpwKh0xRtA0TzLh6CDYIRHrI8seofOO0YFGDhpQ"
      )

    assert_pattern do
      response => Telnyx::Models::Rooms::ActionRefreshClientTokenResponse
    end

    assert_pattern do
      response => {
        data: Telnyx::Models::Rooms::ActionRefreshClientTokenResponse::Data | nil
      }
    end
  end
end
