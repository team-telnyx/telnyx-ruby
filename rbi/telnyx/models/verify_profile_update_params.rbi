# typed: strong

module Telnyx
  module Models
    class VerifyProfileUpdateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::VerifyProfileUpdateParams, Telnyx::Internal::AnyHash)
        end

      sig { returns(T.nilable(Telnyx::VerifyProfileUpdateParams::Call)) }
      attr_reader :call

      sig { params(call: Telnyx::VerifyProfileUpdateParams::Call::OrHash).void }
      attr_writer :call

      sig { returns(T.nilable(Telnyx::VerifyProfileUpdateParams::Flashcall)) }
      attr_reader :flashcall

      sig do
        params(
          flashcall: Telnyx::VerifyProfileUpdateParams::Flashcall::OrHash
        ).void
      end
      attr_writer :flashcall

      sig { returns(T.nilable(String)) }
      attr_reader :language

      sig { params(language: String).void }
      attr_writer :language

      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      sig { returns(T.nilable(Telnyx::VerifyProfileUpdateParams::SMS)) }
      attr_reader :sms

      sig { params(sms: Telnyx::VerifyProfileUpdateParams::SMS::OrHash).void }
      attr_writer :sms

      sig { returns(T.nilable(String)) }
      attr_reader :webhook_failover_url

      sig { params(webhook_failover_url: String).void }
      attr_writer :webhook_failover_url

      sig { returns(T.nilable(String)) }
      attr_reader :webhook_url

      sig { params(webhook_url: String).void }
      attr_writer :webhook_url

      sig do
        params(
          call: Telnyx::VerifyProfileUpdateParams::Call::OrHash,
          flashcall: Telnyx::VerifyProfileUpdateParams::Flashcall::OrHash,
          language: String,
          name: String,
          sms: Telnyx::VerifyProfileUpdateParams::SMS::OrHash,
          webhook_failover_url: String,
          webhook_url: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        call: nil,
        flashcall: nil,
        language: nil,
        name: nil,
        sms: nil,
        webhook_failover_url: nil,
        webhook_url: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            call: Telnyx::VerifyProfileUpdateParams::Call,
            flashcall: Telnyx::VerifyProfileUpdateParams::Flashcall,
            language: String,
            name: String,
            sms: Telnyx::VerifyProfileUpdateParams::SMS,
            webhook_failover_url: String,
            webhook_url: String,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Call < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::VerifyProfileUpdateParams::Call,
              Telnyx::Internal::AnyHash
            )
          end

        # The name that identifies the application requesting 2fa in the verification
        # message.
        sig { returns(T.nilable(String)) }
        attr_reader :app_name

        sig { params(app_name: String).void }
        attr_writer :app_name

        # The length of the verify code to generate.
        sig { returns(T.nilable(Integer)) }
        attr_reader :code_length

        sig { params(code_length: Integer).void }
        attr_writer :code_length

        # For every request that is initiated via this Verify profile, this sets the
        # number of seconds before a verification request code expires. Once the
        # verification request expires, the user cannot use the code to verify their
        # identity.
        sig { returns(T.nilable(Integer)) }
        attr_reader :default_verification_timeout_secs

        sig { params(default_verification_timeout_secs: Integer).void }
        attr_writer :default_verification_timeout_secs

        # The message template identifier selected from /verify_profiles/templates
        sig { returns(T.nilable(String)) }
        attr_reader :messaging_template_id

        sig { params(messaging_template_id: String).void }
        attr_writer :messaging_template_id

        # Enabled country destinations to send verification codes. The elements in the
        # list must be valid ISO 3166-1 alpha-2 country codes. If set to `["*"]`, all
        # destinations will be allowed.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :whitelisted_destinations

        sig { params(whitelisted_destinations: T::Array[String]).void }
        attr_writer :whitelisted_destinations

        sig do
          params(
            app_name: String,
            code_length: Integer,
            default_verification_timeout_secs: Integer,
            messaging_template_id: String,
            whitelisted_destinations: T::Array[String]
          ).returns(T.attached_class)
        end
        def self.new(
          # The name that identifies the application requesting 2fa in the verification
          # message.
          app_name: nil,
          # The length of the verify code to generate.
          code_length: nil,
          # For every request that is initiated via this Verify profile, this sets the
          # number of seconds before a verification request code expires. Once the
          # verification request expires, the user cannot use the code to verify their
          # identity.
          default_verification_timeout_secs: nil,
          # The message template identifier selected from /verify_profiles/templates
          messaging_template_id: nil,
          # Enabled country destinations to send verification codes. The elements in the
          # list must be valid ISO 3166-1 alpha-2 country codes. If set to `["*"]`, all
          # destinations will be allowed.
          whitelisted_destinations: nil
        )
        end

        sig do
          override.returns(
            {
              app_name: String,
              code_length: Integer,
              default_verification_timeout_secs: Integer,
              messaging_template_id: String,
              whitelisted_destinations: T::Array[String]
            }
          )
        end
        def to_hash
        end
      end

      class Flashcall < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::VerifyProfileUpdateParams::Flashcall,
              Telnyx::Internal::AnyHash
            )
          end

        # For every request that is initiated via this Verify profile, this sets the
        # number of seconds before a verification request code expires. Once the
        # verification request expires, the user cannot use the code to verify their
        # identity.
        sig { returns(T.nilable(Integer)) }
        attr_reader :default_verification_timeout_secs

        sig { params(default_verification_timeout_secs: Integer).void }
        attr_writer :default_verification_timeout_secs

        # Enabled country destinations to send verification codes. The elements in the
        # list must be valid ISO 3166-1 alpha-2 country codes. If set to `["*"]`, all
        # destinations will be allowed.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :whitelisted_destinations

        sig { params(whitelisted_destinations: T::Array[String]).void }
        attr_writer :whitelisted_destinations

        sig do
          params(
            default_verification_timeout_secs: Integer,
            whitelisted_destinations: T::Array[String]
          ).returns(T.attached_class)
        end
        def self.new(
          # For every request that is initiated via this Verify profile, this sets the
          # number of seconds before a verification request code expires. Once the
          # verification request expires, the user cannot use the code to verify their
          # identity.
          default_verification_timeout_secs: nil,
          # Enabled country destinations to send verification codes. The elements in the
          # list must be valid ISO 3166-1 alpha-2 country codes. If set to `["*"]`, all
          # destinations will be allowed.
          whitelisted_destinations: nil
        )
        end

        sig do
          override.returns(
            {
              default_verification_timeout_secs: Integer,
              whitelisted_destinations: T::Array[String]
            }
          )
        end
        def to_hash
        end
      end

      class SMS < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::VerifyProfileUpdateParams::SMS,
              Telnyx::Internal::AnyHash
            )
          end

        # The alphanumeric sender ID to use when sending to destinations that require an
        # alphanumeric sender ID.
        sig { returns(T.nilable(String)) }
        attr_accessor :alpha_sender

        # The name that identifies the application requesting 2fa in the verification
        # message.
        sig { returns(T.nilable(String)) }
        attr_reader :app_name

        sig { params(app_name: String).void }
        attr_writer :app_name

        # The length of the verify code to generate.
        sig { returns(T.nilable(Integer)) }
        attr_reader :code_length

        sig { params(code_length: Integer).void }
        attr_writer :code_length

        # For every request that is initiated via this Verify profile, this sets the
        # number of seconds before a verification request code expires. Once the
        # verification request expires, the user cannot use the code to verify their
        # identity.
        sig { returns(T.nilable(Integer)) }
        attr_reader :default_verification_timeout_secs

        sig { params(default_verification_timeout_secs: Integer).void }
        attr_writer :default_verification_timeout_secs

        # The message template identifier selected from /verify_profiles/templates
        sig { returns(T.nilable(String)) }
        attr_reader :messaging_template_id

        sig { params(messaging_template_id: String).void }
        attr_writer :messaging_template_id

        # Enabled country destinations to send verification codes. The elements in the
        # list must be valid ISO 3166-1 alpha-2 country codes. If set to `["*"]`, all
        # destinations will be allowed.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :whitelisted_destinations

        sig { params(whitelisted_destinations: T::Array[String]).void }
        attr_writer :whitelisted_destinations

        sig do
          params(
            alpha_sender: T.nilable(String),
            app_name: String,
            code_length: Integer,
            default_verification_timeout_secs: Integer,
            messaging_template_id: String,
            whitelisted_destinations: T::Array[String]
          ).returns(T.attached_class)
        end
        def self.new(
          # The alphanumeric sender ID to use when sending to destinations that require an
          # alphanumeric sender ID.
          alpha_sender: nil,
          # The name that identifies the application requesting 2fa in the verification
          # message.
          app_name: nil,
          # The length of the verify code to generate.
          code_length: nil,
          # For every request that is initiated via this Verify profile, this sets the
          # number of seconds before a verification request code expires. Once the
          # verification request expires, the user cannot use the code to verify their
          # identity.
          default_verification_timeout_secs: nil,
          # The message template identifier selected from /verify_profiles/templates
          messaging_template_id: nil,
          # Enabled country destinations to send verification codes. The elements in the
          # list must be valid ISO 3166-1 alpha-2 country codes. If set to `["*"]`, all
          # destinations will be allowed.
          whitelisted_destinations: nil
        )
        end

        sig do
          override.returns(
            {
              alpha_sender: T.nilable(String),
              app_name: String,
              code_length: Integer,
              default_verification_timeout_secs: Integer,
              messaging_template_id: String,
              whitelisted_destinations: T::Array[String]
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
