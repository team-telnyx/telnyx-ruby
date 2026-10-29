# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Lib::TelephonyCredentialsTest < Minitest::Test
  extend Minitest::Serial
  include WebMock::API

  BASE = "http://localhost"
  CREDENTIAL = {
    record_type: "credential",
    id: "c90a3e6d-8c8c-4c5a-a8b1-6b8d0f2f8a31",
    user_id: "191d61ea-1cb5-445a-8dd1-384f45e7cb7a",
    sip_username: "gencred1234",
    sip_password: "secret",
    expires_at: "2027-01-01T00:00:00Z"
  }.freeze
  MATERIAL = {
    kid: "v1",
    tel_token: "A" * 64,
    signing_secret: Base64.urlsafe_encode64("k" * 32, padding: false)
  }.freeze
  URL = "#{BASE}/telephony_credentials/#{CREDENTIAL[:id]}".freeze

  def before_all
    super
    WebMock.enable!
  end

  def teardown
    WebMock.reset!
    super
  end

  def after_all
    WebMock.disable!
    super
  end

  def client = Telnyx::Client.new(base_url: BASE, api_key: "My API Key", max_retries: 0)

  def decode(jwt) = Telnyx::Lib::AccessToken.decode(jwt, signing_secret: MATERIAL[:signing_secret])

  def test_mints_from_the_create_response_without_another_request
    stub_request(:post, "#{BASE}/telephony_credentials")
      .to_return_json(body: {data: CREDENTIAL.merge(token_material: MATERIAL)})

    response = client.telephony_credentials.create(connection_id: "1234567890")
    claims = decode(client.telephony_credentials.to_jwt(response, ttl: 600))

    assert_equal(CREDENTIAL[:id], claims["sub"])
    assert_equal(CREDENTIAL[:user_id], claims["user_id"])
    assert_equal(CREDENTIAL[:sip_username], claims["identity"])
    assert_equal(CREDENTIAL[:expires_at], claims["cred_exp"])
    assert_equal(MATERIAL[:tel_token], claims["tel_token"])
    assert_equal(claims["iat"] + 600, claims["exp"])
    assert_not_requested(:get, "#{URL}/token_material")
  end

  def test_accepts_the_credential_model_itself
    stub_request(:post, "#{BASE}/telephony_credentials")
      .to_return_json(body: {data: CREDENTIAL.merge(token_material: MATERIAL)})

    credential = client.telephony_credentials.create(connection_id: "1234567890").data
    claims = decode(client.telephony_credentials.to_jwt(credential))

    assert_equal(CREDENTIAL[:id], claims["sub"])
    assert_not_requested(:get, "#{URL}/token_material")
  end

  def test_looks_up_a_credential_by_id_and_fetches_its_token_material
    stub_request(:get, URL).to_return_json(body: {data: CREDENTIAL})
    stub_request(:get, "#{URL}/token_material").to_return_json(body: {data: MATERIAL})

    claims = decode(client.telephony_credentials.to_jwt(CREDENTIAL[:id], ttl: 60))

    assert_requested(:get, URL, times: 1)
    assert_requested(:get, "#{URL}/token_material", times: 1)
    assert_equal(CREDENTIAL[:sip_username], claims["identity"])
    assert_equal(claims["iat"] + 60, claims["exp"])
  end

  def test_fetches_token_material_for_a_retrieved_credential
    stub_request(:get, URL).to_return_json(body: {data: CREDENTIAL})
    stub_request(:get, "#{URL}/token_material").to_return_json(body: {data: MATERIAL})

    response = client.telephony_credentials.retrieve(CREDENTIAL[:id])
    claims = decode(client.telephony_credentials.to_jwt(response))

    assert_requested(:get, "#{URL}/token_material", times: 1)
    assert_equal(MATERIAL[:tel_token], claims["tel_token"])
  end

  def test_mints_from_material_the_caller_stored_with_no_request_at_all
    credential = Telnyx::Models::TelephonyCredential.new(**CREDENTIAL)

    claims = decode(client.telephony_credentials.to_jwt(credential, token_material: MATERIAL, ttl: 120))

    assert_equal(CREDENTIAL[:id], claims["sub"])
    assert_equal(claims["iat"] + 120, claims["exp"])
    assert_not_requested(:any, %r{#{BASE}/.*})
  end

  def test_fetch_token_material_unwraps_data
    stub_request(:get, "#{URL}/token_material").to_return_json(body: {data: MATERIAL})

    assert_equal(MATERIAL, client.telephony_credentials.fetch_token_material(CREDENTIAL[:id]))
  end

  def test_rejects_anything_that_is_not_a_credential
    assert_raises(ArgumentError) { client.telephony_credentials.to_jwt(42) }
    assert_raises(ArgumentError) { client.telephony_credentials.to_jwt(nil) }
  end
end
