# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::DetailRecords#list
    class DetailRecordListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute filter
      #   Filter records on a given record attribute and value. <br/>Example:
      #   filter[status]=delivered. <br/>Required: filter[record_type] must be specified.
      #
      #   @return [Telnyx::Models::DetailRecordListParams::Filter, nil]
      optional :filter, -> { Telnyx::DetailRecordListParams::Filter }

      # @!attribute page
      #   Consolidated page parameter (deepObject style). Originally: page[number],
      #   page[size]
      #
      #   @return [Telnyx::Models::DetailRecordListParams::Page, nil]
      optional :page, -> { Telnyx::DetailRecordListParams::Page }

      # @!attribute sort
      #   Specifies the sort order for results. <br/>Example: sort=-created_at
      #
      #   @return [Array<String>, nil]
      optional :sort, Telnyx::Internal::Type::ArrayOf[String]

      # @!method initialize(filter: nil, page: nil, sort: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::DetailRecordListParams} for more details.
      #
      #   @param filter [Telnyx::Models::DetailRecordListParams::Filter] Filter records on a given record attribute and value. <br/>Example: filter[statu
      #
      #   @param page [Telnyx::Models::DetailRecordListParams::Page] Consolidated page parameter (deepObject style). Originally: page[number], page[s
      #
      #   @param sort [Array<String>] Specifies the sort order for results. <br/>Example: sort=-created_at
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      class Filter < Telnyx::Internal::Type::BaseModel
        # @!attribute record_type
        #   Filter by the given record type.
        #
        #   @return [Symbol, Telnyx::Models::DetailRecordListParams::Filter::RecordType]
        required :record_type, enum: -> { Telnyx::DetailRecordListParams::Filter::RecordType }

        # @!attribute date_range
        #   Filter by the given user-friendly date range. You can specify one of the
        #   following enum values, or a dynamic one using this format: last_N_days.
        #
        #   @return [Symbol, Telnyx::Models::DetailRecordListParams::Filter::DateRange, nil]
        optional :date_range, enum: -> { Telnyx::DetailRecordListParams::Filter::DateRange }

        # @!method initialize(record_type:, date_range: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::DetailRecordListParams::Filter} for more details.
        #
        #   Filter records on a given record attribute and value. <br/>Example:
        #   filter[status]=delivered. <br/>Required: filter[record_type] must be specified.
        #
        #   @param record_type [Symbol, Telnyx::Models::DetailRecordListParams::Filter::RecordType] Filter by the given record type.
        #
        #   @param date_range [Symbol, Telnyx::Models::DetailRecordListParams::Filter::DateRange] Filter by the given user-friendly date range. You can specify one of the followi

        # Filter by the given record type.
        #
        # @see Telnyx::Models::DetailRecordListParams::Filter#record_type
        module RecordType
          extend Telnyx::Internal::Type::Enum

          AI_VOICE_ASSISTANT = :"ai-voice-assistant"
          AMD = :amd
          CALL_CONTROL = :"call-control"
          CONFERENCE = :conference
          CONFERENCE_PARTICIPANT = :"conference-participant"
          EMBEDDING = :embedding
          FAX = :fax
          INFERENCE = :inference
          INFERENCE_SPEECH_TO_TEXT = :"inference-speech-to-text"
          MEDIA_STORAGE = :media_storage
          MEDIA_STREAMING = :"media-streaming"
          MESSAGING = :messaging
          NOISE_SUPPRESSION = :"noise-suppression"
          RECORDING = :recording
          SIP_TRUNKING = :"sip-trunking"
          SIPREC_CLIENT = :"siprec-client"
          STT = :stt
          TTS = :tts
          VERIFY = :verify
          WEBRTC = :webrtc
          WIRELESS = :wireless

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Filter by the given user-friendly date range. You can specify one of the
        # following enum values, or a dynamic one using this format: last_N_days.
        #
        # @see Telnyx::Models::DetailRecordListParams::Filter#date_range
        module DateRange
          extend Telnyx::Internal::Type::Enum

          YESTERDAY = :yesterday
          TODAY = :today
          TOMORROW = :tomorrow
          LAST_WEEK = :last_week
          THIS_WEEK = :this_week
          NEXT_WEEK = :next_week
          LAST_MONTH = :last_month
          THIS_MONTH = :this_month
          NEXT_MONTH = :next_month

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      class Page < Telnyx::Internal::Type::BaseModel
        # @!attribute number
        #   Page number
        #
        #   @return [Integer, nil]
        optional :number, Integer

        # @!attribute size
        #   Page size
        #
        #   @return [Integer, nil]
        optional :size, Integer

        # @!method initialize(number: nil, size: nil)
        #   Consolidated page parameter (deepObject style). Originally: page[number],
        #   page[size]
        #
        #   @param number [Integer] Page number
        #
        #   @param size [Integer] Page size
      end
    end
  end
end
