# typed: strong

module Telnyx
  module Models
    class ConnectionListActiveCallsResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::ConnectionListActiveCallsResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig do
        returns(
          T.nilable(
            T::Array[Telnyx::Models::ConnectionListActiveCallsResponse::Data]
          )
        )
      end
      attr_reader :data

      sig do
        params(
          data:
            T::Array[
              Telnyx::Models::ConnectionListActiveCallsResponse::Data::OrHash
            ]
        ).void
      end
      attr_writer :data

      sig do
        returns(
          T.nilable(Telnyx::Models::ConnectionListActiveCallsResponse::Meta)
        )
      end
      attr_reader :meta

      sig do
        params(
          meta: Telnyx::Models::ConnectionListActiveCallsResponse::Meta::OrHash
        ).void
      end
      attr_writer :meta

      sig do
        params(
          data:
            T::Array[
              Telnyx::Models::ConnectionListActiveCallsResponse::Data::OrHash
            ],
          meta: Telnyx::Models::ConnectionListActiveCallsResponse::Meta::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data: nil, meta: nil)
      end

      sig do
        override.returns(
          {
            data:
              T::Array[Telnyx::Models::ConnectionListActiveCallsResponse::Data],
            meta: Telnyx::Models::ConnectionListActiveCallsResponse::Meta
          }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::ConnectionListActiveCallsResponse::Data,
              Telnyx::Internal::AnyHash
            )
          end

        # Unique identifier and token for controlling the call.
        sig { returns(String) }
        attr_accessor :call_control_id

        # Indicates the duration of the call in seconds
        sig { returns(Integer) }
        attr_accessor :call_duration

        # ID that is unique to the call and can be used to correlate webhook events
        sig { returns(String) }
        attr_accessor :call_leg_id

        # ID that is unique to the call session and can be used to correlate webhook
        # events. Call session is a group of related call legs that logically belong to
        # the same phone call, e.g. an inbound and outbound leg of a transferred call
        sig { returns(String) }
        attr_accessor :call_session_id

        # State received from a command.
        sig { returns(String) }
        attr_accessor :client_state

        sig do
          returns(
            Telnyx::Models::ConnectionListActiveCallsResponse::Data::RecordType::TaggedSymbol
          )
        end
        attr_accessor :record_type

        sig do
          params(
            call_control_id: String,
            call_duration: Integer,
            call_leg_id: String,
            call_session_id: String,
            client_state: String,
            record_type:
              Telnyx::Models::ConnectionListActiveCallsResponse::Data::RecordType::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Unique identifier and token for controlling the call.
          call_control_id:,
          # Indicates the duration of the call in seconds
          call_duration:,
          # ID that is unique to the call and can be used to correlate webhook events
          call_leg_id:,
          # ID that is unique to the call session and can be used to correlate webhook
          # events. Call session is a group of related call legs that logically belong to
          # the same phone call, e.g. an inbound and outbound leg of a transferred call
          call_session_id:,
          # State received from a command.
          client_state:,
          record_type:
        )
        end

        sig do
          override.returns(
            {
              call_control_id: String,
              call_duration: Integer,
              call_leg_id: String,
              call_session_id: String,
              client_state: String,
              record_type:
                Telnyx::Models::ConnectionListActiveCallsResponse::Data::RecordType::TaggedSymbol
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
                Telnyx::Models::ConnectionListActiveCallsResponse::Data::RecordType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CALL =
            T.let(
              :call,
              Telnyx::Models::ConnectionListActiveCallsResponse::Data::RecordType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Models::ConnectionListActiveCallsResponse::Data::RecordType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      class Meta < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::ConnectionListActiveCallsResponse::Meta,
              Telnyx::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              Telnyx::Models::ConnectionListActiveCallsResponse::Meta::Cursors
            )
          )
        end
        attr_reader :cursors

        sig do
          params(
            cursors:
              Telnyx::Models::ConnectionListActiveCallsResponse::Meta::Cursors::OrHash
          ).void
        end
        attr_writer :cursors

        # Path to next page.
        sig { returns(T.nilable(String)) }
        attr_reader :next_

        sig { params(next_: String).void }
        attr_writer :next_

        # Path to previous page.
        sig { returns(T.nilable(String)) }
        attr_reader :previous

        sig { params(previous: String).void }
        attr_writer :previous

        sig { returns(T.nilable(Integer)) }
        attr_reader :total_items

        sig { params(total_items: Integer).void }
        attr_writer :total_items

        sig do
          params(
            cursors:
              Telnyx::Models::ConnectionListActiveCallsResponse::Meta::Cursors::OrHash,
            next_: String,
            previous: String,
            total_items: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          cursors: nil,
          # Path to next page.
          next_: nil,
          # Path to previous page.
          previous: nil,
          total_items: nil
        )
        end

        sig do
          override.returns(
            {
              cursors:
                Telnyx::Models::ConnectionListActiveCallsResponse::Meta::Cursors,
              next_: String,
              previous: String,
              total_items: Integer
            }
          )
        end
        def to_hash
        end

        class Cursors < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::ConnectionListActiveCallsResponse::Meta::Cursors,
                Telnyx::Internal::AnyHash
              )
            end

          # Opaque identifier of next page.
          sig { returns(T.nilable(String)) }
          attr_reader :after

          sig { params(after: String).void }
          attr_writer :after

          # Opaque identifier of previous page.
          sig { returns(T.nilable(String)) }
          attr_reader :before

          sig { params(before: String).void }
          attr_writer :before

          sig do
            params(after: String, before: String).returns(T.attached_class)
          end
          def self.new(
            # Opaque identifier of next page.
            after: nil,
            # Opaque identifier of previous page.
            before: nil
          )
          end

          sig { override.returns({ after: String, before: String }) }
          def to_hash
          end
        end
      end
    end
  end
end
