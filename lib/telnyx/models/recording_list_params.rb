# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Recordings#list
    class RecordingListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute filter
      #   Filter recordings by various attributes.
      #
      #   @return [Telnyx::Models::RecordingListParams::Filter, nil]
      optional :filter, -> { Telnyx::RecordingListParams::Filter }

      # @!attribute page_number
      #
      #   @return [Integer, nil]
      optional :page_number, Integer

      # @!attribute page_size
      #
      #   @return [Integer, nil]
      optional :page_size, Integer

      # @!method initialize(filter: nil, page_number: nil, page_size: nil, request_options: {})
      #   @param filter [Telnyx::Models::RecordingListParams::Filter] Filter recordings by various attributes.
      #
      #   @param page_number [Integer]
      #
      #   @param page_size [Integer]
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      class Filter < Telnyx::Internal::Type::BaseModel
        # @!attribute call_control_id
        #   If present, recordings will be filtered to those with a matching
        #   `call_control_id`.
        #
        #   @return [String, nil]
        optional :call_control_id, String

        # @!attribute call_leg_id
        #   If present, recordings will be filtered to those with a matching call_leg_id.
        #
        #   @return [String, nil]
        optional :call_leg_id, String

        # @!attribute call_session_id
        #   If present, recordings will be filtered to those with a matching
        #   call_session_id.
        #
        #   @return [String, nil]
        optional :call_session_id, String

        # @!attribute conference_id
        #   Returns only recordings associated with a given conference.
        #
        #   @return [String, nil]
        optional :conference_id, String

        # @!attribute conference_region
        #   If present, recordings will be filtered to those with a matching
        #   `conference_region`.
        #
        #   @return [String, nil]
        optional :conference_region, String

        # @!attribute connection_id
        #   If present, recordings will be filtered to those with a matching `connection_id`
        #   attribute (case-sensitive).
        #
        #   @return [String, nil]
        optional :connection_id, String

        # @!attribute created_at
        #
        #   @return [Telnyx::Models::RecordingListParams::Filter::CreatedAt, nil]
        optional :created_at, -> { Telnyx::RecordingListParams::Filter::CreatedAt }

        # @!attribute end_time
        #
        #   @return [Telnyx::Models::RecordingListParams::Filter::EndTime, nil]
        optional :end_time, -> { Telnyx::RecordingListParams::Filter::EndTime }

        # @!attribute from
        #   If present, recordings will be filtered to those with a matching `from`
        #   attribute (case-sensitive).
        #
        #   @return [String, nil]
        optional :from, String

        # @!attribute sip_call_id
        #   If present, recordings will be filtered to those with a matching `sip_call_id`
        #   attribute. Matching is case-sensitive.
        #
        #   @return [String, nil]
        optional :sip_call_id, String

        # @!attribute start_time
        #
        #   @return [Telnyx::Models::RecordingListParams::Filter::StartTime, nil]
        optional :start_time, -> { Telnyx::RecordingListParams::Filter::StartTime }

        # @!attribute to
        #   If present, recordings will be filtered to those with a matching `to` attribute
        #   (case-sensitive).
        #
        #   @return [String, nil]
        optional :to, String

        # @!method initialize(call_control_id: nil, call_leg_id: nil, call_session_id: nil, conference_id: nil, conference_region: nil, connection_id: nil, created_at: nil, end_time: nil, from: nil, sip_call_id: nil, start_time: nil, to: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::RecordingListParams::Filter} for more details.
        #
        #   Filter recordings by various attributes.
        #
        #   @param call_control_id [String] If present, recordings will be filtered to those with a matching `call_control_i
        #
        #   @param call_leg_id [String] If present, recordings will be filtered to those with a matching call_leg_id.
        #
        #   @param call_session_id [String] If present, recordings will be filtered to those with a matching call_session_id
        #
        #   @param conference_id [String] Returns only recordings associated with a given conference.
        #
        #   @param conference_region [String] If present, recordings will be filtered to those with a matching `conference_reg
        #
        #   @param connection_id [String] If present, recordings will be filtered to those with a matching `connection_id`
        #
        #   @param created_at [Telnyx::Models::RecordingListParams::Filter::CreatedAt]
        #
        #   @param end_time [Telnyx::Models::RecordingListParams::Filter::EndTime]
        #
        #   @param from [String] If present, recordings will be filtered to those with a matching `from` attribut
        #
        #   @param sip_call_id [String] If present, recordings will be filtered to those with a matching `sip_call_id` a
        #
        #   @param start_time [Telnyx::Models::RecordingListParams::Filter::StartTime]
        #
        #   @param to [String] If present, recordings will be filtered to those with a matching `to` attribute

        # @see Telnyx::Models::RecordingListParams::Filter#created_at
        class CreatedAt < Telnyx::Internal::Type::BaseModel
          # @!attribute gte
          #   Returns only recordings created later than or at given ISO 8601 datetime.
          #
          #   @return [String, nil]
          optional :gte, String

          # @!attribute lte
          #   Returns only recordings created earlier than or at given ISO 8601 datetime.
          #
          #   @return [String, nil]
          optional :lte, String

          # @!method initialize(gte: nil, lte: nil)
          #   @param gte [String] Returns only recordings created later than or at given ISO 8601 datetime.
          #
          #   @param lte [String] Returns only recordings created earlier than or at given ISO 8601 datetime.
        end

        # @see Telnyx::Models::RecordingListParams::Filter#end_time
        class EndTime < Telnyx::Internal::Type::BaseModel
          # @!attribute gte
          #   Returns only recordings with an end time later than or equal to the given ISO
          #   8601 datetime.
          #
          #   @return [String, nil]
          optional :gte, String

          # @!attribute lte
          #   Returns only recordings with an end time earlier than or equal to the given ISO
          #   8601 datetime.
          #
          #   @return [String, nil]
          optional :lte, String

          # @!method initialize(gte: nil, lte: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::RecordingListParams::Filter::EndTime} for more details.
          #
          #   @param gte [String] Returns only recordings with an end time later than or equal to the given ISO 86
          #
          #   @param lte [String] Returns only recordings with an end time earlier than or equal to the given ISO
        end

        # @see Telnyx::Models::RecordingListParams::Filter#start_time
        class StartTime < Telnyx::Internal::Type::BaseModel
          # @!attribute gte
          #   Returns only recordings with a start time later than or equal to the given ISO
          #   8601 datetime.
          #
          #   @return [String, nil]
          optional :gte, String

          # @!attribute lte
          #   Returns only recordings with a start time earlier than or equal to the given ISO
          #   8601 datetime.
          #
          #   @return [String, nil]
          optional :lte, String

          # @!method initialize(gte: nil, lte: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::RecordingListParams::Filter::StartTime} for more details.
          #
          #   @param gte [String] Returns only recordings with a start time later than or equal to the given ISO 8
          #
          #   @param lte [String] Returns only recordings with a start time earlier than or equal to the given ISO
        end
      end
    end
  end
end
