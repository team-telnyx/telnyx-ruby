# typed: strong

module Telnyx
  module Models
    class MessageSendWhatsappResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::MessageSendWhatsappResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig do
        returns(T.nilable(Telnyx::Models::MessageSendWhatsappResponse::Data))
      end
      attr_reader :data

      sig do
        params(
          data: Telnyx::Models::MessageSendWhatsappResponse::Data::OrHash
        ).void
      end
      attr_writer :data

      sig do
        params(
          data: Telnyx::Models::MessageSendWhatsappResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data: nil)
      end

      sig do
        override.returns(
          { data: Telnyx::Models::MessageSendWhatsappResponse::Data }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::MessageSendWhatsappResponse::Data,
              Telnyx::Internal::AnyHash
            )
          end

        # message ID
        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        sig { returns(T.nilable(Telnyx::WhatsappMessageContent)) }
        attr_reader :body

        sig { params(body: Telnyx::WhatsappMessageContent::OrHash).void }
        attr_writer :body

        sig { returns(T.nilable(String)) }
        attr_reader :direction

        sig { params(direction: String).void }
        attr_writer :direction

        sig { returns(T.nilable(String)) }
        attr_reader :encoding

        sig { params(encoding: String).void }
        attr_writer :encoding

        sig do
          returns(
            T.nilable(Telnyx::Models::MessageSendWhatsappResponse::Data::From)
          )
        end
        attr_reader :from

        sig do
          params(
            from:
              Telnyx::Models::MessageSendWhatsappResponse::Data::From::OrHash
          ).void
        end
        attr_writer :from

        sig { returns(T.nilable(String)) }
        attr_reader :messaging_profile_id

        sig { params(messaging_profile_id: String).void }
        attr_writer :messaging_profile_id

        sig { returns(T.nilable(String)) }
        attr_reader :organization_id

        sig { params(organization_id: String).void }
        attr_writer :organization_id

        sig { returns(T.nilable(Time)) }
        attr_reader :received_at

        sig { params(received_at: Time).void }
        attr_writer :received_at

        sig { returns(T.nilable(String)) }
        attr_reader :record_type

        sig { params(record_type: String).void }
        attr_writer :record_type

        sig { returns(T.nilable(T::Array[Telnyx::RcsToItem])) }
        attr_reader :to

        sig { params(to: T::Array[Telnyx::RcsToItem::OrHash]).void }
        attr_writer :to

        sig { returns(T.nilable(String)) }
        attr_reader :type

        sig { params(type: String).void }
        attr_writer :type

        # Seconds the message is queued due to rate limiting before being sent to the
        # carrier. Represents the maximum wait across all applicable rate limits (account,
        # carrier, campaign). 0.0 = no queuing delay.
        sig { returns(T.nilable(Float)) }
        attr_accessor :wait_seconds

        sig do
          params(
            id: String,
            body: Telnyx::WhatsappMessageContent::OrHash,
            direction: String,
            encoding: String,
            from:
              Telnyx::Models::MessageSendWhatsappResponse::Data::From::OrHash,
            messaging_profile_id: String,
            organization_id: String,
            received_at: Time,
            record_type: String,
            to: T::Array[Telnyx::RcsToItem::OrHash],
            type: String,
            wait_seconds: T.nilable(Float)
          ).returns(T.attached_class)
        end
        def self.new(
          # message ID
          id: nil,
          body: nil,
          direction: nil,
          encoding: nil,
          from: nil,
          messaging_profile_id: nil,
          organization_id: nil,
          received_at: nil,
          record_type: nil,
          to: nil,
          type: nil,
          # Seconds the message is queued due to rate limiting before being sent to the
          # carrier. Represents the maximum wait across all applicable rate limits (account,
          # carrier, campaign). 0.0 = no queuing delay.
          wait_seconds: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              body: Telnyx::WhatsappMessageContent,
              direction: String,
              encoding: String,
              from: Telnyx::Models::MessageSendWhatsappResponse::Data::From,
              messaging_profile_id: String,
              organization_id: String,
              received_at: Time,
              record_type: String,
              to: T::Array[Telnyx::RcsToItem],
              type: String,
              wait_seconds: T.nilable(Float)
            }
          )
        end
        def to_hash
        end

        class From < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::MessageSendWhatsappResponse::Data::From,
                Telnyx::Internal::AnyHash
              )
            end

          # The carrier of the sender.
          sig { returns(T.nilable(String)) }
          attr_reader :carrier

          sig { params(carrier: String).void }
          attr_writer :carrier

          # The line-type of the sender.
          sig do
            returns(
              T.nilable(
                Telnyx::Models::MessageSendWhatsappResponse::Data::From::LineType::TaggedSymbol
              )
            )
          end
          attr_reader :line_type

          sig do
            params(
              line_type:
                Telnyx::Models::MessageSendWhatsappResponse::Data::From::LineType::OrSymbol
            ).void
          end
          attr_writer :line_type

          # Sending address (+E.164 formatted phone number, alphanumeric sender ID, or short
          # code).
          sig { returns(T.nilable(String)) }
          attr_reader :phone_number

          sig { params(phone_number: String).void }
          attr_writer :phone_number

          sig do
            returns(
              T.nilable(
                Telnyx::Models::MessageSendWhatsappResponse::Data::From::Status::TaggedSymbol
              )
            )
          end
          attr_reader :status

          sig do
            params(
              status:
                Telnyx::Models::MessageSendWhatsappResponse::Data::From::Status::OrSymbol
            ).void
          end
          attr_writer :status

          sig do
            params(
              carrier: String,
              line_type:
                Telnyx::Models::MessageSendWhatsappResponse::Data::From::LineType::OrSymbol,
              phone_number: String,
              status:
                Telnyx::Models::MessageSendWhatsappResponse::Data::From::Status::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            # The carrier of the sender.
            carrier: nil,
            # The line-type of the sender.
            line_type: nil,
            # Sending address (+E.164 formatted phone number, alphanumeric sender ID, or short
            # code).
            phone_number: nil,
            status: nil
          )
          end

          sig do
            override.returns(
              {
                carrier: String,
                line_type:
                  Telnyx::Models::MessageSendWhatsappResponse::Data::From::LineType::TaggedSymbol,
                phone_number: String,
                status:
                  Telnyx::Models::MessageSendWhatsappResponse::Data::From::Status::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          # The line-type of the sender.
          module LineType
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::Models::MessageSendWhatsappResponse::Data::From::LineType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            WIRELINE =
              T.let(
                :Wireline,
                Telnyx::Models::MessageSendWhatsappResponse::Data::From::LineType::TaggedSymbol
              )
            WIRELESS =
              T.let(
                :Wireless,
                Telnyx::Models::MessageSendWhatsappResponse::Data::From::LineType::TaggedSymbol
              )
            VO_WI_FI =
              T.let(
                :VoWiFi,
                Telnyx::Models::MessageSendWhatsappResponse::Data::From::LineType::TaggedSymbol
              )
            VO_IP =
              T.let(
                :VoIP,
                Telnyx::Models::MessageSendWhatsappResponse::Data::From::LineType::TaggedSymbol
              )
            PRE_PAID_WIRELESS =
              T.let(
                :"Pre-Paid Wireless",
                Telnyx::Models::MessageSendWhatsappResponse::Data::From::LineType::TaggedSymbol
              )
            EMPTY =
              T.let(
                :"",
                Telnyx::Models::MessageSendWhatsappResponse::Data::From::LineType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Models::MessageSendWhatsappResponse::Data::From::LineType::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          module Status
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::Models::MessageSendWhatsappResponse::Data::From::Status
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            RECEIVED =
              T.let(
                :received,
                Telnyx::Models::MessageSendWhatsappResponse::Data::From::Status::TaggedSymbol
              )
            DELIVERED =
              T.let(
                :delivered,
                Telnyx::Models::MessageSendWhatsappResponse::Data::From::Status::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Models::MessageSendWhatsappResponse::Data::From::Status::TaggedSymbol
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
end
