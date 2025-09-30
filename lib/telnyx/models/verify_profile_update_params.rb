# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::VerifyProfiles#update
    class VerifyProfileUpdateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute call
      #
      #   @return [Telnyx::Models::VerifyProfileUpdateParams::Call, nil]
      optional :call, -> { Telnyx::VerifyProfileUpdateParams::Call }

      # @!attribute flashcall
      #
      #   @return [Telnyx::Models::VerifyProfileUpdateParams::Flashcall, nil]
      optional :flashcall, -> { Telnyx::VerifyProfileUpdateParams::Flashcall }

      # @!attribute language
      #
      #   @return [String, nil]
      optional :language, String

      # @!attribute name
      #
      #   @return [String, nil]
      optional :name, String

      # @!attribute sms
      #
      #   @return [Telnyx::Models::VerifyProfileUpdateParams::SMS, nil]
      optional :sms, -> { Telnyx::VerifyProfileUpdateParams::SMS }

      # @!attribute webhook_failover_url
      #
      #   @return [String, nil]
      optional :webhook_failover_url, String

      # @!attribute webhook_url
      #
      #   @return [String, nil]
      optional :webhook_url, String

      # @!method initialize(call: nil, flashcall: nil, language: nil, name: nil, sms: nil, webhook_failover_url: nil, webhook_url: nil, request_options: {})
      #   @param call [Telnyx::Models::VerifyProfileUpdateParams::Call]
      #   @param flashcall [Telnyx::Models::VerifyProfileUpdateParams::Flashcall]
      #   @param language [String]
      #   @param name [String]
      #   @param sms [Telnyx::Models::VerifyProfileUpdateParams::SMS]
      #   @param webhook_failover_url [String]
      #   @param webhook_url [String]
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

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
        #   destinations will be allowed.
        #
        #   @return [Array<String>, nil]
        optional :whitelisted_destinations, Telnyx::Internal::Type::ArrayOf[String]

        # @!method initialize(app_name: nil, code_length: nil, default_verification_timeout_secs: nil, messaging_template_id: nil, whitelisted_destinations: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::VerifyProfileUpdateParams::Call} for more details.
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

      class Flashcall < Telnyx::Internal::Type::BaseModel
        # @!attribute default_verification_timeout_secs
        #   For every request that is initiated via this Verify profile, this sets the
        #   number of seconds before a verification request code expires. Once the
        #   verification request expires, the user cannot use the code to verify their
        #   identity.
        #
        #   @return [Integer, nil]
        optional :default_verification_timeout_secs, Integer

        # @!attribute whitelisted_destinations
        #   Enabled country destinations to send verification codes. The elements in the
        #   list must be valid ISO 3166-1 alpha-2 country codes. If set to `["*"]`, all
        #   destinations will be allowed.
        #
        #   @return [Array<String>, nil]
        optional :whitelisted_destinations, Telnyx::Internal::Type::ArrayOf[String]

        # @!method initialize(default_verification_timeout_secs: nil, whitelisted_destinations: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::VerifyProfileUpdateParams::Flashcall} for more details.
        #
        #   @param default_verification_timeout_secs [Integer] For every request that is initiated via this Verify profile, this sets the numbe
        #
        #   @param whitelisted_destinations [Array<String>] Enabled country destinations to send verification codes. The elements in the lis
      end

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
        #   destinations will be allowed.
        #
        #   @return [Array<String>, nil]
        optional :whitelisted_destinations, Telnyx::Internal::Type::ArrayOf[String]

        # @!method initialize(alpha_sender: nil, app_name: nil, code_length: nil, default_verification_timeout_secs: nil, messaging_template_id: nil, whitelisted_destinations: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::VerifyProfileUpdateParams::SMS} for more details.
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
    end
  end
end
