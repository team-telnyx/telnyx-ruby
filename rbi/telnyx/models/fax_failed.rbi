# typed: strong

module Telnyx
  module Models
    class FaxFailed < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Telnyx::FaxFailed, Telnyx::Internal::AnyHash) }

      sig { returns(T.nilable(Telnyx::FaxFailed::Data)) }
      attr_reader :data

      sig { params(data: Telnyx::FaxFailed::Data::OrHash).void }
      attr_writer :data

      # Metadata about the webhook delivery.
      sig { returns(T.nilable(Telnyx::FaxFailed::Meta)) }
      attr_reader :meta

      sig { params(meta: Telnyx::FaxFailed::Meta::OrHash).void }
      attr_writer :meta

      sig do
        params(
          data: Telnyx::FaxFailed::Data::OrHash,
          meta: Telnyx::FaxFailed::Meta::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        data: nil,
        # Metadata about the webhook delivery.
        meta: nil
      )
      end

      sig do
        override.returns(
          { data: Telnyx::FaxFailed::Data, meta: Telnyx::FaxFailed::Meta }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::FaxFailed::Data, Telnyx::Internal::AnyHash)
          end

        # Identifies the type of resource.
        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        # The type of event being delivered.
        sig do
          returns(T.nilable(Telnyx::FaxFailed::Data::EventType::TaggedSymbol))
        end
        attr_reader :event_type

        sig do
          params(event_type: Telnyx::FaxFailed::Data::EventType::OrSymbol).void
        end
        attr_writer :event_type

        # ISO 8601 datetime of when the event occurred.
        sig { returns(T.nilable(Time)) }
        attr_reader :occurred_at

        sig { params(occurred_at: Time).void }
        attr_writer :occurred_at

        sig { returns(T.nilable(Telnyx::FaxFailed::Data::Payload)) }
        attr_reader :payload

        sig { params(payload: Telnyx::FaxFailed::Data::Payload::OrHash).void }
        attr_writer :payload

        # Identifies the type of the resource.
        sig do
          returns(T.nilable(Telnyx::FaxFailed::Data::RecordType::TaggedSymbol))
        end
        attr_reader :record_type

        sig do
          params(
            record_type: Telnyx::FaxFailed::Data::RecordType::OrSymbol
          ).void
        end
        attr_writer :record_type

        sig do
          params(
            id: String,
            event_type: Telnyx::FaxFailed::Data::EventType::OrSymbol,
            occurred_at: Time,
            payload: Telnyx::FaxFailed::Data::Payload::OrHash,
            record_type: Telnyx::FaxFailed::Data::RecordType::OrSymbol
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
              event_type: Telnyx::FaxFailed::Data::EventType::TaggedSymbol,
              occurred_at: Time,
              payload: Telnyx::FaxFailed::Data::Payload,
              record_type: Telnyx::FaxFailed::Data::RecordType::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        # The type of event being delivered.
        module EventType
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, Telnyx::FaxFailed::Data::EventType) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          FAX_FAILED =
            T.let(
              :"fax.failed",
              Telnyx::FaxFailed::Data::EventType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Telnyx::FaxFailed::Data::EventType::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        class Payload < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(Telnyx::FaxFailed::Data::Payload, Telnyx::Internal::AnyHash)
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
                Telnyx::FaxFailed::Data::Payload::Direction::TaggedSymbol
              )
            )
          end
          attr_reader :direction

          sig do
            params(
              direction: Telnyx::FaxFailed::Data::Payload::Direction::OrSymbol
            ).void
          end
          attr_writer :direction

          # Cause of the sending failure
          sig do
            returns(
              T.nilable(
                Telnyx::FaxFailed::Data::Payload::FailureReason::TaggedSymbol
              )
            )
          end
          attr_reader :failure_reason

          sig do
            params(
              failure_reason:
                Telnyx::FaxFailed::Data::Payload::FailureReason::OrSymbol
            ).void
          end
          attr_writer :failure_reason

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
              T.nilable(Telnyx::FaxFailed::Data::Payload::Status::TaggedSymbol)
            )
          end
          attr_reader :status

          sig do
            params(
              status: Telnyx::FaxFailed::Data::Payload::Status::OrSymbol
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
              direction: Telnyx::FaxFailed::Data::Payload::Direction::OrSymbol,
              failure_reason:
                Telnyx::FaxFailed::Data::Payload::FailureReason::OrSymbol,
              fax_id: String,
              from: String,
              media_name: String,
              original_media_url: String,
              status: Telnyx::FaxFailed::Data::Payload::Status::OrSymbol,
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
            # Cause of the sending failure
            failure_reason: nil,
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
                  Telnyx::FaxFailed::Data::Payload::Direction::TaggedSymbol,
                failure_reason:
                  Telnyx::FaxFailed::Data::Payload::FailureReason::TaggedSymbol,
                fax_id: String,
                from: String,
                media_name: String,
                original_media_url: String,
                status: Telnyx::FaxFailed::Data::Payload::Status::TaggedSymbol,
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
                T.all(Symbol, Telnyx::FaxFailed::Data::Payload::Direction)
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            INBOUND =
              T.let(
                :inbound,
                Telnyx::FaxFailed::Data::Payload::Direction::TaggedSymbol
              )
            OUTBOUND =
              T.let(
                :outbound,
                Telnyx::FaxFailed::Data::Payload::Direction::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::FaxFailed::Data::Payload::Direction::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Cause of the sending failure
          module FailureReason
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(Symbol, Telnyx::FaxFailed::Data::Payload::FailureReason)
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            REJECTED =
              T.let(
                :rejected,
                Telnyx::FaxFailed::Data::Payload::FailureReason::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::FaxFailed::Data::Payload::FailureReason::TaggedSymbol
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
                T.all(Symbol, Telnyx::FaxFailed::Data::Payload::Status)
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            FAILED =
              T.let(
                :failed,
                Telnyx::FaxFailed::Data::Payload::Status::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[Telnyx::FaxFailed::Data::Payload::Status::TaggedSymbol]
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
            T.type_alias { T.all(Symbol, Telnyx::FaxFailed::Data::RecordType) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EVENT =
            T.let(:event, Telnyx::FaxFailed::Data::RecordType::TaggedSymbol)

          sig do
            override.returns(
              T::Array[Telnyx::FaxFailed::Data::RecordType::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end

      class Meta < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::FaxFailed::Meta, Telnyx::Internal::AnyHash)
          end

        # The delivery attempt number.
        sig { returns(T.nilable(Integer)) }
        attr_reader :attempt

        sig { params(attempt: Integer).void }
        attr_writer :attempt

        # The URL the webhook was delivered to.
        sig { returns(T.nilable(String)) }
        attr_reader :delivered_to

        sig { params(delivered_to: String).void }
        attr_writer :delivered_to

        # Metadata about the webhook delivery.
        sig do
          params(attempt: Integer, delivered_to: String).returns(
            T.attached_class
          )
        end
        def self.new(
          # The delivery attempt number.
          attempt: nil,
          # The URL the webhook was delivered to.
          delivered_to: nil
        )
        end

        sig { override.returns({ attempt: Integer, delivered_to: String }) }
        def to_hash
        end
      end
    end
  end
end
