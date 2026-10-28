# frozen_string_literal: true

module Telnyx
  module Models
    module Whatsapp
      # @see Telnyx::Resources::Whatsapp::HostedSignups#create
      class HostedSignupCreateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute app_id
        #   Meta App ID linked to the Telnyx account or its manager account. The app must be
        #   enabled.
        #
        #   @return [String]
        required :app_id, String

        # @!attribute expires_at
        #   When the onboarding URL expires, in RFC 3339 format. Must be in the future and
        #   at most 3 days ahead. Defaults to 24 hours after creation.
        #
        #   @return [Time, nil]
        optional :expires_at, Time

        # @!attribute signup_type
        #   Onboarding flow the hosted page launches. Use `coexistence` for a number that
        #   remains active in the WhatsApp Business app.
        #
        #   @return [Symbol, Telnyx::Models::Whatsapp::HostedSignupCreateParams::SignupType, nil]
        optional :signup_type, enum: -> { Telnyx::Whatsapp::HostedSignupCreateParams::SignupType }

        # @!method initialize(app_id:, expires_at: nil, signup_type: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Whatsapp::HostedSignupCreateParams} for more details.
        #
        #   @param app_id [String] Meta App ID linked to the Telnyx account or its manager account. The app must be
        #
        #   @param expires_at [Time] When the onboarding URL expires, in RFC 3339 format. Must be in the future and a
        #
        #   @param signup_type [Symbol, Telnyx::Models::Whatsapp::HostedSignupCreateParams::SignupType] Onboarding flow the hosted page launches. Use `coexistence` for a number that re
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

        # Onboarding flow the hosted page launches. Use `coexistence` for a number that
        # remains active in the WhatsApp Business app.
        module SignupType
          extend Telnyx::Internal::Type::Enum

          STANDARD = :standard
          COEXISTENCE = :coexistence

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
