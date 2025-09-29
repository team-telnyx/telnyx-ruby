# typed: strong

module Telnyx
  module Models
    class SimCardGetPublicIPResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::SimCardGetPublicIPResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig do
        returns(T.nilable(Telnyx::Models::SimCardGetPublicIPResponse::Data))
      end
      attr_reader :data

      sig do
        params(
          data: Telnyx::Models::SimCardGetPublicIPResponse::Data::OrHash
        ).void
      end
      attr_writer :data

      sig do
        params(
          data: Telnyx::Models::SimCardGetPublicIPResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data: nil)
      end

      sig do
        override.returns(
          { data: Telnyx::Models::SimCardGetPublicIPResponse::Data }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::SimCardGetPublicIPResponse::Data,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(String)) }
        attr_reader :sim_card_id

        sig { params(sim_card_id: String).void }
        attr_writer :sim_card_id

        # ISO 8601 formatted date-time indicating when the resource was created.
        sig { returns(T.nilable(String)) }
        attr_reader :created_at

        sig { params(created_at: String).void }
        attr_writer :created_at

        # The provisioned IP address. This attribute will only be available when
        # underlying resource status is in a "provisioned" status.
        sig { returns(T.nilable(String)) }
        attr_reader :ip

        sig { params(ip: String).void }
        attr_writer :ip

        sig { returns(T.nilable(String)) }
        attr_reader :record_type

        sig { params(record_type: String).void }
        attr_writer :record_type

        sig { returns(T.nilable(String)) }
        attr_reader :region_code

        sig { params(region_code: String).void }
        attr_writer :region_code

        sig do
          returns(
            T.nilable(
              Telnyx::Models::SimCardGetPublicIPResponse::Data::Type::TaggedSymbol
            )
          )
        end
        attr_reader :type

        sig do
          params(
            type:
              Telnyx::Models::SimCardGetPublicIPResponse::Data::Type::OrSymbol
          ).void
        end
        attr_writer :type

        # ISO 8601 formatted date-time indicating when the resource was updated.
        sig { returns(T.nilable(String)) }
        attr_reader :updated_at

        sig { params(updated_at: String).void }
        attr_writer :updated_at

        sig do
          params(
            created_at: String,
            ip: String,
            record_type: String,
            region_code: String,
            sim_card_id: String,
            type:
              Telnyx::Models::SimCardGetPublicIPResponse::Data::Type::OrSymbol,
            updated_at: String
          ).returns(T.attached_class)
        end
        def self.new(
          # ISO 8601 formatted date-time indicating when the resource was created.
          created_at: nil,
          # The provisioned IP address. This attribute will only be available when
          # underlying resource status is in a "provisioned" status.
          ip: nil,
          record_type: nil,
          region_code: nil,
          sim_card_id: nil,
          type: nil,
          # ISO 8601 formatted date-time indicating when the resource was updated.
          updated_at: nil
        )
        end

        sig do
          override.returns(
            {
              created_at: String,
              ip: String,
              record_type: String,
              region_code: String,
              sim_card_id: String,
              type:
                Telnyx::Models::SimCardGetPublicIPResponse::Data::Type::TaggedSymbol,
              updated_at: String
            }
          )
        end
        def to_hash
        end

        module Type
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Models::SimCardGetPublicIPResponse::Data::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          IPV4 =
            T.let(
              :ipv4,
              Telnyx::Models::SimCardGetPublicIPResponse::Data::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Models::SimCardGetPublicIPResponse::Data::Type::TaggedSymbol
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
