# typed: strong

module Telnyx
  module Models
    class VerifyProfile < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Telnyx::VerifyProfile, Telnyx::Internal::AnyHash) }

      sig { returns(T.nilable(String)) }
      attr_reader :id

      sig { params(id: String).void }
      attr_writer :id

      sig { returns(T.nilable(Telnyx::VerifyProfile::Call)) }
      attr_reader :call

      sig { params(call: Telnyx::VerifyProfile::Call::OrHash).void }
      attr_writer :call

      sig { returns(T.nilable(String)) }
      attr_reader :created_at

      sig { params(created_at: String).void }
      attr_writer :created_at

      sig { returns(T.nilable(Telnyx::VerifyProfile::Flashcall)) }
      attr_reader :flashcall

      sig { params(flashcall: Telnyx::VerifyProfile::Flashcall::OrHash).void }
      attr_writer :flashcall

      sig { returns(T.nilable(String)) }
      attr_reader :language

      sig { params(language: String).void }
      attr_writer :language

      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      # The possible verification profile record types.
      sig do
        returns(T.nilable(Telnyx::VerifyProfile::RecordType::TaggedSymbol))
      end
      attr_reader :record_type

      sig do
        params(record_type: Telnyx::VerifyProfile::RecordType::OrSymbol).void
      end
      attr_writer :record_type

      sig { returns(T.nilable(Telnyx::VerifyProfile::SMS)) }
      attr_reader :sms

      sig { params(sms: Telnyx::VerifyProfile::SMS::OrHash).void }
      attr_writer :sms

      sig { returns(T.nilable(String)) }
      attr_reader :updated_at

      sig { params(updated_at: String).void }
      attr_writer :updated_at

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
          id: String,
          call: Telnyx::VerifyProfile::Call::OrHash,
          created_at: String,
          flashcall: Telnyx::VerifyProfile::Flashcall::OrHash,
          language: String,
          name: String,
          record_type: Telnyx::VerifyProfile::RecordType::OrSymbol,
          sms: Telnyx::VerifyProfile::SMS::OrHash,
          updated_at: String,
          webhook_failover_url: String,
          webhook_url: String
        ).returns(T.attached_class)
      end
      def self.new(
        id: nil,
        call: nil,
        created_at: nil,
        flashcall: nil,
        language: nil,
        name: nil,
        # The possible verification profile record types.
        record_type: nil,
        sms: nil,
        updated_at: nil,
        webhook_failover_url: nil,
        webhook_url: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            call: Telnyx::VerifyProfile::Call,
            created_at: String,
            flashcall: Telnyx::VerifyProfile::Flashcall,
            language: String,
            name: String,
            record_type: Telnyx::VerifyProfile::RecordType::TaggedSymbol,
            sms: Telnyx::VerifyProfile::SMS,
            updated_at: String,
            webhook_failover_url: String,
            webhook_url: String
          }
        )
      end
      def to_hash
      end

      class Call < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::VerifyProfile::Call, Telnyx::Internal::AnyHash)
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
            T.any(Telnyx::VerifyProfile::Flashcall, Telnyx::Internal::AnyHash)
          end

        # For every request that is initiated via this Verify profile, this sets the
        # number of seconds before a verification request code expires. Once the
        # verification request expires, the user cannot use the code to verify their
        # identity.
        sig { returns(T.nilable(Integer)) }
        attr_reader :default_verification_timeout_secs

        sig { params(default_verification_timeout_secs: Integer).void }
        attr_writer :default_verification_timeout_secs

        sig do
          params(default_verification_timeout_secs: Integer).returns(
            T.attached_class
          )
        end
        def self.new(
          # For every request that is initiated via this Verify profile, this sets the
          # number of seconds before a verification request code expires. Once the
          # verification request expires, the user cannot use the code to verify their
          # identity.
          default_verification_timeout_secs: nil
        )
        end

        sig { override.returns({ default_verification_timeout_secs: Integer }) }
        def to_hash
        end
      end

      # The possible verification profile record types.
      module RecordType
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::VerifyProfile::RecordType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        VERIFICATION_PROFILE =
          T.let(
            :verification_profile,
            Telnyx::VerifyProfile::RecordType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::VerifyProfile::RecordType::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      class SMS < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::VerifyProfile::SMS, Telnyx::Internal::AnyHash)
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
