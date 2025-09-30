# typed: strong

module Telnyx
  module Models
    class FaxSendingStartedWebhookEvent < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::FaxSendingStartedWebhookEvent,
            Telnyx::Internal::AnyHash
          )
        end

      # Identifies the type of resource.
      sig { returns(T.nilable(String)) }
      attr_reader :id

      sig { params(id: String).void }
      attr_writer :id

      # The type of event being delivered.
      sig do
        returns(
          T.nilable(
            Telnyx::FaxSendingStartedWebhookEvent::EventType::TaggedSymbol
          )
        )
      end
      attr_reader :event_type

      sig do
        params(
          event_type: Telnyx::FaxSendingStartedWebhookEvent::EventType::OrSymbol
        ).void
      end
      attr_writer :event_type

      sig { returns(T.nilable(Telnyx::FaxSendingStartedWebhookEvent::Payload)) }
      attr_reader :payload

      sig do
        params(
          payload: Telnyx::FaxSendingStartedWebhookEvent::Payload::OrHash
        ).void
      end
      attr_writer :payload

      # Identifies the type of the resource.
      sig do
        returns(
          T.nilable(
            Telnyx::FaxSendingStartedWebhookEvent::RecordType::TaggedSymbol
          )
        )
      end
      attr_reader :record_type

      sig do
        params(
          record_type:
            Telnyx::FaxSendingStartedWebhookEvent::RecordType::OrSymbol
        ).void
      end
      attr_writer :record_type

      sig do
        params(
          id: String,
          event_type:
            Telnyx::FaxSendingStartedWebhookEvent::EventType::OrSymbol,
          payload: Telnyx::FaxSendingStartedWebhookEvent::Payload::OrHash,
          record_type:
            Telnyx::FaxSendingStartedWebhookEvent::RecordType::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Identifies the type of resource.
        id: nil,
        # The type of event being delivered.
        event_type: nil,
        payload: nil,
        # Identifies the type of the resource.
        record_type: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            event_type:
              Telnyx::FaxSendingStartedWebhookEvent::EventType::TaggedSymbol,
            payload: Telnyx::FaxSendingStartedWebhookEvent::Payload,
            record_type:
              Telnyx::FaxSendingStartedWebhookEvent::RecordType::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      # The type of event being delivered.
      module EventType
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::FaxSendingStartedWebhookEvent::EventType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        FAX_SENDING_STARTED =
          T.let(
            :"fax.sending.started",
            Telnyx::FaxSendingStartedWebhookEvent::EventType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::FaxSendingStartedWebhookEvent::EventType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      class Payload < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::FaxSendingStartedWebhookEvent::Payload,
              Telnyx::Internal::AnyHash
            )
          end

        # State received from a command.
        sig { returns(T.nilable(String)) }
        attr_reader :client_state

        sig { params(client_state: String).void }
        attr_writer :client_state

        # The ID of the connection used to send the fax.
        sig { returns(T.nilable(String)) }
        attr_reader :connection_id

        sig { params(connection_id: String).void }
        attr_writer :connection_id

        # The direction of the fax.
        sig do
          returns(
            T.nilable(
              Telnyx::FaxSendingStartedWebhookEvent::Payload::Direction::TaggedSymbol
            )
          )
        end
        attr_reader :direction

        sig do
          params(
            direction:
              Telnyx::FaxSendingStartedWebhookEvent::Payload::Direction::OrSymbol
          ).void
        end
        attr_writer :direction

        # Identifies the fax.
        sig { returns(T.nilable(String)) }
        attr_reader :fax_id

        sig { params(fax_id: String).void }
        attr_writer :fax_id

        # The phone number, in E.164 format, the fax will be sent from.
        sig { returns(T.nilable(String)) }
        attr_reader :from

        sig { params(from: String).void }
        attr_writer :from

        # The media_name used for the fax's media. Must point to a file previously
        # uploaded to api.telnyx.com/v2/media by the same user/organization. media_name
        # and media_url/contents can't be submitted together.
        sig { returns(T.nilable(String)) }
        attr_reader :media_name

        sig { params(media_name: String).void }
        attr_writer :media_name

        # The original URL to the PDF used for the fax's media. If media_name was
        # supplied, this is omitted
        sig { returns(T.nilable(String)) }
        attr_reader :original_media_url

        sig { params(original_media_url: String).void }
        attr_writer :original_media_url

        # The status of the fax.
        sig do
          returns(
            T.nilable(
              Telnyx::FaxSendingStartedWebhookEvent::Payload::Status::TaggedSymbol
            )
          )
        end
        attr_reader :status

        sig do
          params(
            status:
              Telnyx::FaxSendingStartedWebhookEvent::Payload::Status::OrSymbol
          ).void
        end
        attr_writer :status

        # The phone number, in E.164 format, the fax will be sent to or SIP URI
        sig { returns(T.nilable(String)) }
        attr_reader :to

        sig { params(to: String).void }
        attr_writer :to

        # Identifier of the user to whom the fax belongs
        sig { returns(T.nilable(String)) }
        attr_reader :user_id

        sig { params(user_id: String).void }
        attr_writer :user_id

        sig do
          params(
            client_state: String,
            connection_id: String,
            direction:
              Telnyx::FaxSendingStartedWebhookEvent::Payload::Direction::OrSymbol,
            fax_id: String,
            from: String,
            media_name: String,
            original_media_url: String,
            status:
              Telnyx::FaxSendingStartedWebhookEvent::Payload::Status::OrSymbol,
            to: String,
            user_id: String
          ).returns(T.attached_class)
        end
        def self.new(
          # State received from a command.
          client_state: nil,
          # The ID of the connection used to send the fax.
          connection_id: nil,
          # The direction of the fax.
          direction: nil,
          # Identifies the fax.
          fax_id: nil,
          # The phone number, in E.164 format, the fax will be sent from.
          from: nil,
          # The media_name used for the fax's media. Must point to a file previously
          # uploaded to api.telnyx.com/v2/media by the same user/organization. media_name
          # and media_url/contents can't be submitted together.
          media_name: nil,
          # The original URL to the PDF used for the fax's media. If media_name was
          # supplied, this is omitted
          original_media_url: nil,
          # The status of the fax.
          status: nil,
          # The phone number, in E.164 format, the fax will be sent to or SIP URI
          to: nil,
          # Identifier of the user to whom the fax belongs
          user_id: nil
        )
        end

        sig do
          override.returns(
            {
              client_state: String,
              connection_id: String,
              direction:
                Telnyx::FaxSendingStartedWebhookEvent::Payload::Direction::TaggedSymbol,
              fax_id: String,
              from: String,
              media_name: String,
              original_media_url: String,
              status:
                Telnyx::FaxSendingStartedWebhookEvent::Payload::Status::TaggedSymbol,
              to: String,
              user_id: String
            }
          )
        end
        def to_hash
        end

        # The direction of the fax.
        module Direction
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::FaxSendingStartedWebhookEvent::Payload::Direction
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          INBOUND =
            T.let(
              :inbound,
              Telnyx::FaxSendingStartedWebhookEvent::Payload::Direction::TaggedSymbol
            )
          OUTBOUND =
            T.let(
              :outbound,
              Telnyx::FaxSendingStartedWebhookEvent::Payload::Direction::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::FaxSendingStartedWebhookEvent::Payload::Direction::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # The status of the fax.
        module Status
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::FaxSendingStartedWebhookEvent::Payload::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          SENDING =
            T.let(
              :sending,
              Telnyx::FaxSendingStartedWebhookEvent::Payload::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::FaxSendingStartedWebhookEvent::Payload::Status::TaggedSymbol
              ]
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
          T.type_alias do
            T.all(Symbol, Telnyx::FaxSendingStartedWebhookEvent::RecordType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        EVENT =
          T.let(
            :event,
            Telnyx::FaxSendingStartedWebhookEvent::RecordType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::FaxSendingStartedWebhookEvent::RecordType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
