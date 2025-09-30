# typed: strong

module Telnyx
  module Models
    MdrUsageReport = Reports::MdrUsageReport

    module Reports
      class MdrUsageReport < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::Reports::MdrUsageReport, Telnyx::Internal::AnyHash)
          end

        # Identifies the resource
        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        sig do
          returns(
            T.nilable(
              Telnyx::Reports::MdrUsageReport::AggregationType::TaggedSymbol
            )
          )
        end
        attr_reader :aggregation_type

        sig do
          params(
            aggregation_type:
              Telnyx::Reports::MdrUsageReport::AggregationType::OrSymbol
          ).void
        end
        attr_writer :aggregation_type

        sig { returns(T.nilable(T::Array[Integer])) }
        attr_reader :connections

        sig { params(connections: T::Array[Integer]).void }
        attr_writer :connections

        sig { returns(T.nilable(Time)) }
        attr_reader :created_at

        sig { params(created_at: Time).void }
        attr_writer :created_at

        sig { returns(T.nilable(Time)) }
        attr_reader :end_date

        sig { params(end_date: Time).void }
        attr_writer :end_date

        sig { returns(T.nilable(String)) }
        attr_reader :profiles

        sig { params(profiles: String).void }
        attr_writer :profiles

        sig { returns(T.nilable(String)) }
        attr_reader :record_type

        sig { params(record_type: String).void }
        attr_writer :record_type

        sig { returns(T.nilable(String)) }
        attr_reader :report_url

        sig { params(report_url: String).void }
        attr_writer :report_url

        sig do
          returns(T.nilable(T::Array[Telnyx::Reports::MdrUsageReport::Result]))
        end
        attr_reader :result

        sig do
          params(
            result: T::Array[Telnyx::Reports::MdrUsageReport::Result::OrHash]
          ).void
        end
        attr_writer :result

        sig { returns(T.nilable(Time)) }
        attr_reader :start_date

        sig { params(start_date: Time).void }
        attr_writer :start_date

        sig do
          returns(
            T.nilable(Telnyx::Reports::MdrUsageReport::Status::TaggedSymbol)
          )
        end
        attr_reader :status

        sig do
          params(status: Telnyx::Reports::MdrUsageReport::Status::OrSymbol).void
        end
        attr_writer :status

        sig { returns(T.nilable(Time)) }
        attr_reader :updated_at

        sig { params(updated_at: Time).void }
        attr_writer :updated_at

        sig do
          params(
            id: String,
            aggregation_type:
              Telnyx::Reports::MdrUsageReport::AggregationType::OrSymbol,
            connections: T::Array[Integer],
            created_at: Time,
            end_date: Time,
            profiles: String,
            record_type: String,
            report_url: String,
            result: T::Array[Telnyx::Reports::MdrUsageReport::Result::OrHash],
            start_date: Time,
            status: Telnyx::Reports::MdrUsageReport::Status::OrSymbol,
            updated_at: Time
          ).returns(T.attached_class)
        end
        def self.new(
          # Identifies the resource
          id: nil,
          aggregation_type: nil,
          connections: nil,
          created_at: nil,
          end_date: nil,
          profiles: nil,
          record_type: nil,
          report_url: nil,
          result: nil,
          start_date: nil,
          status: nil,
          updated_at: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              aggregation_type:
                Telnyx::Reports::MdrUsageReport::AggregationType::TaggedSymbol,
              connections: T::Array[Integer],
              created_at: Time,
              end_date: Time,
              profiles: String,
              record_type: String,
              report_url: String,
              result: T::Array[Telnyx::Reports::MdrUsageReport::Result],
              start_date: Time,
              status: Telnyx::Reports::MdrUsageReport::Status::TaggedSymbol,
              updated_at: Time
            }
          )
        end
        def to_hash
        end

        module AggregationType
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::Reports::MdrUsageReport::AggregationType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          NO_AGGREGATION =
            T.let(
              :NO_AGGREGATION,
              Telnyx::Reports::MdrUsageReport::AggregationType::TaggedSymbol
            )
          PROFILE =
            T.let(
              :PROFILE,
              Telnyx::Reports::MdrUsageReport::AggregationType::TaggedSymbol
            )
          TAGS =
            T.let(
              :TAGS,
              Telnyx::Reports::MdrUsageReport::AggregationType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Reports::MdrUsageReport::AggregationType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class Result < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Reports::MdrUsageReport::Result,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(String)) }
          attr_reader :carrier_passthrough_fee

          sig { params(carrier_passthrough_fee: String).void }
          attr_writer :carrier_passthrough_fee

          sig { returns(T.nilable(String)) }
          attr_reader :connection

          sig { params(connection: String).void }
          attr_writer :connection

          sig { returns(T.nilable(String)) }
          attr_reader :cost

          sig { params(cost: String).void }
          attr_writer :cost

          sig { returns(T.nilable(String)) }
          attr_reader :currency

          sig { params(currency: String).void }
          attr_writer :currency

          sig { returns(T.nilable(String)) }
          attr_reader :delivered

          sig { params(delivered: String).void }
          attr_writer :delivered

          sig { returns(T.nilable(String)) }
          attr_reader :direction

          sig { params(direction: String).void }
          attr_writer :direction

          sig { returns(T.nilable(String)) }
          attr_reader :message_type

          sig { params(message_type: String).void }
          attr_writer :message_type

          sig { returns(T.nilable(String)) }
          attr_reader :parts

          sig { params(parts: String).void }
          attr_writer :parts

          sig { returns(T.nilable(String)) }
          attr_reader :product

          sig { params(product: String).void }
          attr_writer :product

          sig { returns(T.nilable(String)) }
          attr_reader :profile_id

          sig { params(profile_id: String).void }
          attr_writer :profile_id

          sig { returns(T.nilable(String)) }
          attr_reader :received

          sig { params(received: String).void }
          attr_writer :received

          sig { returns(T.nilable(String)) }
          attr_reader :sent

          sig { params(sent: String).void }
          attr_writer :sent

          sig { returns(T.nilable(String)) }
          attr_reader :tags

          sig { params(tags: String).void }
          attr_writer :tags

          sig { returns(T.nilable(String)) }
          attr_reader :tn_type

          sig { params(tn_type: String).void }
          attr_writer :tn_type

          sig do
            params(
              carrier_passthrough_fee: String,
              connection: String,
              cost: String,
              currency: String,
              delivered: String,
              direction: String,
              message_type: String,
              parts: String,
              product: String,
              profile_id: String,
              received: String,
              sent: String,
              tags: String,
              tn_type: String
            ).returns(T.attached_class)
          end
          def self.new(
            carrier_passthrough_fee: nil,
            connection: nil,
            cost: nil,
            currency: nil,
            delivered: nil,
            direction: nil,
            message_type: nil,
            parts: nil,
            product: nil,
            profile_id: nil,
            received: nil,
            sent: nil,
            tags: nil,
            tn_type: nil
          )
          end

          sig do
            override.returns(
              {
                carrier_passthrough_fee: String,
                connection: String,
                cost: String,
                currency: String,
                delivered: String,
                direction: String,
                message_type: String,
                parts: String,
                product: String,
                profile_id: String,
                received: String,
                sent: String,
                tags: String,
                tn_type: String
              }
            )
          end
          def to_hash
          end
        end

        module Status
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::Reports::MdrUsageReport::Status)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PENDING =
            T.let(
              :PENDING,
              Telnyx::Reports::MdrUsageReport::Status::TaggedSymbol
            )
          COMPLETE =
            T.let(
              :COMPLETE,
              Telnyx::Reports::MdrUsageReport::Status::TaggedSymbol
            )
          FAILED =
            T.let(
              :FAILED,
              Telnyx::Reports::MdrUsageReport::Status::TaggedSymbol
            )
          EXPIRED =
            T.let(
              :EXPIRED,
              Telnyx::Reports::MdrUsageReport::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Telnyx::Reports::MdrUsageReport::Status::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
