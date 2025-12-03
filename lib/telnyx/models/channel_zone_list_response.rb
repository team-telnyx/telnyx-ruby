# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::ChannelZones#list
    class ChannelZoneListResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute channels
      #
      #   @return [Integer]
      required :channels, Integer

      # @!attribute countries
      #   List of countries (in ISO 3166-2, capitalized) members of the billing channel
      #   zone
      #
      #   @return [Array<String>]
      required :countries, Telnyx::Internal::Type::ArrayOf[String]

      # @!attribute name
      #
      #   @return [String]
      required :name, String

      # @!attribute record_type
      #
      #   @return [Symbol, Telnyx::Models::ChannelZoneListResponse::RecordType]
      required :record_type, enum: -> { Telnyx::Models::ChannelZoneListResponse::RecordType }

      # @!attribute created_at
      #   ISO 8601 formatted date of when the channel zone was created
      #
      #   @return [String, nil]
      optional :created_at, String

      # @!attribute updated_at
      #   ISO 8601 formatted date of when the channel zone was updated
      #
      #   @return [String, nil]
      optional :updated_at, String

      # @!method initialize(id:, channels:, countries:, name:, record_type:, created_at: nil, updated_at: nil)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::ChannelZoneListResponse} for more details.
      #
      #   @param id [String]
      #
      #   @param channels [Integer]
      #
      #   @param countries [Array<String>] List of countries (in ISO 3166-2, capitalized) members of the billing channel zo
      #
      #   @param name [String]
      #
      #   @param record_type [Symbol, Telnyx::Models::ChannelZoneListResponse::RecordType]
      #
      #   @param created_at [String] ISO 8601 formatted date of when the channel zone was created
      #
      #   @param updated_at [String] ISO 8601 formatted date of when the channel zone was updated

      # @see Telnyx::Models::ChannelZoneListResponse#record_type
      module RecordType
        extend Telnyx::Internal::Type::Enum

        CHANNEL_ZONE = :channel_zone

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
