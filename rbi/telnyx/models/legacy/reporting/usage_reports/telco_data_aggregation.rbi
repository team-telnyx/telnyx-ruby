# typed: strong

module Telnyx
  module Models
    module Legacy
      module Reporting
        module UsageReports
          class TelcoDataAggregation < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Legacy::Reporting::UsageReports::TelcoDataAggregation,
                  Telnyx::Internal::AnyHash
                )
              end

            # Currency code
            sig { returns(T.nilable(String)) }
            attr_reader :currency

            sig { params(currency: String).void }
            attr_writer :currency

            # Total cost for this aggregation
            sig { returns(T.nilable(Float)) }
            attr_reader :total_cost

            sig { params(total_cost: Float).void }
            attr_writer :total_cost

            # Total number of lookups performed
            sig { returns(T.nilable(Integer)) }
            attr_reader :total_dips

            sig { params(total_dips: Integer).void }
            attr_writer :total_dips

            # Type of telco data lookup
            sig { returns(T.nilable(String)) }
            attr_reader :type

            sig { params(type: String).void }
            attr_writer :type

            sig do
              params(
                currency: String,
                total_cost: Float,
                total_dips: Integer,
                type: String
              ).returns(T.attached_class)
            end
            def self.new(
              # Currency code
              currency: nil,
              # Total cost for this aggregation
              total_cost: nil,
              # Total number of lookups performed
              total_dips: nil,
              # Type of telco data lookup
              type: nil
            )
            end

            sig do
              override.returns(
                {
                  currency: String,
                  total_cost: Float,
                  total_dips: Integer,
                  type: String
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
