# typed: strong

module Telnyx
  module Models
    class GlobalIPUsageRetrieveResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::GlobalIPUsageRetrieveResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig do
        returns(
          T.nilable(
            T::Array[Telnyx::Models::GlobalIPUsageRetrieveResponse::Data]
          )
        )
      end
      attr_reader :data

      sig do
        params(
          data:
            T::Array[
              Telnyx::Models::GlobalIPUsageRetrieveResponse::Data::OrHash
            ]
        ).void
      end
      attr_writer :data

      sig do
        params(
          data:
            T::Array[
              Telnyx::Models::GlobalIPUsageRetrieveResponse::Data::OrHash
            ]
        ).returns(T.attached_class)
      end
      def self.new(data: nil)
      end

      sig do
        override.returns(
          {
            data: T::Array[Telnyx::Models::GlobalIPUsageRetrieveResponse::Data]
          }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::GlobalIPUsageRetrieveResponse::Data,
              Telnyx::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              Telnyx::Models::GlobalIPUsageRetrieveResponse::Data::GlobalIP
            )
          )
        end
        attr_reader :global_ip

        sig do
          params(
            global_ip:
              Telnyx::Models::GlobalIPUsageRetrieveResponse::Data::GlobalIP::OrHash
          ).void
        end
        attr_writer :global_ip

        sig do
          returns(
            T.nilable(
              Telnyx::Models::GlobalIPUsageRetrieveResponse::Data::Received
            )
          )
        end
        attr_reader :received

        sig do
          params(
            received:
              Telnyx::Models::GlobalIPUsageRetrieveResponse::Data::Received::OrHash
          ).void
        end
        attr_writer :received

        # The timestamp of the metric.
        sig { returns(T.nilable(Time)) }
        attr_reader :timestamp

        sig { params(timestamp: Time).void }
        attr_writer :timestamp

        sig do
          returns(
            T.nilable(
              Telnyx::Models::GlobalIPUsageRetrieveResponse::Data::Transmitted
            )
          )
        end
        attr_reader :transmitted

        sig do
          params(
            transmitted:
              Telnyx::Models::GlobalIPUsageRetrieveResponse::Data::Transmitted::OrHash
          ).void
        end
        attr_writer :transmitted

        sig do
          params(
            global_ip:
              Telnyx::Models::GlobalIPUsageRetrieveResponse::Data::GlobalIP::OrHash,
            received:
              Telnyx::Models::GlobalIPUsageRetrieveResponse::Data::Received::OrHash,
            timestamp: Time,
            transmitted:
              Telnyx::Models::GlobalIPUsageRetrieveResponse::Data::Transmitted::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          global_ip: nil,
          received: nil,
          # The timestamp of the metric.
          timestamp: nil,
          transmitted: nil
        )
        end

        sig do
          override.returns(
            {
              global_ip:
                Telnyx::Models::GlobalIPUsageRetrieveResponse::Data::GlobalIP,
              received:
                Telnyx::Models::GlobalIPUsageRetrieveResponse::Data::Received,
              timestamp: Time,
              transmitted:
                Telnyx::Models::GlobalIPUsageRetrieveResponse::Data::Transmitted
            }
          )
        end
        def to_hash
        end

        class GlobalIP < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::GlobalIPUsageRetrieveResponse::Data::GlobalIP,
                Telnyx::Internal::AnyHash
              )
            end

          # Global IP ID.
          sig { returns(T.nilable(String)) }
          attr_reader :id

          sig { params(id: String).void }
          attr_writer :id

          # The Global IP address.
          sig { returns(T.nilable(String)) }
          attr_reader :ip_address

          sig { params(ip_address: String).void }
          attr_writer :ip_address

          sig do
            params(id: String, ip_address: String).returns(T.attached_class)
          end
          def self.new(
            # Global IP ID.
            id: nil,
            # The Global IP address.
            ip_address: nil
          )
          end

          sig { override.returns({ id: String, ip_address: String }) }
          def to_hash
          end
        end

        class Received < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::GlobalIPUsageRetrieveResponse::Data::Received,
                Telnyx::Internal::AnyHash
              )
            end

          # The amount of data received.
          sig { returns(T.nilable(Float)) }
          attr_reader :amount

          sig { params(amount: Float).void }
          attr_writer :amount

          # The unit of the amount of data received.
          sig { returns(T.nilable(String)) }
          attr_reader :unit

          sig { params(unit: String).void }
          attr_writer :unit

          sig { params(amount: Float, unit: String).returns(T.attached_class) }
          def self.new(
            # The amount of data received.
            amount: nil,
            # The unit of the amount of data received.
            unit: nil
          )
          end

          sig { override.returns({ amount: Float, unit: String }) }
          def to_hash
          end
        end

        class Transmitted < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::GlobalIPUsageRetrieveResponse::Data::Transmitted,
                Telnyx::Internal::AnyHash
              )
            end

          # The amount of data transmitted.
          sig { returns(T.nilable(Float)) }
          attr_reader :amount

          sig { params(amount: Float).void }
          attr_writer :amount

          # The unit of the amount of data transmitted.
          sig { returns(T.nilable(String)) }
          attr_reader :unit

          sig { params(unit: String).void }
          attr_writer :unit

          sig { params(amount: Float, unit: String).returns(T.attached_class) }
          def self.new(
            # The amount of data transmitted.
            amount: nil,
            # The unit of the amount of data transmitted.
            unit: nil
          )
          end

          sig { override.returns({ amount: Float, unit: String }) }
          def to_hash
          end
        end
      end
    end
  end
end
