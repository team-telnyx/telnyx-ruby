# typed: strong

module Telnyx
  module Models
    module Email
      class DedicatedIPListParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Email::DedicatedIPListParams,
              Telnyx::Internal::AnyHash
            )
          end

        # Return only IPs in this pool (exact match on `pool_id`). A value that is not a
        # UUID returns an empty list. An empty value applies no filter.
        sig { returns(T.nilable(String)) }
        attr_reader :filter_pool_id

        sig { params(filter_pool_id: String).void }
        attr_writer :filter_pool_id

        # Return only IPs in this region (exact, case-sensitive match on `region`). An
        # empty value applies no filter.
        sig { returns(T.nilable(String)) }
        attr_reader :filter_region

        sig { params(filter_region: String).void }
        attr_writer :filter_region

        # Return only IPs in this lifecycle status (exact match). Any other value returns
        # an empty list. An empty value applies no filter.
        sig do
          returns(
            T.nilable(
              Telnyx::Email::DedicatedIPListParams::FilterStatus::OrSymbol
            )
          )
        end
        attr_reader :filter_status

        sig do
          params(
            filter_status:
              Telnyx::Email::DedicatedIPListParams::FilterStatus::OrSymbol
          ).void
        end
        attr_writer :filter_status

        sig do
          params(
            filter_pool_id: String,
            filter_region: String,
            filter_status:
              Telnyx::Email::DedicatedIPListParams::FilterStatus::OrSymbol,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Return only IPs in this pool (exact match on `pool_id`). A value that is not a
          # UUID returns an empty list. An empty value applies no filter.
          filter_pool_id: nil,
          # Return only IPs in this region (exact, case-sensitive match on `region`). An
          # empty value applies no filter.
          filter_region: nil,
          # Return only IPs in this lifecycle status (exact match). Any other value returns
          # an empty list. An empty value applies no filter.
          filter_status: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              filter_pool_id: String,
              filter_region: String,
              filter_status:
                Telnyx::Email::DedicatedIPListParams::FilterStatus::OrSymbol,
              request_options: Telnyx::RequestOptions
            }
          )
        end
        def to_hash
        end

        # Return only IPs in this lifecycle status (exact match). Any other value returns
        # an empty list. An empty value applies no filter.
        module FilterStatus
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::Email::DedicatedIPListParams::FilterStatus)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PROVISIONING =
            T.let(
              :provisioning,
              Telnyx::Email::DedicatedIPListParams::FilterStatus::TaggedSymbol
            )
          WARMING_UP =
            T.let(
              :warming_up,
              Telnyx::Email::DedicatedIPListParams::FilterStatus::TaggedSymbol
            )
          ACTIVE =
            T.let(
              :active,
              Telnyx::Email::DedicatedIPListParams::FilterStatus::TaggedSymbol
            )
          SUSPENDED =
            T.let(
              :suspended,
              Telnyx::Email::DedicatedIPListParams::FilterStatus::TaggedSymbol
            )
          RELEASED =
            T.let(
              :released,
              Telnyx::Email::DedicatedIPListParams::FilterStatus::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Email::DedicatedIPListParams::FilterStatus::TaggedSymbol
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
