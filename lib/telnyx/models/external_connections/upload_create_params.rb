# frozen_string_literal: true

module Telnyx
  module Models
    module ExternalConnections
      # @see Telnyx::Resources::ExternalConnections::Uploads#create
      class UploadCreateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute number_ids
        #
        #   @return [Array<String>]
        required :number_ids, Telnyx::Internal::Type::ArrayOf[String]

        # @!attribute additional_usages
        #
        #   @return [Array<Symbol, Telnyx::Models::ExternalConnections::UploadCreateParams::AdditionalUsage>, nil]
        optional :additional_usages,
                 -> { Telnyx::Internal::Type::ArrayOf[enum: Telnyx::ExternalConnections::UploadCreateParams::AdditionalUsage] }

        # @!attribute civic_address_id
        #   Identifies the civic address to assign all phone numbers to.
        #
        #   @return [String, nil]
        optional :civic_address_id, String

        # @!attribute location_id
        #   Identifies the location to assign all phone numbers to.
        #
        #   @return [String, nil]
        optional :location_id, String

        # @!attribute usage
        #   The use case of the upload request. NOTE: `calling_user_assignment` is not
        #   supported for toll free numbers.
        #
        #   @return [Symbol, Telnyx::Models::ExternalConnections::UploadCreateParams::Usage, nil]
        optional :usage, enum: -> { Telnyx::ExternalConnections::UploadCreateParams::Usage }

        # @!method initialize(number_ids:, additional_usages: nil, civic_address_id: nil, location_id: nil, usage: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::ExternalConnections::UploadCreateParams} for more details.
        #
        #   @param number_ids [Array<String>]
        #
        #   @param additional_usages [Array<Symbol, Telnyx::Models::ExternalConnections::UploadCreateParams::AdditionalUsage>]
        #
        #   @param civic_address_id [String] Identifies the civic address to assign all phone numbers to.
        #
        #   @param location_id [String] Identifies the location to assign all phone numbers to.
        #
        #   @param usage [Symbol, Telnyx::Models::ExternalConnections::UploadCreateParams::Usage] The use case of the upload request. NOTE: `calling_user_assignment` is not suppo
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

        # Additional use cases of the upload request. If not provided, all supported
        # usages will be used.
        module AdditionalUsage
          extend Telnyx::Internal::Type::Enum

          CALLING_USER_ASSIGNMENT = :calling_user_assignment
          FIRST_PARTY_APP_ASSIGNMENT = :first_party_app_assignment

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The use case of the upload request. NOTE: `calling_user_assignment` is not
        # supported for toll free numbers.
        module Usage
          extend Telnyx::Internal::Type::Enum

          CALLING_USER_ASSIGNMENT = :calling_user_assignment
          FIRST_PARTY_APP_ASSIGNMENT = :first_party_app_assignment

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
