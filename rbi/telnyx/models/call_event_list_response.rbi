# typed: strong

module Telnyx
  module Models
    class CallEventListResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::CallEventListResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig do
        returns(
          T.nilable(T::Array[Telnyx::Models::CallEventListResponse::Data])
        )
      end
      attr_reader :data

      sig do
        params(
          data: T::Array[Telnyx::Models::CallEventListResponse::Data::OrHash]
        ).void
      end
      attr_writer :data

      sig { returns(T.nilable(Telnyx::PaginationMeta)) }
      attr_reader :meta

      sig { params(meta: Telnyx::PaginationMeta::OrHash).void }
      attr_writer :meta

      sig do
        params(
          data: T::Array[Telnyx::Models::CallEventListResponse::Data::OrHash],
          meta: Telnyx::PaginationMeta::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data: nil, meta: nil)
      end

      sig do
        override.returns(
          {
            data: T::Array[Telnyx::Models::CallEventListResponse::Data],
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
              Telnyx::Models::CallEventListResponse::Data,
              Telnyx::Internal::AnyHash
            )
          end

        # Uniquely identifies an individual call leg.
        sig { returns(String) }
        attr_accessor :call_leg_id

        # Uniquely identifies the call control session. A session may include multiple
        # call leg events.
        sig { returns(String) }
        attr_accessor :call_session_id

        # Event timestamp
        sig { returns(String) }
        attr_accessor :event_timestamp

        # Event metadata, which includes raw event, and extra information based on event
        # type
        sig { returns(T.anything) }
        attr_accessor :metadata

        # Event name
        sig { returns(String) }
        attr_accessor :name

        sig do
          returns(
            Telnyx::Models::CallEventListResponse::Data::RecordType::TaggedSymbol
          )
        end
        attr_accessor :record_type

        # Event type
        sig do
          returns(
            Telnyx::Models::CallEventListResponse::Data::Type::TaggedSymbol
          )
        end
        attr_accessor :type

        sig do
          params(
            call_leg_id: String,
            call_session_id: String,
            event_timestamp: String,
            metadata: T.anything,
            name: String,
            record_type:
              Telnyx::Models::CallEventListResponse::Data::RecordType::OrSymbol,
            type: Telnyx::Models::CallEventListResponse::Data::Type::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Uniquely identifies an individual call leg.
          call_leg_id:,
          # Uniquely identifies the call control session. A session may include multiple
          # call leg events.
          call_session_id:,
          # Event timestamp
          event_timestamp:,
          # Event metadata, which includes raw event, and extra information based on event
          # type
          metadata:,
          # Event name
          name:,
          record_type:,
          # Event type
          type:
        )
        end

        sig do
          override.returns(
            {
              call_leg_id: String,
              call_session_id: String,
              event_timestamp: String,
              metadata: T.anything,
              name: String,
              record_type:
                Telnyx::Models::CallEventListResponse::Data::RecordType::TaggedSymbol,
              type:
                Telnyx::Models::CallEventListResponse::Data::Type::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        module RecordType
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Models::CallEventListResponse::Data::RecordType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CALL_EVENT =
            T.let(
              :call_event,
              Telnyx::Models::CallEventListResponse::Data::RecordType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Models::CallEventListResponse::Data::RecordType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Event type
        module Type
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::Models::CallEventListResponse::Data::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          COMMAND =
            T.let(
              :command,
              Telnyx::Models::CallEventListResponse::Data::Type::TaggedSymbol
            )
          WEBHOOK =
            T.let(
              :webhook,
              Telnyx::Models::CallEventListResponse::Data::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Models::CallEventListResponse::Data::Type::TaggedSymbol
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
