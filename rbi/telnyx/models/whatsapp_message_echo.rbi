# typed: strong

module Telnyx
  module Models
    class WhatsappMessageEcho < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::WhatsappMessageEcho, Telnyx::Internal::AnyHash)
        end

      sig { returns(Telnyx::WhatsappMessageEcho::Data) }
      attr_reader :data

      sig { params(data: Telnyx::WhatsappMessageEcho::Data::OrHash).void }
      attr_writer :data

      sig do
        params(data: Telnyx::WhatsappMessageEcho::Data::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(data:)
      end

      sig { override.returns({ data: Telnyx::WhatsappMessageEcho::Data }) }
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::WhatsappMessageEcho::Data, Telnyx::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :id

        sig do
          returns(Telnyx::WhatsappMessageEcho::Data::EventType::TaggedSymbol)
        end
        attr_accessor :event_type

        sig { returns(Time) }
        attr_accessor :occurred_at

        sig { returns(Telnyx::WhatsappMessageEcho::Data::Payload) }
        attr_reader :payload

        sig do
          params(
            payload: Telnyx::WhatsappMessageEcho::Data::Payload::OrHash
          ).void
        end
        attr_writer :payload

        sig do
          returns(Telnyx::WhatsappMessageEcho::Data::RecordType::TaggedSymbol)
        end
        attr_accessor :record_type

        sig do
          params(
            id: String,
            event_type: Telnyx::WhatsappMessageEcho::Data::EventType::OrSymbol,
            occurred_at: Time,
            payload: Telnyx::WhatsappMessageEcho::Data::Payload::OrHash,
            record_type: Telnyx::WhatsappMessageEcho::Data::RecordType::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(id:, event_type:, occurred_at:, payload:, record_type:)
        end

        sig do
          override.returns(
            {
              id: String,
              event_type:
                Telnyx::WhatsappMessageEcho::Data::EventType::TaggedSymbol,
              occurred_at: Time,
              payload: Telnyx::WhatsappMessageEcho::Data::Payload,
              record_type:
                Telnyx::WhatsappMessageEcho::Data::RecordType::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        module EventType
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::WhatsappMessageEcho::Data::EventType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          MESSAGE_ECHO =
            T.let(
              :"message.echo",
              Telnyx::WhatsappMessageEcho::Data::EventType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::WhatsappMessageEcho::Data::EventType::TaggedSymbol
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
                Telnyx::WhatsappMessageEcho::Data::Payload,
                Telnyx::Internal::AnyHash
              )
            end

          # Telnyx identifier for the mirrored message.
          sig { returns(String) }
          attr_accessor :id

          # Mirrored WhatsApp message content. The content property matches the value of
          # `type`.
          sig { returns(Telnyx::WhatsappMessageEcho::Data::Payload::Body) }
          attr_reader :body

          sig do
            params(
              body: Telnyx::WhatsappMessageEcho::Data::Payload::Body::OrHash
            ).void
          end
          attr_writer :body

          # No charge is created for a Business app message echo.
          sig { returns(Telnyx::WhatsappMessageEcho::Data::Payload::Cost) }
          attr_reader :cost

          sig do
            params(
              cost: Telnyx::WhatsappMessageEcho::Data::Payload::Cost::OrHash
            ).void
          end
          attr_writer :cost

          # Indicates that the business sent the message to the WhatsApp user.
          sig do
            returns(
              Telnyx::WhatsappMessageEcho::Data::Payload::Direction::TaggedSymbol
            )
          end
          attr_accessor :direction

          sig { returns(T::Array[Telnyx::MessagingError0b38e7044b]) }
          attr_accessor :errors

          sig { returns(Telnyx::WhatsappMessageEcho::Data::Payload::From) }
          attr_reader :from

          sig do
            params(
              from: Telnyx::WhatsappMessageEcho::Data::Payload::From::OrHash
            ).void
          end
          attr_writer :from

          sig { returns(String) }
          attr_accessor :messaging_profile_id

          sig { returns(String) }
          attr_accessor :organization_id

          # Identifies the WhatsApp Business app as the source of the message.
          sig do
            returns(
              Telnyx::WhatsappMessageEcho::Data::Payload::Origin::TaggedSymbol
            )
          end
          attr_accessor :origin

          sig do
            returns(
              Telnyx::WhatsappMessageEcho::Data::Payload::RecordType::TaggedSymbol
            )
          end
          attr_accessor :record_type

          # WhatsApp user who received the Business app message.
          sig { returns(String) }
          attr_accessor :to

          sig do
            returns(
              Telnyx::WhatsappMessageEcho::Data::Payload::Type::TaggedSymbol
            )
          end
          attr_accessor :type

          sig { returns(T.nilable(Time)) }
          attr_reader :received_at

          sig { params(received_at: Time).void }
          attr_writer :received_at

          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :tags

          sig { params(tags: T::Array[String]).void }
          attr_writer :tags

          sig { returns(T.nilable(String)) }
          attr_accessor :webhook_failover_url

          sig { returns(T.nilable(String)) }
          attr_accessor :webhook_url

          sig do
            params(
              id: String,
              body: Telnyx::WhatsappMessageEcho::Data::Payload::Body::OrHash,
              cost: Telnyx::WhatsappMessageEcho::Data::Payload::Cost::OrHash,
              direction:
                Telnyx::WhatsappMessageEcho::Data::Payload::Direction::OrSymbol,
              errors: T::Array[Telnyx::MessagingError0b38e7044b::OrHash],
              from: Telnyx::WhatsappMessageEcho::Data::Payload::From::OrHash,
              messaging_profile_id: String,
              organization_id: String,
              origin:
                Telnyx::WhatsappMessageEcho::Data::Payload::Origin::OrSymbol,
              record_type:
                Telnyx::WhatsappMessageEcho::Data::Payload::RecordType::OrSymbol,
              to: String,
              type: Telnyx::WhatsappMessageEcho::Data::Payload::Type::OrSymbol,
              received_at: Time,
              tags: T::Array[String],
              webhook_failover_url: T.nilable(String),
              webhook_url: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            # Telnyx identifier for the mirrored message.
            id:,
            # Mirrored WhatsApp message content. The content property matches the value of
            # `type`.
            body:,
            # No charge is created for a Business app message echo.
            cost:,
            # Indicates that the business sent the message to the WhatsApp user.
            direction:,
            errors:,
            from:,
            messaging_profile_id:,
            organization_id:,
            # Identifies the WhatsApp Business app as the source of the message.
            origin:,
            record_type:,
            # WhatsApp user who received the Business app message.
            to:,
            type:,
            received_at: nil,
            tags: nil,
            webhook_failover_url: nil,
            webhook_url: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                body: Telnyx::WhatsappMessageEcho::Data::Payload::Body,
                cost: Telnyx::WhatsappMessageEcho::Data::Payload::Cost,
                direction:
                  Telnyx::WhatsappMessageEcho::Data::Payload::Direction::TaggedSymbol,
                errors: T::Array[Telnyx::MessagingError0b38e7044b],
                from: Telnyx::WhatsappMessageEcho::Data::Payload::From,
                messaging_profile_id: String,
                organization_id: String,
                origin:
                  Telnyx::WhatsappMessageEcho::Data::Payload::Origin::TaggedSymbol,
                record_type:
                  Telnyx::WhatsappMessageEcho::Data::Payload::RecordType::TaggedSymbol,
                to: String,
                type:
                  Telnyx::WhatsappMessageEcho::Data::Payload::Type::TaggedSymbol,
                received_at: Time,
                tags: T::Array[String],
                webhook_failover_url: T.nilable(String),
                webhook_url: T.nilable(String)
              }
            )
          end
          def to_hash
          end

          class Body < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::WhatsappMessageEcho::Data::Payload::Body,
                  Telnyx::Internal::AnyHash
                )
              end

            # Telnyx identifier for the mirrored message.
            sig { returns(String) }
            attr_accessor :id

            # Meta WhatsApp message identifier, also known as a wamid.
            sig { returns(String) }
            attr_accessor :foreign_id

            # Unix timestamp supplied by Meta.
            sig { returns(String) }
            attr_accessor :timestamp

            # WhatsApp message content type.
            sig { returns(String) }
            attr_accessor :type

            # WhatsApp user who received the message.
            sig { returns(T.nilable(String)) }
            attr_reader :from

            sig { params(from: String).void }
            attr_writer :from

            # Opaque recipient identifier when Meta does not supply a phone number.
            sig { returns(T.nilable(String)) }
            attr_reader :from_user_id

            sig { params(from_user_id: String).void }
            attr_writer :from_user_id

            # Mirrored WhatsApp message content. The content property matches the value of
            # `type`.
            sig do
              params(
                id: String,
                foreign_id: String,
                timestamp: String,
                type: String,
                from: String,
                from_user_id: String
              ).returns(T.attached_class)
            end
            def self.new(
              # Telnyx identifier for the mirrored message.
              id:,
              # Meta WhatsApp message identifier, also known as a wamid.
              foreign_id:,
              # Unix timestamp supplied by Meta.
              timestamp:,
              # WhatsApp message content type.
              type:,
              # WhatsApp user who received the message.
              from: nil,
              # Opaque recipient identifier when Meta does not supply a phone number.
              from_user_id: nil
            )
            end

            sig do
              override.returns(
                {
                  id: String,
                  foreign_id: String,
                  timestamp: String,
                  type: String,
                  from: String,
                  from_user_id: String
                }
              )
            end
            def to_hash
            end
          end

          class Cost < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::WhatsappMessageEcho::Data::Payload::Cost,
                  Telnyx::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(String)) }
            attr_accessor :amount

            sig { returns(T.nilable(String)) }
            attr_accessor :currency

            # No charge is created for a Business app message echo.
            sig do
              params(
                amount: T.nilable(String),
                currency: T.nilable(String)
              ).returns(T.attached_class)
            end
            def self.new(amount: nil, currency: nil)
            end

            sig do
              override.returns(
                { amount: T.nilable(String), currency: T.nilable(String) }
              )
            end
            def to_hash
            end
          end

          # Indicates that the business sent the message to the WhatsApp user.
          module Direction
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::WhatsappMessageEcho::Data::Payload::Direction
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            OUTBOUND =
              T.let(
                :outbound,
                Telnyx::WhatsappMessageEcho::Data::Payload::Direction::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::WhatsappMessageEcho::Data::Payload::Direction::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          class From < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::WhatsappMessageEcho::Data::Payload::From,
                  Telnyx::Internal::AnyHash
                )
              end

            # Coexistence-enabled business phone number in E.164 format.
            sig { returns(String) }
            attr_accessor :phone_number

            sig { returns(T.nilable(String)) }
            attr_reader :carrier

            sig { params(carrier: String).void }
            attr_writer :carrier

            sig { returns(T.nilable(String)) }
            attr_reader :line_type

            sig { params(line_type: String).void }
            attr_writer :line_type

            sig do
              params(
                phone_number: String,
                carrier: String,
                line_type: String
              ).returns(T.attached_class)
            end
            def self.new(
              # Coexistence-enabled business phone number in E.164 format.
              phone_number:,
              carrier: nil,
              line_type: nil
            )
            end

            sig do
              override.returns(
                { phone_number: String, carrier: String, line_type: String }
              )
            end
            def to_hash
            end
          end

          # Identifies the WhatsApp Business app as the source of the message.
          module Origin
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::WhatsappMessageEcho::Data::Payload::Origin
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            WHATSAPP_BUSINESS_APP =
              T.let(
                :whatsapp_business_app,
                Telnyx::WhatsappMessageEcho::Data::Payload::Origin::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::WhatsappMessageEcho::Data::Payload::Origin::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          module RecordType
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::WhatsappMessageEcho::Data::Payload::RecordType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            MESSAGE =
              T.let(
                :message,
                Telnyx::WhatsappMessageEcho::Data::Payload::RecordType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::WhatsappMessageEcho::Data::Payload::RecordType::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          module Type
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(Symbol, Telnyx::WhatsappMessageEcho::Data::Payload::Type)
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            WHATSAPP =
              T.let(
                :WHATSAPP,
                Telnyx::WhatsappMessageEcho::Data::Payload::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::WhatsappMessageEcho::Data::Payload::Type::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        module RecordType
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::WhatsappMessageEcho::Data::RecordType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EVENT =
            T.let(
              :event,
              Telnyx::WhatsappMessageEcho::Data::RecordType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::WhatsappMessageEcho::Data::RecordType::TaggedSymbol
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
