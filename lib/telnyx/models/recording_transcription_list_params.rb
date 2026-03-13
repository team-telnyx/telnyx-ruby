# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::RecordingTranscriptions#list
    class RecordingTranscriptionListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute filter
      #   Filter recording transcriptions by various attributes.
      #
      #   @return [Telnyx::Models::RecordingTranscriptionListParams::Filter, nil]
      optional :filter, -> { Telnyx::RecordingTranscriptionListParams::Filter }

      # @!attribute page_number
      #
      #   @return [Integer, nil]
      optional :page_number, Integer

      # @!attribute page_size
      #
      #   @return [Integer, nil]
      optional :page_size, Integer

      # @!method initialize(filter: nil, page_number: nil, page_size: nil, request_options: {})
      #   @param filter [Telnyx::Models::RecordingTranscriptionListParams::Filter] Filter recording transcriptions by various attributes.
      #
      #   @param page_number [Integer]
      #
      #   @param page_size [Integer]
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      class Filter < Telnyx::Internal::Type::BaseModel
        # @!attribute created_at
        #
        #   @return [Telnyx::Models::RecordingTranscriptionListParams::Filter::CreatedAt, nil]
        optional :created_at, -> { Telnyx::RecordingTranscriptionListParams::Filter::CreatedAt }

        # @!attribute recording_id
        #   If present, transcriptions will be filtered to those associated with the given
        #   recording.
        #
        #   @return [String, nil]
        optional :recording_id, String

        # @!method initialize(created_at: nil, recording_id: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::RecordingTranscriptionListParams::Filter} for more details.
        #
        #   Filter recording transcriptions by various attributes.
        #
        #   @param created_at [Telnyx::Models::RecordingTranscriptionListParams::Filter::CreatedAt]
        #
        #   @param recording_id [String] If present, transcriptions will be filtered to those associated with the given r

        # @see Telnyx::Models::RecordingTranscriptionListParams::Filter#created_at
        class CreatedAt < Telnyx::Internal::Type::BaseModel
          # @!attribute gte
          #   Returns only transcriptions created later than or at given ISO 8601 datetime.
          #
          #   @return [String, nil]
          optional :gte, String

          # @!attribute lte
          #   Returns only transcriptions created earlier than or at given ISO 8601 datetime.
          #
          #   @return [String, nil]
          optional :lte, String

          # @!method initialize(gte: nil, lte: nil)
          #   @param gte [String] Returns only transcriptions created later than or at given ISO 8601 datetime.
          #
          #   @param lte [String] Returns only transcriptions created earlier than or at given ISO 8601 datetime.
        end
      end
    end
  end
end
