# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::VerifyProfiles#list
    class VerifyProfile < Telnyx::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String, nil]
      optional :id, String

      # @!attribute call
      #
      #   @return [Telnyx::Models::VerifyProfile::Call, nil]
      optional :call, -> { Telnyx::VerifyProfile::Call }

      # @!attribute created_at
      #
      #   @return [String, nil]
      optional :created_at, String

      # @!attribute daily_spend_limit
      #   The maximum daily spend allowed on this verify profile, in USD.
      #
      #   @return [Float, nil]
      optional :daily_spend_limit, Float

      # @!attribute daily_spend_limit_enabled
      #   Whether the daily spend limit is enforced for this verify profile.
      #
      #   @return [Boolean, nil]
      optional :daily_spend_limit_enabled, Telnyx::Internal::Type::Boolean

      # @!attribute flashcall
      #
      #   @return [Telnyx::Models::VerifyProfile::Flashcall, nil]
      optional :flashcall, -> { Telnyx::VerifyProfile::Flashcall }

      # @!attribute language
      #
      #   @return [String, nil]
      optional :language, String

      # @!attribute name
      #
      #   @return [String, nil]
      optional :name, String

      # @!attribute record_type
      #   The possible verification profile record types.
      #
      #   @return [Symbol, Telnyx::Models::VerifyProfile::RecordType, nil]
      optional :record_type, enum: -> { Telnyx::VerifyProfile::RecordType }

      # @!attribute sms
      #
      #   @return [Telnyx::Models::VerifyProfile::SMS, nil]
      optional :sms, -> { Telnyx::VerifyProfile::SMS }

      # @!attribute updated_at
      #
      #   @return [String, nil]
      optional :updated_at, String

      # @!attribute webhook_failover_url
      #
      #   @return [String, nil]
      optional :webhook_failover_url, String

      # @!attribute webhook_url
      #
      #   @return [String, nil]
      optional :webhook_url, String

      # @!attribute whatsapp
      #
      #   @return [Telnyx::Models::VerifyProfile::Whatsapp, nil]
      optional :whatsapp, -> { Telnyx::VerifyProfile::Whatsapp }

      # @!method initialize(id: nil, call: nil, created_at: nil, daily_spend_limit: nil, daily_spend_limit_enabled: nil, flashcall: nil, language: nil, name: nil, record_type: nil, sms: nil, updated_at: nil, webhook_failover_url: nil, webhook_url: nil, whatsapp: nil)
      #   @param id [String]
      #
      #   @param call [Telnyx::Models::VerifyProfile::Call]
      #
      #   @param created_at [String]
      #
      #   @param daily_spend_limit [Float] The maximum daily spend allowed on this verify profile, in USD.
      #
      #   @param daily_spend_limit_enabled [Boolean] Whether the daily spend limit is enforced for this verify profile.
      #
      #   @param flashcall [Telnyx::Models::VerifyProfile::Flashcall]
      #
      #   @param language [String]
      #
      #   @param name [String]
      #
      #   @param record_type [Symbol, Telnyx::Models::VerifyProfile::RecordType] The possible verification profile record types.
      #
      #   @param sms [Telnyx::Models::VerifyProfile::SMS]
      #
      #   @param updated_at [String]
      #
      #   @param webhook_failover_url [String]
      #
      #   @param webhook_url [String]
      #
      #   @param whatsapp [Telnyx::Models::VerifyProfile::Whatsapp]

      # @see Telnyx::Models::VerifyProfile#call
      class Call < Telnyx::Internal::Type::BaseModel
        # @!attribute app_name
        #   The name that identifies the application requesting 2fa in the verification
        #   message.
        #
        #   @return [String, nil]
        optional :app_name, String

        # @!attribute code_length
        #   The length of the verify code to generate.
        #
        #   @return [Integer, nil]
        optional :code_length, Integer

        # @!attribute default_verification_timeout_secs
        #   For every request that is initiated via this Verify profile, this sets the
        #   number of seconds before a verification request code expires. Once the
        #   verification request expires, the user cannot use the code to verify their
        #   identity.
        #
        #   @return [Integer, nil]
        optional :default_verification_timeout_secs, Integer

        # @!attribute messaging_template_id
        #   The message template identifier selected from /verify_profiles/templates
        #
        #   @return [String, nil]
        optional :messaging_template_id, String

        # @!attribute whitelisted_destinations
        #   Enabled country destinations to send verification codes. The elements in the
        #   list must be valid ISO 3166-1 alpha-2 country codes. If set to `["*"]`, all
        #   destinations will be allowed. **Conditionally required:** this field must be
        #   provided when your organization is configured to require explicit whitelisted
        #   destinations; otherwise it is optional.
        #
        #   @return [Array<String>, nil]
        optional :whitelisted_destinations, Telnyx::Internal::Type::ArrayOf[String]

        # @!method initialize(app_name: nil, code_length: nil, default_verification_timeout_secs: nil, messaging_template_id: nil, whitelisted_destinations: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::VerifyProfile::Call} for more details.
        #
        #   @param app_name [String] The name that identifies the application requesting 2fa in the verification mess
        #
        #   @param code_length [Integer] The length of the verify code to generate.
        #
        #   @param default_verification_timeout_secs [Integer] For every request that is initiated via this Verify profile, this sets the numbe
        #
        #   @param messaging_template_id [String] The message template identifier selected from /verify_profiles/templates
        #
        #   @param whitelisted_destinations [Array<String>] Enabled country destinations to send verification codes. The elements in the lis
      end

      # @see Telnyx::Models::VerifyProfile#flashcall
      class Flashcall < Telnyx::Internal::Type::BaseModel
        # @!attribute app_name
        #   The name that identifies the application requesting 2fa in the verification
        #   message.
        #
        #   @return [String, nil]
        optional :app_name, String

        # @!attribute default_verification_timeout_secs
        #   For every request that is initiated via this Verify profile, this sets the
        #   number of seconds before a verification request code expires. Once the
        #   verification request expires, the user cannot use the code to verify their
        #   identity.
        #
        #   @return [Integer, nil]
        optional :default_verification_timeout_secs, Integer

        # @!method initialize(app_name: nil, default_verification_timeout_secs: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::VerifyProfile::Flashcall} for more details.
        #
        #   @param app_name [String] The name that identifies the application requesting 2fa in the verification mess
        #
        #   @param default_verification_timeout_secs [Integer] For every request that is initiated via this Verify profile, this sets the numbe
      end

      # The possible verification profile record types.
      #
      # @see Telnyx::Models::VerifyProfile#record_type
      module RecordType
        extend Telnyx::Internal::Type::Enum

        VERIFICATION_PROFILE = :verification_profile

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Telnyx::Models::VerifyProfile#sms
      class SMS < Telnyx::Internal::Type::BaseModel
        # @!attribute alpha_sender
        #   The alphanumeric sender ID to use when sending to destinations that require an
        #   alphanumeric sender ID.
        #
        #   @return [String, nil]
        optional :alpha_sender, String, nil?: true

        # @!attribute app_name
        #   The name that identifies the application requesting 2fa in the verification
        #   message.
        #
        #   @return [String, nil]
        optional :app_name, String

        # @!attribute code_length
        #   The length of the verify code to generate.
        #
        #   @return [Integer, nil]
        optional :code_length, Integer

        # @!attribute default_verification_timeout_secs
        #   For every request that is initiated via this Verify profile, this sets the
        #   number of seconds before a verification request code expires. Once the
        #   verification request expires, the user cannot use the code to verify their
        #   identity.
        #
        #   @return [Integer, nil]
        optional :default_verification_timeout_secs, Integer

        # @!attribute messaging_template_id
        #   The message template identifier selected from /verify_profiles/templates
        #
        #   @return [String, nil]
        optional :messaging_template_id, String

        # @!attribute whitelisted_destinations
        #   Enabled country destinations to send verification codes. The elements in the
        #   list must be valid ISO 3166-1 alpha-2 country codes. If set to `["*"]`, all
        #   destinations will be allowed. **Conditionally required:** this field must be
        #   provided when your organization is configured to require explicit whitelisted
        #   destinations; otherwise it is optional.
        #
        #   @return [Array<String>, nil]
        optional :whitelisted_destinations, Telnyx::Internal::Type::ArrayOf[String]

        # @!method initialize(alpha_sender: nil, app_name: nil, code_length: nil, default_verification_timeout_secs: nil, messaging_template_id: nil, whitelisted_destinations: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::VerifyProfile::SMS} for more details.
        #
        #   @param alpha_sender [String, nil] The alphanumeric sender ID to use when sending to destinations that require an a
        #
        #   @param app_name [String] The name that identifies the application requesting 2fa in the verification mess
        #
        #   @param code_length [Integer] The length of the verify code to generate.
        #
        #   @param default_verification_timeout_secs [Integer] For every request that is initiated via this Verify profile, this sets the numbe
        #
        #   @param messaging_template_id [String] The message template identifier selected from /verify_profiles/templates
        #
        #   @param whitelisted_destinations [Array<String>] Enabled country destinations to send verification codes. The elements in the lis
      end

      # @see Telnyx::Models::VerifyProfile#whatsapp
      class Whatsapp < Telnyx::Internal::Type::BaseModel
        # @!attribute app_name
        #   The name that identifies the application requesting 2fa in the verification
        #   message.
        #
        #   @return [String, nil]
        optional :app_name, String

        # @!attribute code_length
        #   The length of the verify code to generate.
        #
        #   @return [Integer, nil]
        optional :code_length, Integer

        # @!attribute default_verification_timeout_secs
        #   For every request that is initiated via this Verify profile, this sets the
        #   number of seconds before a verification request code expires. Once the
        #   verification request expires, the user cannot use the code to verify their
        #   identity.
        #
        #   @return [Integer, nil]
        optional :default_verification_timeout_secs, Integer

        # @!attribute messaging_template_id
        #   The message template identifier selected from /verify_profiles/templates
        #
        #   @return [String, nil]
        optional :messaging_template_id, String

        # @!attribute sender_phone_number
        #   Phone number registered on the customer WABA to send OTPs from
        #
        #   @return [String, nil]
        optional :sender_phone_number, String, nil?: true

        # @!attribute template_id
        #   Customer pre-approved authentication template name registered on Meta
        #
        #   @return [String, nil]
        optional :template_id, String, nil?: true

        # @!attribute waba_id
        #   Customer Meta WABA ID for Bring-Your-Own-WABA sending
        #
        #   @return [String, nil]
        optional :waba_id, String, nil?: true

        # @!attribute whitelisted_destinations
        #   Enabled country destinations to send verification codes. The elements in the
        #   list must be valid ISO 3166-1 alpha-2 country codes. If set to `["*"]`, all
        #   destinations will be allowed. **Conditionally required:** this field must be
        #   provided when your organization is configured to require explicit whitelisted
        #   destinations; otherwise it is optional.
        #
        #   @return [Array<String>, nil]
        optional :whitelisted_destinations, Telnyx::Internal::Type::ArrayOf[String]

        # @!method initialize(app_name: nil, code_length: nil, default_verification_timeout_secs: nil, messaging_template_id: nil, sender_phone_number: nil, template_id: nil, waba_id: nil, whitelisted_destinations: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::VerifyProfile::Whatsapp} for more details.
        #
        #   @param app_name [String] The name that identifies the application requesting 2fa in the verification mess
        #
        #   @param code_length [Integer] The length of the verify code to generate.
        #
        #   @param default_verification_timeout_secs [Integer] For every request that is initiated via this Verify profile, this sets the numbe
        #
        #   @param messaging_template_id [String] The message template identifier selected from /verify_profiles/templates
        #
        #   @param sender_phone_number [String, nil] Phone number registered on the customer WABA to send OTPs from
        #
        #   @param template_id [String, nil] Customer pre-approved authentication template name registered on Meta
        #
        #   @param waba_id [String, nil] Customer Meta WABA ID for Bring-Your-Own-WABA sending
        #
        #   @param whitelisted_destinations [Array<String>] Enabled country destinations to send verification codes. The elements in the lis
      end
    end
  end
end
