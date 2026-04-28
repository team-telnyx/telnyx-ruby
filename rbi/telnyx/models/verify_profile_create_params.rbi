# typed: strong

module Telnyx
  module Models
    class VerifyProfileCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::VerifyProfileCreateParams, Telnyx::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :name

      sig { returns(T.nilable(Telnyx::VerifyProfileCreateParams::Call)) }
      attr_reader :call

      sig { params(call: Telnyx::VerifyProfileCreateParams::Call::OrHash).void }
      attr_writer :call

      # The maximum daily spend allowed on this verify profile, in USD.
      sig { returns(T.nilable(Float)) }
      attr_reader :daily_spend_limit

      sig { params(daily_spend_limit: Float).void }
      attr_writer :daily_spend_limit

      # Whether the daily spend limit is enforced for this verify profile.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :daily_spend_limit_enabled

      sig { params(daily_spend_limit_enabled: T::Boolean).void }
      attr_writer :daily_spend_limit_enabled

      sig { returns(T.nilable(Telnyx::VerifyProfileCreateParams::Flashcall)) }
      attr_reader :flashcall

      sig do
        params(
          flashcall: Telnyx::VerifyProfileCreateParams::Flashcall::OrHash
        ).void
      end
      attr_writer :flashcall

      sig { returns(T.nilable(String)) }
      attr_reader :language

      sig { params(language: String).void }
      attr_writer :language

      sig { returns(T.nilable(Telnyx::VerifyProfileCreateParams::SMS)) }
      attr_reader :sms

      sig { params(sms: Telnyx::VerifyProfileCreateParams::SMS::OrHash).void }
      attr_writer :sms

      sig { returns(T.nilable(String)) }
      attr_reader :webhook_failover_url

      sig { params(webhook_failover_url: String).void }
      attr_writer :webhook_failover_url

      sig { returns(T.nilable(String)) }
      attr_reader :webhook_url

      sig { params(webhook_url: String).void }
      attr_writer :webhook_url

      sig { returns(T.nilable(Telnyx::VerifyProfileCreateParams::Whatsapp)) }
      attr_reader :whatsapp

      sig do
        params(
          whatsapp: Telnyx::VerifyProfileCreateParams::Whatsapp::OrHash
        ).void
      end
      attr_writer :whatsapp

      sig do
        params(
          name: String,
          call: Telnyx::VerifyProfileCreateParams::Call::OrHash,
          daily_spend_limit: Float,
          daily_spend_limit_enabled: T::Boolean,
          flashcall: Telnyx::VerifyProfileCreateParams::Flashcall::OrHash,
          language: String,
          sms: Telnyx::VerifyProfileCreateParams::SMS::OrHash,
          webhook_failover_url: String,
          webhook_url: String,
          whatsapp: Telnyx::VerifyProfileCreateParams::Whatsapp::OrHash,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        name:,
        call: nil,
        # The maximum daily spend allowed on this verify profile, in USD.
        daily_spend_limit: nil,
        # Whether the daily spend limit is enforced for this verify profile.
        daily_spend_limit_enabled: nil,
        flashcall: nil,
        language: nil,
        sms: nil,
        webhook_failover_url: nil,
        webhook_url: nil,
        whatsapp: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            name: String,
            call: Telnyx::VerifyProfileCreateParams::Call,
            daily_spend_limit: Float,
            daily_spend_limit_enabled: T::Boolean,
            flashcall: Telnyx::VerifyProfileCreateParams::Flashcall,
            language: String,
            sms: Telnyx::VerifyProfileCreateParams::SMS,
            webhook_failover_url: String,
            webhook_url: String,
            whatsapp: Telnyx::VerifyProfileCreateParams::Whatsapp,
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
              Telnyx::VerifyProfileCreateParams::Call,
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
        # destinations will be allowed. **Conditionally required:** this field must be
        # provided when your organization is configured to require explicit whitelisted
        # destinations; otherwise it is optional.
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
          # destinations will be allowed. **Conditionally required:** this field must be
          # provided when your organization is configured to require explicit whitelisted
          # destinations; otherwise it is optional.
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
              Telnyx::VerifyProfileCreateParams::Flashcall,
              Telnyx::Internal::AnyHash
            )
          end

        # The name that identifies the application requesting 2fa in the verification
        # message.
        sig { returns(T.nilable(String)) }
        attr_reader :app_name

        sig { params(app_name: String).void }
        attr_writer :app_name

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
        # destinations will be allowed. **Conditionally required:** this field must be
        # provided when your organization is configured to require explicit whitelisted
        # destinations; otherwise it is optional.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :whitelisted_destinations

        sig { params(whitelisted_destinations: T::Array[String]).void }
        attr_writer :whitelisted_destinations

        sig do
          params(
            app_name: String,
            default_verification_timeout_secs: Integer,
            whitelisted_destinations: T::Array[String]
          ).returns(T.attached_class)
        end
        def self.new(
          # The name that identifies the application requesting 2fa in the verification
          # message.
          app_name: nil,
          # For every request that is initiated via this Verify profile, this sets the
          # number of seconds before a verification request code expires. Once the
          # verification request expires, the user cannot use the code to verify their
          # identity.
          default_verification_timeout_secs: nil,
          # Enabled country destinations to send verification codes. The elements in the
          # list must be valid ISO 3166-1 alpha-2 country codes. If set to `["*"]`, all
          # destinations will be allowed. **Conditionally required:** this field must be
          # provided when your organization is configured to require explicit whitelisted
          # destinations; otherwise it is optional.
          whitelisted_destinations: nil
        )
        end

        sig do
          override.returns(
            {
              app_name: String,
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
              Telnyx::VerifyProfileCreateParams::SMS,
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
        # destinations will be allowed. **Conditionally required:** this field must be
        # provided when your organization is configured to require explicit whitelisted
        # destinations; otherwise it is optional.
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
          # destinations will be allowed. **Conditionally required:** this field must be
          # provided when your organization is configured to require explicit whitelisted
          # destinations; otherwise it is optional.
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

      class Whatsapp < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::VerifyProfileCreateParams::Whatsapp,
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

        # Phone number registered on the customer WABA to send OTPs from
        sig { returns(T.nilable(String)) }
        attr_accessor :sender_phone_number

        # Customer pre-approved authentication template name registered on Meta
        sig { returns(T.nilable(String)) }
        attr_accessor :template_id

        # Customer Meta WABA ID for Bring-Your-Own-WABA sending
        sig { returns(T.nilable(String)) }
        attr_accessor :waba_id

        # Enabled country destinations to send verification codes. The elements in the
        # list must be valid ISO 3166-1 alpha-2 country codes. If set to `["*"]`, all
        # destinations will be allowed. **Conditionally required:** this field must be
        # provided when your organization is configured to require explicit whitelisted
        # destinations; otherwise it is optional.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :whitelisted_destinations

        sig { params(whitelisted_destinations: T::Array[String]).void }
        attr_writer :whitelisted_destinations

        sig do
          params(
            default_verification_timeout_secs: Integer,
            sender_phone_number: T.nilable(String),
            template_id: T.nilable(String),
            waba_id: T.nilable(String),
            whitelisted_destinations: T::Array[String]
          ).returns(T.attached_class)
        end
        def self.new(
          # For every request that is initiated via this Verify profile, this sets the
          # number of seconds before a verification request code expires. Once the
          # verification request expires, the user cannot use the code to verify their
          # identity.
          default_verification_timeout_secs: nil,
          # Phone number registered on the customer WABA to send OTPs from
          sender_phone_number: nil,
          # Customer pre-approved authentication template name registered on Meta
          template_id: nil,
          # Customer Meta WABA ID for Bring-Your-Own-WABA sending
          waba_id: nil,
          # Enabled country destinations to send verification codes. The elements in the
          # list must be valid ISO 3166-1 alpha-2 country codes. If set to `["*"]`, all
          # destinations will be allowed. **Conditionally required:** this field must be
          # provided when your organization is configured to require explicit whitelisted
          # destinations; otherwise it is optional.
          whitelisted_destinations: nil
        )
        end

        sig do
          override.returns(
            {
              default_verification_timeout_secs: Integer,
              sender_phone_number: T.nilable(String),
              template_id: T.nilable(String),
              waba_id: T.nilable(String),
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
