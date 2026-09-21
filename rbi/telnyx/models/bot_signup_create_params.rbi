# typed: strong

module Telnyx
  module Models
    class BotSignupCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::BotSignupCreateParams, Telnyx::Internal::AnyHash)
        end

      # Answer to the issued bot challenge.
      sig { returns(String) }
      attr_accessor :bot_challenge_answer

      # Nonce from a previously issued bot challenge.
      sig { returns(String) }
      attr_accessor :bot_challenge_nonce

      # Must exactly match the privacy-policy URL returned by the challenge endpoint.
      sig { returns(String) }
      attr_accessor :privacy_policy_url

      # Must exactly match the terms-and-conditions URL returned by the challenge
      # endpoint.
      sig { returns(String) }
      attr_accessor :terms_and_conditions_url

      # Must be true to accept the terms of service.
      sig { returns(Telnyx::BotSignupCreateParams::TermsOfService::OrBoolean) }
      attr_accessor :terms_of_service

      # Email address for the new account. The magic link is sent here. May only be
      # omitted when placeholder-email registration is enabled server-side.
      sig { returns(T.nilable(String)) }
      attr_reader :email

      sig { params(email: String).void }
      attr_writer :email

      # EU terms-and-conditions URL. Required when EU consent enforcement is enabled.
      sig { returns(T.nilable(String)) }
      attr_reader :terms_and_conditions_eu_url

      sig { params(terms_and_conditions_eu_url: String).void }
      attr_writer :terms_and_conditions_eu_url

      # EU terms-of-service acceptance. Required when EU consent enforcement is enabled.
      sig do
        returns(
          T.nilable(Telnyx::BotSignupCreateParams::TermsOfServiceEu::OrBoolean)
        )
      end
      attr_reader :terms_of_service_eu

      sig do
        params(
          terms_of_service_eu:
            Telnyx::BotSignupCreateParams::TermsOfServiceEu::OrBoolean
        ).void
      end
      attr_writer :terms_of_service_eu

      sig do
        params(
          bot_challenge_answer: String,
          bot_challenge_nonce: String,
          privacy_policy_url: String,
          terms_and_conditions_url: String,
          terms_of_service:
            Telnyx::BotSignupCreateParams::TermsOfService::OrBoolean,
          email: String,
          terms_and_conditions_eu_url: String,
          terms_of_service_eu:
            Telnyx::BotSignupCreateParams::TermsOfServiceEu::OrBoolean,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Answer to the issued bot challenge.
        bot_challenge_answer:,
        # Nonce from a previously issued bot challenge.
        bot_challenge_nonce:,
        # Must exactly match the privacy-policy URL returned by the challenge endpoint.
        privacy_policy_url:,
        # Must exactly match the terms-and-conditions URL returned by the challenge
        # endpoint.
        terms_and_conditions_url:,
        # Must be true to accept the terms of service.
        terms_of_service:,
        # Email address for the new account. The magic link is sent here. May only be
        # omitted when placeholder-email registration is enabled server-side.
        email: nil,
        # EU terms-and-conditions URL. Required when EU consent enforcement is enabled.
        terms_and_conditions_eu_url: nil,
        # EU terms-of-service acceptance. Required when EU consent enforcement is enabled.
        terms_of_service_eu: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            bot_challenge_answer: String,
            bot_challenge_nonce: String,
            privacy_policy_url: String,
            terms_and_conditions_url: String,
            terms_of_service:
              Telnyx::BotSignupCreateParams::TermsOfService::OrBoolean,
            email: String,
            terms_and_conditions_eu_url: String,
            terms_of_service_eu:
              Telnyx::BotSignupCreateParams::TermsOfServiceEu::OrBoolean,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Must be true to accept the terms of service.
      module TermsOfService
        extend Telnyx::Internal::Type::Enum

        TaggedBoolean =
          T.type_alias do
            T.all(T::Boolean, Telnyx::BotSignupCreateParams::TermsOfService)
          end
        OrBoolean = T.type_alias { T::Boolean }

        TRUE =
          T.let(
            true,
            Telnyx::BotSignupCreateParams::TermsOfService::TaggedBoolean
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::BotSignupCreateParams::TermsOfService::TaggedBoolean
            ]
          )
        end
        def self.values
        end
      end

      # EU terms-of-service acceptance. Required when EU consent enforcement is enabled.
      module TermsOfServiceEu
        extend Telnyx::Internal::Type::Enum

        TaggedBoolean =
          T.type_alias do
            T.all(T::Boolean, Telnyx::BotSignupCreateParams::TermsOfServiceEu)
          end
        OrBoolean = T.type_alias { T::Boolean }

        TRUE =
          T.let(
            true,
            Telnyx::BotSignupCreateParams::TermsOfServiceEu::TaggedBoolean
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::BotSignupCreateParams::TermsOfServiceEu::TaggedBoolean
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
