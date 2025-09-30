# typed: strong

module Telnyx
  module Models
    module Storage
      module Buckets
        class UsageGetAPIUsageParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Storage::Buckets::UsageGetAPIUsageParams,
                Telnyx::Internal::AnyHash
              )
            end

          # Consolidated filter parameter (deepObject style). Originally:
          # filter[start_time], filter[end_time]
          sig do
            returns(Telnyx::Storage::Buckets::UsageGetAPIUsageParams::Filter)
          end
          attr_reader :filter

          sig do
            params(
              filter:
                Telnyx::Storage::Buckets::UsageGetAPIUsageParams::Filter::OrHash
            ).void
          end
          attr_writer :filter

          sig do
            params(
              filter:
                Telnyx::Storage::Buckets::UsageGetAPIUsageParams::Filter::OrHash,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            # Consolidated filter parameter (deepObject style). Originally:
            # filter[start_time], filter[end_time]
            filter:,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                filter:
                  Telnyx::Storage::Buckets::UsageGetAPIUsageParams::Filter,
                request_options: Telnyx::RequestOptions
              }
            )
          end
          def to_hash
          end

          class Filter < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Storage::Buckets::UsageGetAPIUsageParams::Filter,
                  Telnyx::Internal::AnyHash
                )
              end

            # The end time of the period to filter the usage (ISO microsecond format)
            sig { returns(Time) }
            attr_accessor :end_time

            # The start time of the period to filter the usage (ISO microsecond format)
            sig { returns(Time) }
            attr_accessor :start_time

            # Consolidated filter parameter (deepObject style). Originally:
            # filter[start_time], filter[end_time]
            sig do
              params(end_time: Time, start_time: Time).returns(T.attached_class)
            end
            def self.new(
              # The end time of the period to filter the usage (ISO microsecond format)
              end_time:,
              # The start time of the period to filter the usage (ISO microsecond format)
              start_time:
            )
            end

            sig { override.returns({ end_time: Time, start_time: Time }) }
            def to_hash
            end
          end
        end
      end
    end
  end
end
