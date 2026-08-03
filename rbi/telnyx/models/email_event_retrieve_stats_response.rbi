# typed: strong

module Telnyx
  module Models
    class EmailEventRetrieveStatsResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::EmailEventRetrieveStatsResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(Telnyx::Models::EmailEventRetrieveStatsResponse::Data) }
      attr_reader :data

      sig do
        params(
          data: Telnyx::Models::EmailEventRetrieveStatsResponse::Data::OrHash
        ).void
      end
      attr_writer :data

      sig do
        params(
          data: Telnyx::Models::EmailEventRetrieveStatsResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data:)
      end

      sig do
        override.returns(
          { data: Telnyx::Models::EmailEventRetrieveStatsResponse::Data }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::EmailEventRetrieveStatsResponse::Data,
              Telnyx::Internal::AnyHash
            )
          end

        # Recipient-level outcome counts for the queried time range. Each to, cc, and bcc
        # recipient counts separately; repeated events of the same type for the same
        # message and recipient count once. Partial MTA injection results count successful
        # recipients as sent and unsuccessful recipients as failed. Only the ten listed
        # event types are counted; other valid event types (scheduled, cancelled, sandbox,
        # sending, rejected) are not included in stats.
        sig do
          returns(Telnyx::Models::EmailEventRetrieveStatsResponse::Data::Counts)
        end
        attr_reader :counts

        sig do
          params(
            counts:
              Telnyx::Models::EmailEventRetrieveStatsResponse::Data::Counts::OrHash
          ).void
        end
        attr_writer :counts

        # Recipient-level event rates as percentages, rounded to 2 decimal places.
        sig do
          returns(Telnyx::Models::EmailEventRetrieveStatsResponse::Data::Rates)
        end
        attr_reader :rates

        sig do
          params(
            rates:
              Telnyx::Models::EmailEventRetrieveStatsResponse::Data::Rates::OrHash
          ).void
        end
        attr_writer :rates

        sig do
          returns(
            Telnyx::Models::EmailEventRetrieveStatsResponse::Data::RecordType::TaggedSymbol
          )
        end
        attr_accessor :record_type

        sig { returns(Telnyx::TimeRange) }
        attr_reader :time_range

        sig { params(time_range: Telnyx::TimeRange::OrHash).void }
        attr_writer :time_range

        sig do
          params(
            counts:
              Telnyx::Models::EmailEventRetrieveStatsResponse::Data::Counts::OrHash,
            rates:
              Telnyx::Models::EmailEventRetrieveStatsResponse::Data::Rates::OrHash,
            record_type:
              Telnyx::Models::EmailEventRetrieveStatsResponse::Data::RecordType::OrSymbol,
            time_range: Telnyx::TimeRange::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Recipient-level outcome counts for the queried time range. Each to, cc, and bcc
          # recipient counts separately; repeated events of the same type for the same
          # message and recipient count once. Partial MTA injection results count successful
          # recipients as sent and unsuccessful recipients as failed. Only the ten listed
          # event types are counted; other valid event types (scheduled, cancelled, sandbox,
          # sending, rejected) are not included in stats.
          counts:,
          # Recipient-level event rates as percentages, rounded to 2 decimal places.
          rates:,
          record_type:,
          time_range:
        )
        end

        sig do
          override.returns(
            {
              counts:
                Telnyx::Models::EmailEventRetrieveStatsResponse::Data::Counts,
              rates:
                Telnyx::Models::EmailEventRetrieveStatsResponse::Data::Rates,
              record_type:
                Telnyx::Models::EmailEventRetrieveStatsResponse::Data::RecordType::TaggedSymbol,
              time_range: Telnyx::TimeRange
            }
          )
        end
        def to_hash
        end

        class Counts < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::EmailEventRetrieveStatsResponse::Data::Counts,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(Integer) }
          attr_accessor :bounced

          sig { returns(Integer) }
          attr_accessor :clicked

          sig { returns(Integer) }
          attr_accessor :complained

          sig { returns(Integer) }
          attr_accessor :deferred

          sig { returns(Integer) }
          attr_accessor :delivered

          sig { returns(Integer) }
          attr_accessor :failed

          sig { returns(Integer) }
          attr_accessor :opened

          sig { returns(Integer) }
          attr_accessor :queued

          sig { returns(Integer) }
          attr_accessor :sent

          sig { returns(Integer) }
          attr_accessor :unsubscribed

          # Recipient-level outcome counts for the queried time range. Each to, cc, and bcc
          # recipient counts separately; repeated events of the same type for the same
          # message and recipient count once. Partial MTA injection results count successful
          # recipients as sent and unsuccessful recipients as failed. Only the ten listed
          # event types are counted; other valid event types (scheduled, cancelled, sandbox,
          # sending, rejected) are not included in stats.
          sig do
            params(
              bounced: Integer,
              clicked: Integer,
              complained: Integer,
              deferred: Integer,
              delivered: Integer,
              failed: Integer,
              opened: Integer,
              queued: Integer,
              sent: Integer,
              unsubscribed: Integer
            ).returns(T.attached_class)
          end
          def self.new(
            bounced:,
            clicked:,
            complained:,
            deferred:,
            delivered:,
            failed:,
            opened:,
            queued:,
            sent:,
            unsubscribed:
          )
          end

          sig do
            override.returns(
              {
                bounced: Integer,
                clicked: Integer,
                complained: Integer,
                deferred: Integer,
                delivered: Integer,
                failed: Integer,
                opened: Integer,
                queued: Integer,
                sent: Integer,
                unsubscribed: Integer
              }
            )
          end
          def to_hash
          end
        end

        class Rates < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::EmailEventRetrieveStatsResponse::Data::Rates,
                Telnyx::Internal::AnyHash
              )
            end

          # Bounced recipients / queued recipients as a percentage.
          sig { returns(Float) }
          attr_accessor :bounce_rate

          # Recipients clicked / recipients opened as a percentage.
          sig { returns(Float) }
          attr_accessor :click_rate

          # Recipients with a complaint feedback report / delivered recipients as a
          # percentage.
          sig { returns(Float) }
          attr_accessor :complaint_rate

          # Deferred recipients / queued recipients as a percentage.
          sig { returns(Float) }
          attr_accessor :deferred_rate

          # Delivered recipients / queued recipients as a percentage.
          sig { returns(Float) }
          attr_accessor :delivery_rate

          # Recipients opened / recipients delivered as a percentage.
          sig { returns(Float) }
          attr_accessor :open_rate

          # Recipient-level event rates as percentages, rounded to 2 decimal places.
          sig do
            params(
              bounce_rate: Float,
              click_rate: Float,
              complaint_rate: Float,
              deferred_rate: Float,
              delivery_rate: Float,
              open_rate: Float
            ).returns(T.attached_class)
          end
          def self.new(
            # Bounced recipients / queued recipients as a percentage.
            bounce_rate:,
            # Recipients clicked / recipients opened as a percentage.
            click_rate:,
            # Recipients with a complaint feedback report / delivered recipients as a
            # percentage.
            complaint_rate:,
            # Deferred recipients / queued recipients as a percentage.
            deferred_rate:,
            # Delivered recipients / queued recipients as a percentage.
            delivery_rate:,
            # Recipients opened / recipients delivered as a percentage.
            open_rate:
          )
          end

          sig do
            override.returns(
              {
                bounce_rate: Float,
                click_rate: Float,
                complaint_rate: Float,
                deferred_rate: Float,
                delivery_rate: Float,
                open_rate: Float
              }
            )
          end
          def to_hash
          end
        end

        module RecordType
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Models::EmailEventRetrieveStatsResponse::Data::RecordType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EMAIL_EVENT_STATS =
            T.let(
              :email_event_stats,
              Telnyx::Models::EmailEventRetrieveStatsResponse::Data::RecordType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Models::EmailEventRetrieveStatsResponse::Data::RecordType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
