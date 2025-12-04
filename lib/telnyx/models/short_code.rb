# frozen_string_literal: true

module Telnyx
  module Models
    class ShortCode < Telnyx::Internal::Type::BaseModel
      # @!attribute messaging_profile_id
      #   Unique identifier for a messaging profile.
      #
      #   @return [String, nil]
      required :messaging_profile_id, String, nil?: true

      # @!attribute tags
      #
      #   @return [Array<String>, nil]
      optional :tags, Telnyx::Internal::Type::ArrayOf[String]

      response_only do
        # @!attribute id
        #   Identifies the type of resource.
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute country_code
        #   ISO 3166-1 alpha-2 country code.
        #
        #   @return [String, nil]
        optional :country_code, String

        # @!attribute created_at
        #   ISO 8601 formatted date indicating when the resource was created.
        #
        #   @return [Time, nil]
        optional :created_at, Time

        # @!attribute record_type
        #   Identifies the type of the resource.
        #
        #   @return [Symbol, Telnyx::Models::ShortCode::RecordType, nil]
        optional :record_type, enum: -> { Telnyx::ShortCode::RecordType }

        # @!attribute short_code
        #   Short digit sequence used to address messages.
        #
        #   @return [String, nil]
        optional :short_code, String

        # @!attribute updated_at
        #   ISO 8601 formatted date indicating when the resource was updated.
        #
        #   @return [Time, nil]
        optional :updated_at, Time
      end

      # @!method initialize(messaging_profile_id:, id: nil, country_code: nil, created_at: nil, record_type: nil, short_code: nil, tags: nil, updated_at: nil)
      #   @param messaging_profile_id [String, nil] Unique identifier for a messaging profile.
      #
      #   @param id [String] Identifies the type of resource.
      #
      #   @param country_code [String] ISO 3166-1 alpha-2 country code.
      #
      #   @param created_at [Time] ISO 8601 formatted date indicating when the resource was created.
      #
      #   @param record_type [Symbol, Telnyx::Models::ShortCode::RecordType] Identifies the type of the resource.
      #
      #   @param short_code [String] Short digit sequence used to address messages.
      #
      #   @param tags [Array<String>]
      #
      #   @param updated_at [Time] ISO 8601 formatted date indicating when the resource was updated.

      # Identifies the type of the resource.
      #
      # @see Telnyx::Models::ShortCode#record_type
      module RecordType
        extend Telnyx::Internal::Type::Enum

        SHORT_CODE = :short_code

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
