# frozen_string_literal: true

require ::File.expand_path("../../test_helper", __FILE__)

module Telnyx
  class WebhookTest < Test::Unit::TestCase
    EVENT_PAYLOAD = <<-PAYLOAD.freeze
      {
        "data": {
          "record_type": "event",
          "id": "0ccc7b54-4df3-4bca-a65a-3da1ecc777f0",
          "event_type": "port_request.ported",
          "created_at": "2018-02-02T22:25:27.521992Z",
          "payload": {
            "id": "5ccc7b54-4df3-4bca-a65a-3da1ecc777f0"
          }
        }
      }
    PAYLOAD

    # rubocop:disable Metrics/LineLength
    PUBLIC_KEY = "-----BEGIN PUBLIC KEY-----\nMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAwy/jPkkgBo7oQermYujj\nAmSqN+aHNg+D4K85lKn6T3khJ8O2t/FrgN5qSGqg+0U5hoIHZflEon28lbLdf6gZ\njPeKQ2a24w5zroR6e4MM00RyJWA6MWXdo6Tn6xqKMYuT8LffEJGnXCH4yTIkxAVD\nyK0dfewhtrlpmW5ojXcDCrZ3Oo1o588PLNwSIuQwU7wHZwOLglWxFt6LZ9Ps8zYf\nQNH/pXNczf1E4rGZ1QxrzqFbndvjCE5VDRhULhycT/X0H2EMvNgHsDQk4OhENnzo\nCal3vO5+P9MgC7NSZCR8Ubebq0tanL5dj5GGYyjWmeq3QhfDLX2mTpIv/B0e8+hg\n8QIDAQAB\n-----END PUBLIC KEY-----\n".freeze

    PRIVATE_KEY = "-----BEGIN RSA PRIVATE KEY-----\nMIIEpAIBAAKCAQEAwy/jPkkgBo7oQermYujjAmSqN+aHNg+D4K85lKn6T3khJ8O2\nt/FrgN5qSGqg+0U5hoIHZflEon28lbLdf6gZjPeKQ2a24w5zroR6e4MM00RyJWA6\nMWXdo6Tn6xqKMYuT8LffEJGnXCH4yTIkxAVDyK0dfewhtrlpmW5ojXcDCrZ3Oo1o\n588PLNwSIuQwU7wHZwOLglWxFt6LZ9Ps8zYfQNH/pXNczf1E4rGZ1QxrzqFbndvj\nCE5VDRhULhycT/X0H2EMvNgHsDQk4OhENnzoCal3vO5+P9MgC7NSZCR8Ubebq0ta\nnL5dj5GGYyjWmeq3QhfDLX2mTpIv/B0e8+hg8QIDAQABAoIBAQCNwoP6wsVdvgD1\njxNQlu/41v/Bpc5h9xbC4sChNmqzubfY144nPlHjwKXUfoz4sag8Bsg0ybuNgGCt\nIME6a+5SsZ5boYgGlIJ0J4eFmQKBll6IwsDBC8jTh3thB1+C6GrEE+cQc5jnk0zL\nY33MWD6IyyJ2SD+cJEGLy+JnjB5LckGCQXWPQXwvpIKgGmFoLQzHCKfeKHZ3olB8\nC1+YKrQzLtyuuH9obDWxRSrqI5gOI/76PWmo+weNa4OrfFtBf5O9bo5OD17ilIT/\nuNpxb/7rOkpwU9x6D00/D/S7ecCdVoL2yBB5L635TNQKXxhvdSmBg1ceLlztwsUL\nOHIlglTZAoGBAOY3wyincm8iAUxLE+Z3AeTD94pjND4g2JXFF9E7UDxgRD6E3n38\nubNRdAMkxDmDYgyIOZsebykMadQ2vNiWqTjOBr6hxyQMFutHWrIJOU+peFCepn8u\nNX3Xg44l7KcwwqX5svoqgFl1FKwNpBOSo50oGX4lAgqtjYqEeMInfjZ7AoGBANkL\nz0wBNAr9oXsc0BN2WkQXB34RU/WcrymhxHfc+ZRzRShk9LOdBTuMYnj4rtjdG849\nJDDWlMk7UlzGjI07G5aT+n8Aq69BhV0IARC9PafTncE6G3sHswAQudHiurLflP9C\noj6kTakunrq8Kgj3Q1p6Ie+Hv7E01A3D0Difr4CDAoGAXORrLuBB4G3MMEirAvdK\nIFCidYiJ7/e47NXWQmq4eWQupTtfu15aX+yh7xLKypok2gGtnNWu7NVBbouXr507\nMtyPBCSrAfSO2uizw9rM8UPkdENP00mF8/0d7CGJV/zozafve9niaDZB3Rqz9eHZ\nevRPNQMhy8Uzs4y4XT8qQjkCgYBNuLjmkpe8R86Hc23fSkZQk56POk1CanUfB1p/\nQZXt3skpCd3GY7f39vFcOFEEP0kxtRs8kdp9pMx9hGvYNw5OAXd1+xt/iorjIXag\nM+PcMR8QjmpAyCUFJPglfHc2jnGgZpAKtnNI3fThEXhL9Z8cyxdT2tx97FjzBOeP\nHz+NWQKBgQCU0bSxTp2rbOCxHosQ/GDDTY0JkQ2z5q1SkibSiEnyAZ3yCHpXZRD7\nsa5BWs4qlasSKmxdmT9xgRDAL6CJH6kJizF3UIaIPOvPjIroOa7Mk1OFNbOi6Cao\n0LcWp5w1I2r5g7sOIRM/AcS3yVT5RJO4KB8WyDOvxCfP8cFsTacZmQ==\n-----END RSA PRIVATE KEY-----\n".freeze
    # rubocop:enable Metrics/LineLength

    def generate_signature(opts = {})
      opts[:timestamp] ||= Time.now.to_i
      opts[:payload] ||= EVENT_PAYLOAD
      opts[:private_key] ||= PRIVATE_KEY

      private_key = OpenSSL::PKey::RSA.new(opts[:private_key])
      signature = private_key.sign(OpenSSL::Digest::SHA256.new, "#{opts[:timestamp]}|#{opts[:payload]}")
      Base64.encode64(signature)
    end

    def setup
      super
      ENV["TELNYX_PUBLIC_KEY"] = PUBLIC_KEY
    end

    context ".construct_event" do
      should "return an Event instance from a valid JSON payload and valid signature header" do
        timestamp = Time.now.to_i
        signature = generate_signature(timestamp: timestamp)
        event = Telnyx::Webhook.construct_event(EVENT_PAYLOAD, signature, timestamp)
        assert event.is_a?(Telnyx::Event)
      end

      should "raise a JSON::ParserError from an invalid JSON payload" do
        assert_raises JSON::ParserError do
          payload = "this is not valid JSON"
          timestamp = Time.now.to_i
          signature = generate_signature(payload: payload, timestamp: timestamp)
          Telnyx::Webhook.construct_event(payload, signature, timestamp)
        end
      end

      should "raise a SignatureVerificationError from a valid JSON payload and an invalid signature header" do
        signature = "bad_signature"
        timestamp = Time.now.to_i
        assert_raises Telnyx::SignatureVerificationError do
          Telnyx::Webhook.construct_event(EVENT_PAYLOAD, signature, timestamp)
        end
      end
    end

    context ".verify" do
      should "raise a SignatureVerificationError when the signature does not have the expected format" do
        signature = "FAKEFAKEFAKE"
        e = assert_raises(Telnyx::SignatureVerificationError) do
          Telnyx::Webhook::Signature.verify(EVENT_PAYLOAD, signature, Time.now.to_i)
        end
        assert_match("Signature is invalid and does not match the payload", e.message)
      end

      should "raise a SignatureVerificationError when there are no valid signatures for the payload" do
        timestamp = Time.now.to_i
        signature = generate_signature(payload: "foo", timestamp: timestamp)
        e = assert_raises(Telnyx::SignatureVerificationError) do
          Telnyx::Webhook::Signature.verify(EVENT_PAYLOAD, signature, timestamp)
        end
        assert_match("Signature is invalid and does not match the payload", e.message)
      end

      should "raise a SignatureVerificationError when the timestamp is not within the tolerance" do
        timestamp = Time.now.to_i - 15
        signature = generate_signature(timestamp: Time.now.to_i - 15)
        e = assert_raises(Telnyx::SignatureVerificationError) do
          Telnyx::Webhook::Signature.verify(EVENT_PAYLOAD, signature, timestamp, tolerance: 10)
        end
        assert_match("Timestamp outside the tolerance zone", e.message)
      end

      should "return true when the signature is valid and the timestamp is within the tolerance" do
        timestamp = Time.now.to_i
        signature = generate_signature
        assert(Telnyx::Webhook::Signature.verify(EVENT_PAYLOAD, signature, timestamp, tolerance: 10))
      end

      should "return true when the signature is valid and the timestamp is off but no tolerance is provided" do
        timestamp = 12_345
        signature = generate_signature(timestamp: timestamp)
        assert(Telnyx::Webhook::Signature.verify(EVENT_PAYLOAD, signature, timestamp))
      end
    end
  end
end
