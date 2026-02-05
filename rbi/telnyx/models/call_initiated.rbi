# typed: strong

module Telnyx
  module Models
    class CallInitiated < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Telnyx::CallInitiated, Telnyx::Internal::AnyHash) }

      # Identifies the type of resource.
      sig { returns(T.nilable(String)) }
      attr_reader :id

      sig { params(id: String).void }
      attr_writer :id

      # The type of event being delivered.
      sig { returns(T.nilable(Telnyx::CallInitiated::EventType::TaggedSymbol)) }
      attr_reader :event_type

      sig do
        params(event_type: Telnyx::CallInitiated::EventType::OrSymbol).void
      end
      attr_writer :event_type

      # ISO 8601 datetime of when the event occurred.
      sig { returns(T.nilable(Time)) }
      attr_reader :occurred_at

      sig { params(occurred_at: Time).void }
      attr_writer :occurred_at

      sig { returns(T.nilable(Telnyx::CallInitiated::Payload)) }
      attr_reader :payload

      sig { params(payload: Telnyx::CallInitiated::Payload::OrHash).void }
      attr_writer :payload

      # Identifies the type of the resource.
      sig do
        returns(T.nilable(Telnyx::CallInitiated::RecordType::TaggedSymbol))
      end
      attr_reader :record_type

      sig do
        params(record_type: Telnyx::CallInitiated::RecordType::OrSymbol).void
      end
      attr_writer :record_type

      sig do
        params(
          id: String,
          event_type: Telnyx::CallInitiated::EventType::OrSymbol,
          occurred_at: Time,
          payload: Telnyx::CallInitiated::Payload::OrHash,
          record_type: Telnyx::CallInitiated::RecordType::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Identifies the type of resource.
        id: nil,
        # The type of event being delivered.
        event_type: nil,
        # ISO 8601 datetime of when the event occurred.
        occurred_at: nil,
        payload: nil,
        # Identifies the type of the resource.
        record_type: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            event_type: Telnyx::CallInitiated::EventType::TaggedSymbol,
            occurred_at: Time,
            payload: Telnyx::CallInitiated::Payload,
            record_type: Telnyx::CallInitiated::RecordType::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      # The type of event being delivered.
      module EventType
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::CallInitiated::EventType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CALL_INITIATED =
          T.let(
            :"call.initiated",
            Telnyx::CallInitiated::EventType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::CallInitiated::EventType::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      class Payload < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::CallInitiated::Payload, Telnyx::Internal::AnyHash)
          end

        # Call ID used to issue commands via Call Control API.
        sig { returns(T.nilable(String)) }
        attr_reader :call_control_id

        sig { params(call_control_id: String).void }
        attr_writer :call_control_id

        # ID that is unique to the call and can be used to correlate webhook events.
        sig { returns(T.nilable(String)) }
        attr_reader :call_leg_id

        sig { params(call_leg_id: String).void }
        attr_writer :call_leg_id

        # Call screening result.
        sig { returns(T.nilable(String)) }
        attr_reader :call_screening_result

        sig { params(call_screening_result: String).void }
        attr_writer :call_screening_result

        # ID that is unique to the call session and can be used to correlate webhook
        # events. Call session is a group of related call legs that logically belong to
        # the same phone call, e.g. an inbound and outbound leg of a transferred call.
        sig { returns(T.nilable(String)) }
        attr_reader :call_session_id

        sig { params(call_session_id: String).void }
        attr_writer :call_session_id

        # Caller id.
        sig { returns(T.nilable(String)) }
        attr_reader :caller_id_name

        sig { params(caller_id_name: String).void }
        attr_writer :caller_id_name

        # State received from a command.
        sig { returns(T.nilable(String)) }
        attr_reader :client_state

        sig { params(client_state: String).void }
        attr_writer :client_state

        # The list of comma-separated codecs enabled for the connection.
        sig { returns(T.nilable(String)) }
        attr_reader :connection_codecs

        sig { params(connection_codecs: String).void }
        attr_writer :connection_codecs

        # Call Control App ID (formerly Telnyx connection ID) used in the call.
        sig { returns(T.nilable(String)) }
        attr_reader :connection_id

        sig { params(connection_id: String).void }
        attr_writer :connection_id

        # Custom headers from sip invite
        sig { returns(T.nilable(T::Array[Telnyx::CustomSipHeader])) }
        attr_reader :custom_headers

        sig do
          params(custom_headers: T::Array[Telnyx::CustomSipHeader::OrHash]).void
        end
        attr_writer :custom_headers

        # Whether the call is `incoming` or `outgoing`.
        sig do
          returns(
            T.nilable(Telnyx::CallInitiated::Payload::Direction::TaggedSymbol)
          )
        end
        attr_reader :direction

        sig do
          params(
            direction: Telnyx::CallInitiated::Payload::Direction::OrSymbol
          ).void
        end
        attr_writer :direction

        # Number or SIP URI placing the call.
        sig { returns(T.nilable(String)) }
        attr_reader :from

        sig { params(from: String).void }
        attr_writer :from

        # The list of comma-separated codecs offered by caller.
        sig { returns(T.nilable(String)) }
        attr_reader :offered_codecs

        sig { params(offered_codecs: String).void }
        attr_writer :offered_codecs

        # SHAKEN/STIR attestation level.
        sig { returns(T.nilable(String)) }
        attr_reader :shaken_stir_attestation

        sig { params(shaken_stir_attestation: String).void }
        attr_writer :shaken_stir_attestation

        # Whether attestation was successfully validated or not.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :shaken_stir_validated

        sig { params(shaken_stir_validated: T::Boolean).void }
        attr_writer :shaken_stir_validated

        # User-to-User and Diversion headers from sip invite.
        sig { returns(T.nilable(T::Array[Telnyx::SipHeader])) }
        attr_reader :sip_headers

        sig { params(sip_headers: T::Array[Telnyx::SipHeader::OrHash]).void }
        attr_writer :sip_headers

        # ISO 8601 datetime of when the call started.
        sig { returns(T.nilable(Time)) }
        attr_reader :start_time

        sig { params(start_time: Time).void }
        attr_writer :start_time

        # State received from a command.
        sig do
          returns(
            T.nilable(Telnyx::CallInitiated::Payload::State::TaggedSymbol)
          )
        end
        attr_reader :state

        sig do
          params(state: Telnyx::CallInitiated::Payload::State::OrSymbol).void
        end
        attr_writer :state

        # Array of tags associated to number.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :tags

        sig { params(tags: T::Array[String]).void }
        attr_writer :tags

        # Destination number or SIP URI of the call.
        sig { returns(T.nilable(String)) }
        attr_reader :to

        sig { params(to: String).void }
        attr_writer :to

        sig do
          params(
            call_control_id: String,
            call_leg_id: String,
            call_screening_result: String,
            call_session_id: String,
            caller_id_name: String,
            client_state: String,
            connection_codecs: String,
            connection_id: String,
            custom_headers: T::Array[Telnyx::CustomSipHeader::OrHash],
            direction: Telnyx::CallInitiated::Payload::Direction::OrSymbol,
            from: String,
            offered_codecs: String,
            shaken_stir_attestation: String,
            shaken_stir_validated: T::Boolean,
            sip_headers: T::Array[Telnyx::SipHeader::OrHash],
            start_time: Time,
            state: Telnyx::CallInitiated::Payload::State::OrSymbol,
            tags: T::Array[String],
            to: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Call ID used to issue commands via Call Control API.
          call_control_id: nil,
          # ID that is unique to the call and can be used to correlate webhook events.
          call_leg_id: nil,
          # Call screening result.
          call_screening_result: nil,
          # ID that is unique to the call session and can be used to correlate webhook
          # events. Call session is a group of related call legs that logically belong to
          # the same phone call, e.g. an inbound and outbound leg of a transferred call.
          call_session_id: nil,
          # Caller id.
          caller_id_name: nil,
          # State received from a command.
          client_state: nil,
          # The list of comma-separated codecs enabled for the connection.
          connection_codecs: nil,
          # Call Control App ID (formerly Telnyx connection ID) used in the call.
          connection_id: nil,
          # Custom headers from sip invite
          custom_headers: nil,
          # Whether the call is `incoming` or `outgoing`.
          direction: nil,
          # Number or SIP URI placing the call.
          from: nil,
          # The list of comma-separated codecs offered by caller.
          offered_codecs: nil,
          # SHAKEN/STIR attestation level.
          shaken_stir_attestation: nil,
          # Whether attestation was successfully validated or not.
          shaken_stir_validated: nil,
          # User-to-User and Diversion headers from sip invite.
          sip_headers: nil,
          # ISO 8601 datetime of when the call started.
          start_time: nil,
          # State received from a command.
          state: nil,
          # Array of tags associated to number.
          tags: nil,
          # Destination number or SIP URI of the call.
          to: nil
        )
        end

        sig do
          override.returns(
            {
              call_control_id: String,
              call_leg_id: String,
              call_screening_result: String,
              call_session_id: String,
              caller_id_name: String,
              client_state: String,
              connection_codecs: String,
              connection_id: String,
              custom_headers: T::Array[Telnyx::CustomSipHeader],
              direction:
                Telnyx::CallInitiated::Payload::Direction::TaggedSymbol,
              from: String,
              offered_codecs: String,
              shaken_stir_attestation: String,
              shaken_stir_validated: T::Boolean,
              sip_headers: T::Array[Telnyx::SipHeader],
              start_time: Time,
              state: Telnyx::CallInitiated::Payload::State::TaggedSymbol,
              tags: T::Array[String],
              to: String
            }
          )
        end
        def to_hash
        end

        # Whether the call is `incoming` or `outgoing`.
        module Direction
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::CallInitiated::Payload::Direction)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          INCOMING =
            T.let(
              :incoming,
              Telnyx::CallInitiated::Payload::Direction::TaggedSymbol
            )
          OUTGOING =
            T.let(
              :outgoing,
              Telnyx::CallInitiated::Payload::Direction::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Telnyx::CallInitiated::Payload::Direction::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        # State received from a command.
        module State
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::CallInitiated::Payload::State)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PARKED =
            T.let(:parked, Telnyx::CallInitiated::Payload::State::TaggedSymbol)
          BRIDGING =
            T.let(
              :bridging,
              Telnyx::CallInitiated::Payload::State::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Telnyx::CallInitiated::Payload::State::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end

      # Identifies the type of the resource.
      module RecordType
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::CallInitiated::RecordType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        EVENT = T.let(:event, Telnyx::CallInitiated::RecordType::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::CallInitiated::RecordType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
