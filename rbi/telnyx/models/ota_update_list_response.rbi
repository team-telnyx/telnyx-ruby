# typed: strong

module Telnyx
  module Models
    class OtaUpdateListResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::OtaUpdateListResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig do
        returns(
          T.nilable(T::Array[Telnyx::Models::OtaUpdateListResponse::Data])
        )
      end
      attr_reader :data

      sig do
        params(
          data: T::Array[Telnyx::Models::OtaUpdateListResponse::Data::OrHash]
        ).void
      end
      attr_writer :data

      sig { returns(T.nilable(Telnyx::PaginationMeta)) }
      attr_reader :meta

      sig { params(meta: Telnyx::PaginationMeta::OrHash).void }
      attr_writer :meta

      sig do
        params(
          data: T::Array[Telnyx::Models::OtaUpdateListResponse::Data::OrHash],
          meta: Telnyx::PaginationMeta::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data: nil, meta: nil)
      end

      sig do
        override.returns(
          {
            data: T::Array[Telnyx::Models::OtaUpdateListResponse::Data],
            meta: Telnyx::PaginationMeta
          }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::OtaUpdateListResponse::Data,
              Telnyx::Internal::AnyHash
            )
          end

        # The identification UUID of the related SIM card resource.
        sig { returns(T.nilable(String)) }
        attr_reader :sim_card_id

        sig { params(sim_card_id: String).void }
        attr_writer :sim_card_id

        sig do
          returns(
            T.nilable(
              Telnyx::Models::OtaUpdateListResponse::Data::Status::TaggedSymbol
            )
          )
        end
        attr_reader :status

        sig do
          params(
            status:
              Telnyx::Models::OtaUpdateListResponse::Data::Status::OrSymbol
          ).void
        end
        attr_writer :status

        # Represents the type of the operation requested. This will relate directly to the
        # source of the request.
        sig do
          returns(
            T.nilable(
              Telnyx::Models::OtaUpdateListResponse::Data::Type::TaggedSymbol
            )
          )
        end
        attr_reader :type

        sig do
          params(
            type: Telnyx::Models::OtaUpdateListResponse::Data::Type::OrSymbol
          ).void
        end
        attr_writer :type

        # Identifies the resource.
        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        # ISO 8601 formatted date-time indicating when the resource was created.
        sig { returns(T.nilable(String)) }
        attr_reader :created_at

        sig { params(created_at: String).void }
        attr_writer :created_at

        sig { returns(T.nilable(String)) }
        attr_reader :record_type

        sig { params(record_type: String).void }
        attr_writer :record_type

        # ISO 8601 formatted date-time indicating when the resource was updated.
        sig { returns(T.nilable(String)) }
        attr_reader :updated_at

        sig { params(updated_at: String).void }
        attr_writer :updated_at

        # This object represents an Over the Air (OTA) update request. It allows tracking
        # the current status of a operation that apply settings in a particular SIM card.
        # <br/><br/>
        sig do
          params(
            id: String,
            created_at: String,
            record_type: String,
            sim_card_id: String,
            status:
              Telnyx::Models::OtaUpdateListResponse::Data::Status::OrSymbol,
            type: Telnyx::Models::OtaUpdateListResponse::Data::Type::OrSymbol,
            updated_at: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Identifies the resource.
          id: nil,
          # ISO 8601 formatted date-time indicating when the resource was created.
          created_at: nil,
          record_type: nil,
          # The identification UUID of the related SIM card resource.
          sim_card_id: nil,
          status: nil,
          # Represents the type of the operation requested. This will relate directly to the
          # source of the request.
          type: nil,
          # ISO 8601 formatted date-time indicating when the resource was updated.
          updated_at: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              created_at: String,
              record_type: String,
              sim_card_id: String,
              status:
                Telnyx::Models::OtaUpdateListResponse::Data::Status::TaggedSymbol,
              type:
                Telnyx::Models::OtaUpdateListResponse::Data::Type::TaggedSymbol,
              updated_at: String
            }
          )
        end
        def to_hash
        end

        module Status
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::Models::OtaUpdateListResponse::Data::Status)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          IN_PROGRESS =
            T.let(
              :"in-progress",
              Telnyx::Models::OtaUpdateListResponse::Data::Status::TaggedSymbol
            )
          COMPLETED =
            T.let(
              :completed,
              Telnyx::Models::OtaUpdateListResponse::Data::Status::TaggedSymbol
            )
          FAILED =
            T.let(
              :failed,
              Telnyx::Models::OtaUpdateListResponse::Data::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Models::OtaUpdateListResponse::Data::Status::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Represents the type of the operation requested. This will relate directly to the
        # source of the request.
        module Type
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::Models::OtaUpdateListResponse::Data::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          SIM_CARD_NETWORK_PREFERENCES =
            T.let(
              :sim_card_network_preferences,
              Telnyx::Models::OtaUpdateListResponse::Data::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Models::OtaUpdateListResponse::Data::Type::TaggedSymbol
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
