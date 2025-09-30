# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::SimCards#get_public_ip
    class SimCardGetPublicIPResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::SimCardGetPublicIPResponse::Data, nil]
      optional :data, -> { Telnyx::Models::SimCardGetPublicIPResponse::Data }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::SimCardGetPublicIPResponse::Data]

      # @see Telnyx::Models::SimCardGetPublicIPResponse#data
      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute sim_card_id
        #
        #   @return [String, nil]
        optional :sim_card_id, String

        response_only do
          # @!attribute created_at
          #   ISO 8601 formatted date-time indicating when the resource was created.
          #
          #   @return [String, nil]
          optional :created_at, String

          # @!attribute ip
          #   The provisioned IP address. This attribute will only be available when
          #   underlying resource status is in a "provisioned" status.
          #
          #   @return [String, nil]
          optional :ip, String

          # @!attribute record_type
          #
          #   @return [String, nil]
          optional :record_type, String

          # @!attribute region_code
          #
          #   @return [String, nil]
          optional :region_code, String

          # @!attribute type
          #
          #   @return [Symbol, Telnyx::Models::SimCardGetPublicIPResponse::Data::Type, nil]
          optional :type, enum: -> { Telnyx::Models::SimCardGetPublicIPResponse::Data::Type }

          # @!attribute updated_at
          #   ISO 8601 formatted date-time indicating when the resource was updated.
          #
          #   @return [String, nil]
          optional :updated_at, String
        end

        # @!method initialize(created_at: nil, ip: nil, record_type: nil, region_code: nil, sim_card_id: nil, type: nil, updated_at: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::SimCardGetPublicIPResponse::Data} for more details.
        #
        #   @param created_at [String] ISO 8601 formatted date-time indicating when the resource was created.
        #
        #   @param ip [String] The provisioned IP address. This attribute will only be available when underlyin
        #
        #   @param record_type [String]
        #
        #   @param region_code [String]
        #
        #   @param sim_card_id [String]
        #
        #   @param type [Symbol, Telnyx::Models::SimCardGetPublicIPResponse::Data::Type]
        #
        #   @param updated_at [String] ISO 8601 formatted date-time indicating when the resource was updated.

        # @see Telnyx::Models::SimCardGetPublicIPResponse::Data#type
        module Type
          extend Telnyx::Internal::Type::Enum

          IPV4 = :ipv4

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
