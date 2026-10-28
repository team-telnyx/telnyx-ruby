# typed: strong

module Telnyx
  module Models
    module Email
      module IPPools
        class IPCreateResponse < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::Email::IPPools::IPCreateResponse,
                Telnyx::Internal::AnyHash
              )
            end

          sig do
            returns(Telnyx::Models::Email::IPPools::IPCreateResponse::Data)
          end
          attr_reader :data

          sig do
            params(
              data:
                Telnyx::Models::Email::IPPools::IPCreateResponse::Data::OrHash
            ).void
          end
          attr_writer :data

          sig do
            params(
              data:
                Telnyx::Models::Email::IPPools::IPCreateResponse::Data::OrHash
            ).returns(T.attached_class)
          end
          def self.new(data:)
          end

          sig do
            override.returns(
              { data: Telnyx::Models::Email::IPPools::IPCreateResponse::Data }
            )
          end
          def to_hash
          end

          class Data < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Models::Email::IPPools::IPCreateResponse::Data,
                  Telnyx::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(Time)) }
            attr_reader :created_at

            sig { params(created_at: Time).void }
            attr_writer :created_at

            sig { returns(T.nilable(String)) }
            attr_reader :dedicated_ip_id

            sig { params(dedicated_ip_id: String).void }
            attr_writer :dedicated_ip_id

            sig { returns(T.nilable(String)) }
            attr_reader :pool_id

            sig { params(pool_id: String).void }
            attr_writer :pool_id

            sig { returns(T.nilable(Integer)) }
            attr_reader :weight

            sig { params(weight: Integer).void }
            attr_writer :weight

            sig do
              params(
                created_at: Time,
                dedicated_ip_id: String,
                pool_id: String,
                weight: Integer
              ).returns(T.attached_class)
            end
            def self.new(
              created_at: nil,
              dedicated_ip_id: nil,
              pool_id: nil,
              weight: nil
            )
            end

            sig do
              override.returns(
                {
                  created_at: Time,
                  dedicated_ip_id: String,
                  pool_id: String,
                  weight: Integer
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
