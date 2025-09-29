# typed: strong

module Telnyx
  module Models
    class FaxDeliveredWebhookEvent < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::FaxDeliveredWebhookEvent, Telnyx::Internal::AnyHash)
        end

      # Identifies the type of resource.
      sig { returns(T.nilable(String)) }
      attr_reader :id

      sig { params(id: String).void }
      attr_writer :id

      # The type of event being delivered.
      sig do
        returns(
          T.nilable(Telnyx::FaxDeliveredWebhookEvent::EventType::TaggedSymbol)
        )
      end
      attr_reader :event_type

      sig do
        params(
          event_type: Telnyx::FaxDeliveredWebhookEvent::EventType::OrSymbol
        ).void
      end
      attr_writer :event_type

      sig { returns(T.nilable(Telnyx::FaxDeliveredWebhookEvent::Payload)) }
      attr_reader :payload

      sig do
        params(payload: Telnyx::FaxDeliveredWebhookEvent::Payload::OrHash).void
      end
      attr_writer :payload

      # Identifies the type of the resource.
      sig do
        returns(
          T.nilable(Telnyx::FaxDeliveredWebhookEvent::RecordType::TaggedSymbol)
        )
      end
      attr_reader :record_type

      sig do
        params(
          record_type: Telnyx::FaxDeliveredWebhookEvent::RecordType::OrSymbol
        ).void
      end
      attr_writer :record_type

      sig do
        params(
          id: String,
          event_type: Telnyx::FaxDeliveredWebhookEvent::EventType::OrSymbol,
          payload: Telnyx::FaxDeliveredWebhookEvent::Payload::OrHash,
          record_type: Telnyx::FaxDeliveredWebhookEvent::RecordType::OrSymbol
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
              Telnyx::FaxDeliveredWebhookEvent::EventType::TaggedSymbol,
            payload: Telnyx::FaxDeliveredWebhookEvent::Payload,
            record_type:
              Telnyx::FaxDeliveredWebhookEvent::RecordType::TaggedSymbol
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
            T.all(Symbol, Telnyx::FaxDeliveredWebhookEvent::EventType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        FAX_DELIVERED =
          T.let(
            :"fax.delivered",
            Telnyx::FaxDeliveredWebhookEvent::EventType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::FaxDeliveredWebhookEvent::EventType::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      class Payload < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::FaxDeliveredWebhookEvent::Payload,
              Telnyx::Internal::AnyHash
            )
          end

        # The duration of the call in seconds.
        sig { returns(T.nilable(Integer)) }
        attr_reader :call_duration_secs

        sig { params(call_duration_secs: Integer).void }
        attr_writer :call_duration_secs

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
              Telnyx::FaxDeliveredWebhookEvent::Payload::Direction::TaggedSymbol
            )
          )
        end
        attr_reader :direction

        sig do
          params(
            direction:
              Telnyx::FaxDeliveredWebhookEvent::Payload::Direction::OrSymbol
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

        # Number of transferred pages
        sig { returns(T.nilable(Integer)) }
        attr_reader :page_count

        sig { params(page_count: Integer).void }
        attr_writer :page_count

        # The status of the fax.
        sig do
          returns(
            T.nilable(
              Telnyx::FaxDeliveredWebhookEvent::Payload::Status::TaggedSymbol
            )
          )
        end
        attr_reader :status

        sig do
          params(
            status: Telnyx::FaxDeliveredWebhookEvent::Payload::Status::OrSymbol
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
            call_duration_secs: Integer,
            client_state: String,
            connection_id: String,
            direction:
              Telnyx::FaxDeliveredWebhookEvent::Payload::Direction::OrSymbol,
            fax_id: String,
            from: String,
            media_name: String,
            original_media_url: String,
            page_count: Integer,
            status: Telnyx::FaxDeliveredWebhookEvent::Payload::Status::OrSymbol,
            to: String,
            user_id: String
          ).returns(T.attached_class)
        end
        def self.new(
          # The duration of the call in seconds.
          call_duration_secs: nil,
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
          # Number of transferred pages
          page_count: nil,
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
              call_duration_secs: Integer,
              client_state: String,
              connection_id: String,
              direction:
                Telnyx::FaxDeliveredWebhookEvent::Payload::Direction::TaggedSymbol,
              fax_id: String,
              from: String,
              media_name: String,
              original_media_url: String,
              page_count: Integer,
              status:
                Telnyx::FaxDeliveredWebhookEvent::Payload::Status::TaggedSymbol,
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
                Telnyx::FaxDeliveredWebhookEvent::Payload::Direction
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          INBOUND =
            T.let(
              :inbound,
              Telnyx::FaxDeliveredWebhookEvent::Payload::Direction::TaggedSymbol
            )
          OUTBOUND =
            T.let(
              :outbound,
              Telnyx::FaxDeliveredWebhookEvent::Payload::Direction::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::FaxDeliveredWebhookEvent::Payload::Direction::TaggedSymbol
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
              T.all(Symbol, Telnyx::FaxDeliveredWebhookEvent::Payload::Status)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          DELIVERED =
            T.let(
              :delivered,
              Telnyx::FaxDeliveredWebhookEvent::Payload::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::FaxDeliveredWebhookEvent::Payload::Status::TaggedSymbol
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
            T.all(Symbol, Telnyx::FaxDeliveredWebhookEvent::RecordType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        EVENT =
          T.let(
            :event,
            Telnyx::FaxDeliveredWebhookEvent::RecordType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::FaxDeliveredWebhookEvent::RecordType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
