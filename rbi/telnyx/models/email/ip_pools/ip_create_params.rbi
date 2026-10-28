# typed: strong

module Telnyx
  module Models
    module Email
      module IPPools
        class IPCreateParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Email::IPPools::IPCreateParams,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :id

          # The dedicated IP to add. It must belong to the account, must not be released,
          # and must not already be in a pool.
          sig { returns(String) }
          attr_accessor :dedicated_ip_id

          # Relative routing weight for this IP in the pool. Positive integer; defaults
          # to 100.
          sig { returns(T.nilable(Integer)) }
          attr_reader :weight

          sig { params(weight: Integer).void }
          attr_writer :weight

          sig do
            params(
              id: String,
              dedicated_ip_id: String,
              weight: Integer,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            id:,
            # The dedicated IP to add. It must belong to the account, must not be released,
            # and must not already be in a pool.
            dedicated_ip_id:,
            # Relative routing weight for this IP in the pool. Positive integer; defaults
            # to 100.
            weight: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                id: String,
                dedicated_ip_id: String,
                weight: Integer,
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
