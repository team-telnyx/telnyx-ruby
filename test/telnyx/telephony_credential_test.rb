# frozen_string_literal: true

require_relative "../test_helper"

module Telnyx
  class TelephonyCredentialTest < Test::Unit::TestCase
    should "list telephony credentials" do
      telephony_credentials = TelephonyCredential.list
      assert_requested :get, "#{Telnyx.api_base}/v2/telephony_credentials"
      assert_kind_of ListObject, telephony_credentials
      assert_kind_of TelnyxObject, telephony_credentials.first
    end

    should "create telephony credential" do
      TelephonyCredential.create(
        name: "Test credential",
        connection_id: "1234567890"
      )
      assert_requested :post, "#{Telnyx.api_base}/v2/telephony_credentials"
    end

    should "retrieve telephony credential" do
      telephony_credential = TelephonyCredential.retrieve("id")
      assert_requested :get, "#{Telnyx.api_base}/v2/telephony_credentials/id"
      assert_kind_of TelnyxObject, telephony_credential
    end

    should "delete telephony credential" do
      telephony_credential = TelephonyCredential.retrieve("id")
      id = telephony_credential.id.gsub(/\s+/, "+").freeze
      telephony_credential.delete
      assert_requested :delete, "#{Telnyx.api_base}/v2/telephony_credentials/#{id}"
    end

    should "update telephony credential" do
      telephony_credential = TelephonyCredential.retrieve("id")
      id = telephony_credential.id.gsub(/\s+/, "+").freeze
      telephony_credential.expires_at = "2021-07-27T17:58:54Z"
      telephony_credential.save
      assert_requested :patch, "#{Telnyx.api_base}/v2/telephony_credentials/#{id}"
    end

    context "actions" do
      should "perform action activate" do
        omit "ID req mismatch"
        telephony_credential = TelephonyCredential.retrieve("id")
        id = telephony_credential.id.gsub(/\s+/, "+").freeze
        telephony_credential.activate
        assert_requested :post, "#{Telnyx.api_base}/v2/telephony_credentials/#{id}/actions/activate"
      end

      should "deactivate" do
        omit "ID req mismatch"
        telephony_credential = TelephonyCredential.retrieve("id")
        id = telephony_credential.id.gsub(/\s+/, "+").freeze
        telephony_credential.deactivate
        assert_requested :post, "#{Telnyx.api_base}/v2/telephony_credentials/#{id}/actions/deactivate"
      end
      should "tags" do
        TelephonyCredential.tags
        assert_requested :get, "#{Telnyx.api_base}/v2/telephony_credentials/tags"
      end
    end

    CREDENTIAL = {
      record_type: "credential",
      id: "c90a3e6d-8c8c-4c5a-a8b1-6b8d0f2f8a31",
      user_id: "191d61ea-1cb5-445a-8dd1-384f45e7cb7a",
      sip_username: "gencred1234",
      sip_password: "secret",
      expires_at: "2027-01-01T00:00:00Z",
    }.freeze
    MATERIAL = {
      kid: "v1",
      tel_token: "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
      signing_secret: Base64.urlsafe_encode64("k" * 32, padding: false),
    }.freeze
    URL = "#{PROXY_BASE_URL}/v2/telephony_credentials/#{CREDENTIAL[:id]}".freeze

    context "local token minting" do
      should "mint from the create response without another request" do
        stub_request(:post, "#{PROXY_BASE_URL}/v2/telephony_credentials")
          .to_return(body: JSON.generate(data: CREDENTIAL.merge(token_material: MATERIAL)))

        credential = TelephonyCredential.create(connection_id: "1234567890")
        jwt = credential.to_jwt(ttl: 600)

        claims = AccessToken.decode(jwt, signing_secret: MATERIAL[:signing_secret])
        assert_equal CREDENTIAL[:id], claims["sub"]
        assert_equal CREDENTIAL[:sip_username], claims["identity"]
        assert_equal MATERIAL[:tel_token], claims["tel_token"]
        assert_equal claims["iat"] + 600, claims["exp"]
        assert_not_requested :get, "#{URL}/token_material"
      end

      should "fetch token_material once for a retrieved credential" do
        stub_request(:get, URL).to_return(body: JSON.generate(data: CREDENTIAL))
        stub_request(:get, "#{URL}/token_material").to_return(body: JSON.generate(data: MATERIAL))

        credential = TelephonyCredential.retrieve(CREDENTIAL[:id])
        first = credential.to_jwt(ttl: 60)
        second = credential.to_jwt(ttl: 60)

        assert_requested :get, "#{URL}/token_material", times: 1
        assert_equal MATERIAL[:kid], credential.fetch_token_material[:kid]
        %w[sub user_id identity tel_token].each do |claim|
          assert_equal AccessToken.decode(first, signing_secret: MATERIAL[:signing_secret])[claim],
                       AccessToken.decode(second, signing_secret: MATERIAL[:signing_secret])[claim]
        end
      end

      should "mint from material the caller stored, with no request at all" do
        stub_request(:get, URL).to_return(body: JSON.generate(data: CREDENTIAL))
        credential = TelephonyCredential.retrieve(CREDENTIAL[:id])

        jwt = credential.to_jwt(token_material: MATERIAL.transform_keys(&:to_s))

        assert_not_requested :get, "#{URL}/token_material"
        assert_equal CREDENTIAL[:user_id], AccessToken.decode(jwt, signing_secret: MATERIAL[:signing_secret])["user_id"]
      end
    end

    # Issue with response(RESPONSE SCHEMA: text/plain)
    # should "create telephony credential token" do
    #   telephony_credential = TelephonyCredential.retrieve("id")
    #   id = telephony_credential.id.gsub(/\s+/, "+").freeze
    #   telephony_credential.token
    #   assert_requested :post, "#{Telnyx.api_base}/v2/telephony_credentials/#{id}/token"
    # end
  end
end
