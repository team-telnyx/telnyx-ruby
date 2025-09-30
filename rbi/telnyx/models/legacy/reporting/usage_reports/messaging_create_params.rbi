# typed: strong

module Telnyx
  module Models
    module Legacy
      module Reporting
        module UsageReports
          class MessagingCreateParams < Telnyx::Internal::Type::BaseModel
            extend Telnyx::Internal::Type::RequestParameters::Converter
            include Telnyx::Internal::Type::RequestParameters

            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Legacy::Reporting::UsageReports::MessagingCreateParams,
                  Telnyx::Internal::AnyHash
                )
              end

            # Aggregation type: No aggregation = 0, By Messaging Profile = 1, By Tags = 2
            sig { returns(Integer) }
            attr_accessor :aggregation_type

            sig { returns(T.nilable(Time)) }
            attr_reader :end_time

            sig { params(end_time: Time).void }
            attr_writer :end_time

            # List of managed accounts to include
            sig { returns(T.nilable(T::Array[String])) }
            attr_reader :managed_accounts

            sig { params(managed_accounts: T::Array[String]).void }
            attr_writer :managed_accounts

            # List of messaging profile IDs to filter by
            sig { returns(T.nilable(T::Array[String])) }
            attr_reader :profiles

            sig { params(profiles: T::Array[String]).void }
            attr_writer :profiles

            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :select_all_managed_accounts

            sig { params(select_all_managed_accounts: T::Boolean).void }
            attr_writer :select_all_managed_accounts

            sig { returns(T.nilable(Time)) }
            attr_reader :start_time

            sig { params(start_time: Time).void }
            attr_writer :start_time

            sig do
              params(
                aggregation_type: Integer,
                end_time: Time,
                managed_accounts: T::Array[String],
                profiles: T::Array[String],
                select_all_managed_accounts: T::Boolean,
                start_time: Time,
                request_options: Telnyx::RequestOptions::OrHash
              ).returns(T.attached_class)
            end
            def self.new(
              # Aggregation type: No aggregation = 0, By Messaging Profile = 1, By Tags = 2
              aggregation_type:,
              end_time: nil,
              # List of managed accounts to include
              managed_accounts: nil,
              # List of messaging profile IDs to filter by
              profiles: nil,
              select_all_managed_accounts: nil,
              start_time: nil,
              request_options: {}
            )
            end

            sig do
              override.returns(
                {
                  aggregation_type: Integer,
                  end_time: Time,
                  managed_accounts: T::Array[String],
                  profiles: T::Array[String],
                  select_all_managed_accounts: T::Boolean,
                  start_time: Time,
                  request_options: Telnyx::RequestOptions
                }
              )
            end
            def to_hash
            end
          end
        end
      end
    end
  end
end
