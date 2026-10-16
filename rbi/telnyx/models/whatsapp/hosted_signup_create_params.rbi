# typed: strong

module Telnyx
  module Models
    module Whatsapp
      class HostedSignupCreateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Whatsapp::HostedSignupCreateParams,
              Telnyx::Internal::AnyHash
            )
          end

        # Meta App ID linked to the Telnyx account. The app must be enabled.
        sig { returns(String) }
        attr_accessor :app_id

        # When the onboarding URL expires, in RFC 3339 format. Must be in the future and
        # at most 3 days ahead. Defaults to 24 hours after creation.
        sig { returns(T.nilable(Time)) }
        attr_reader :expires_at

        sig { params(expires_at: Time).void }
        attr_writer :expires_at

        # Onboarding flow the hosted page launches. Use `coexistence` for a number that
        # remains active in the WhatsApp Business app.
        sig do
          returns(
            T.nilable(
              Telnyx::Whatsapp::HostedSignupCreateParams::SignupType::OrSymbol
            )
          )
        end
        attr_reader :signup_type

        sig do
          params(
            signup_type:
              Telnyx::Whatsapp::HostedSignupCreateParams::SignupType::OrSymbol
          ).void
        end
        attr_writer :signup_type

        sig do
          params(
            app_id: String,
            expires_at: Time,
            signup_type:
              Telnyx::Whatsapp::HostedSignupCreateParams::SignupType::OrSymbol,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Meta App ID linked to the Telnyx account. The app must be enabled.
          app_id:,
          # When the onboarding URL expires, in RFC 3339 format. Must be in the future and
          # at most 3 days ahead. Defaults to 24 hours after creation.
          expires_at: nil,
          # Onboarding flow the hosted page launches. Use `coexistence` for a number that
          # remains active in the WhatsApp Business app.
          signup_type: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              app_id: String,
              expires_at: Time,
              signup_type:
                Telnyx::Whatsapp::HostedSignupCreateParams::SignupType::OrSymbol,
              request_options: Telnyx::RequestOptions
            }
          )
        end
        def to_hash
        end

        # Onboarding flow the hosted page launches. Use `coexistence` for a number that
        # remains active in the WhatsApp Business app.
        module SignupType
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Whatsapp::HostedSignupCreateParams::SignupType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          STANDARD =
            T.let(
              :standard,
              Telnyx::Whatsapp::HostedSignupCreateParams::SignupType::TaggedSymbol
            )
          COEXISTENCE =
            T.let(
              :coexistence,
              Telnyx::Whatsapp::HostedSignupCreateParams::SignupType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Whatsapp::HostedSignupCreateParams::SignupType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
