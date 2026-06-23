# frozen_string_literal: true

module Telnyx
  module Models
    module Enterprises
      module Reputation
        # @see Telnyx::Resources::Enterprises::Reputation::Remediation#create
        class RemediationCreateParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          # @!attribute enterprise_id
          #
          #   @return [String]
          required :enterprise_id, String

          # @!attribute call_purpose
          #   How the numbers are used (free text).
          #
          #   @return [String]
          required :call_purpose, String

          # @!attribute phone_numbers
          #   Phone numbers in E.164 format. Each must belong to this enterprise. Maximum
          #   2,000 per request.
          #
          #   @return [Array<String>]
          required :phone_numbers, Telnyx::Internal::Type::ArrayOf[String]

          # @!attribute contact_email
          #   Optional contact email for this remediation request.
          #
          #   @return [String, nil]
          optional :contact_email, String

          # @!attribute webhook_url
          #   Optional https:// URL for status notifications.
          #
          #   @return [String, nil]
          optional :webhook_url, String

          # @!method initialize(enterprise_id:, call_purpose:, phone_numbers:, contact_email: nil, webhook_url: nil, request_options: {})
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::Enterprises::Reputation::RemediationCreateParams} for more
          #   details.
          #
          #   @param enterprise_id [String]
          #
          #   @param call_purpose [String] How the numbers are used (free text).
          #
          #   @param phone_numbers [Array<String>] Phone numbers in E.164 format. Each must belong to this enterprise. Maximum 2,00
          #
          #   @param contact_email [String] Optional contact email for this remediation request.
          #
          #   @param webhook_url [String] Optional https:// URL for status notifications.
          #
          #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
