# typed: strong

module Telnyx
  module Models
    module Reports
      class MdrUsageReportCreateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Reports::MdrUsageReportCreateParams,
              Telnyx::Internal::AnyHash
            )
          end

        sig do
          returns(
            Telnyx::Reports::MdrUsageReportCreateParams::AggregationType::OrSymbol
          )
        end
        attr_accessor :aggregation_type

        sig { returns(Time) }
        attr_accessor :end_date

        sig { returns(Time) }
        attr_accessor :start_date

        sig { returns(T.nilable(String)) }
        attr_reader :profiles

        sig { params(profiles: String).void }
        attr_writer :profiles

        sig do
          params(
            aggregation_type:
              Telnyx::Reports::MdrUsageReportCreateParams::AggregationType::OrSymbol,
            end_date: Time,
            start_date: Time,
            profiles: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          aggregation_type:,
          end_date:,
          start_date:,
          profiles: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              aggregation_type:
                Telnyx::Reports::MdrUsageReportCreateParams::AggregationType::OrSymbol,
              end_date: Time,
              start_date: Time,
              profiles: String,
              request_options: Telnyx::RequestOptions
            }
          )
        end
        def to_hash
        end

        module AggregationType
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Reports::MdrUsageReportCreateParams::AggregationType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          NO_AGGREGATION =
            T.let(
              :NO_AGGREGATION,
              Telnyx::Reports::MdrUsageReportCreateParams::AggregationType::TaggedSymbol
            )
          PROFILE =
            T.let(
              :PROFILE,
              Telnyx::Reports::MdrUsageReportCreateParams::AggregationType::TaggedSymbol
            )
          TAGS =
            T.let(
              :TAGS,
              Telnyx::Reports::MdrUsageReportCreateParams::AggregationType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Reports::MdrUsageReportCreateParams::AggregationType::TaggedSymbol
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
