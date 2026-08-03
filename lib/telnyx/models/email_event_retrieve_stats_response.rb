# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::EmailEvents#retrieve_stats
    class EmailEventRetrieveStatsResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::EmailEventRetrieveStatsResponse::Data]
      required :data, -> { Telnyx::Models::EmailEventRetrieveStatsResponse::Data }

      # @!method initialize(data:)
      #   @param data [Telnyx::Models::EmailEventRetrieveStatsResponse::Data]

      # @see Telnyx::Models::EmailEventRetrieveStatsResponse#data
      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute counts
        #   Recipient-level outcome counts for the queried time range. Each to, cc, and bcc
        #   recipient counts separately; repeated events of the same type for the same
        #   message and recipient count once. Partial MTA injection results count successful
        #   recipients as sent and unsuccessful recipients as failed. Only the ten listed
        #   event types are counted; other valid event types (scheduled, cancelled, sandbox,
        #   sending, rejected) are not included in stats.
        #
        #   @return [Telnyx::Models::EmailEventRetrieveStatsResponse::Data::Counts]
        required :counts, -> { Telnyx::Models::EmailEventRetrieveStatsResponse::Data::Counts }

        # @!attribute rates
        #   Recipient-level event rates as percentages, rounded to 2 decimal places.
        #
        #   @return [Telnyx::Models::EmailEventRetrieveStatsResponse::Data::Rates]
        required :rates, -> { Telnyx::Models::EmailEventRetrieveStatsResponse::Data::Rates }

        # @!attribute record_type
        #
        #   @return [Symbol, Telnyx::Models::EmailEventRetrieveStatsResponse::Data::RecordType]
        required :record_type, enum: -> { Telnyx::Models::EmailEventRetrieveStatsResponse::Data::RecordType }

        # @!attribute time_range
        #
        #   @return [Telnyx::Models::TimeRange]
        required :time_range, -> { Telnyx::TimeRange }

        # @!method initialize(counts:, rates:, record_type:, time_range:)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::EmailEventRetrieveStatsResponse::Data} for more details.
        #
        #   @param counts [Telnyx::Models::EmailEventRetrieveStatsResponse::Data::Counts] Recipient-level outcome counts for the queried time range. Each to, cc, and bcc
        #
        #   @param rates [Telnyx::Models::EmailEventRetrieveStatsResponse::Data::Rates] Recipient-level event rates as percentages, rounded to 2 decimal places.
        #
        #   @param record_type [Symbol, Telnyx::Models::EmailEventRetrieveStatsResponse::Data::RecordType]
        #
        #   @param time_range [Telnyx::Models::TimeRange]

        # @see Telnyx::Models::EmailEventRetrieveStatsResponse::Data#counts
        class Counts < Telnyx::Internal::Type::BaseModel
          # @!attribute bounced
          #
          #   @return [Integer]
          required :bounced, Integer

          # @!attribute clicked
          #
          #   @return [Integer]
          required :clicked, Integer

          # @!attribute complained
          #
          #   @return [Integer]
          required :complained, Integer

          # @!attribute deferred
          #
          #   @return [Integer]
          required :deferred, Integer

          # @!attribute delivered
          #
          #   @return [Integer]
          required :delivered, Integer

          # @!attribute failed
          #
          #   @return [Integer]
          required :failed, Integer

          # @!attribute opened
          #
          #   @return [Integer]
          required :opened, Integer

          # @!attribute queued
          #
          #   @return [Integer]
          required :queued, Integer

          # @!attribute sent
          #
          #   @return [Integer]
          required :sent, Integer

          # @!attribute unsubscribed
          #
          #   @return [Integer]
          required :unsubscribed, Integer

          # @!method initialize(bounced:, clicked:, complained:, deferred:, delivered:, failed:, opened:, queued:, sent:, unsubscribed:)
          #   Recipient-level outcome counts for the queried time range. Each to, cc, and bcc
          #   recipient counts separately; repeated events of the same type for the same
          #   message and recipient count once. Partial MTA injection results count successful
          #   recipients as sent and unsuccessful recipients as failed. Only the ten listed
          #   event types are counted; other valid event types (scheduled, cancelled, sandbox,
          #   sending, rejected) are not included in stats.
          #
          #   @param bounced [Integer]
          #   @param clicked [Integer]
          #   @param complained [Integer]
          #   @param deferred [Integer]
          #   @param delivered [Integer]
          #   @param failed [Integer]
          #   @param opened [Integer]
          #   @param queued [Integer]
          #   @param sent [Integer]
          #   @param unsubscribed [Integer]
        end

        # @see Telnyx::Models::EmailEventRetrieveStatsResponse::Data#rates
        class Rates < Telnyx::Internal::Type::BaseModel
          # @!attribute bounce_rate
          #   Bounced recipients / queued recipients as a percentage.
          #
          #   @return [Float]
          required :bounce_rate, Float

          # @!attribute click_rate
          #   Recipients clicked / recipients opened as a percentage.
          #
          #   @return [Float]
          required :click_rate, Float

          # @!attribute complaint_rate
          #   Recipients with a complaint feedback report / delivered recipients as a
          #   percentage.
          #
          #   @return [Float]
          required :complaint_rate, Float

          # @!attribute deferred_rate
          #   Deferred recipients / queued recipients as a percentage.
          #
          #   @return [Float]
          required :deferred_rate, Float

          # @!attribute delivery_rate
          #   Delivered recipients / queued recipients as a percentage.
          #
          #   @return [Float]
          required :delivery_rate, Float

          # @!attribute open_rate
          #   Recipients opened / recipients delivered as a percentage.
          #
          #   @return [Float]
          required :open_rate, Float

          # @!method initialize(bounce_rate:, click_rate:, complaint_rate:, deferred_rate:, delivery_rate:, open_rate:)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::EmailEventRetrieveStatsResponse::Data::Rates} for more details.
          #
          #   Recipient-level event rates as percentages, rounded to 2 decimal places.
          #
          #   @param bounce_rate [Float] Bounced recipients / queued recipients as a percentage.
          #
          #   @param click_rate [Float] Recipients clicked / recipients opened as a percentage.
          #
          #   @param complaint_rate [Float] Recipients with a complaint feedback report / delivered recipients as a percenta
          #
          #   @param deferred_rate [Float] Deferred recipients / queued recipients as a percentage.
          #
          #   @param delivery_rate [Float] Delivered recipients / queued recipients as a percentage.
          #
          #   @param open_rate [Float] Recipients opened / recipients delivered as a percentage.
        end

        # @see Telnyx::Models::EmailEventRetrieveStatsResponse::Data#record_type
        module RecordType
          extend Telnyx::Internal::Type::Enum

          EMAIL_EVENT_STATS = :email_event_stats

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
