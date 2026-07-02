# typed: strong

module Telnyx
  module Models
    module Whatsapp
      class PhoneNumberRetrieveConversationWindowResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::Whatsapp::PhoneNumberRetrieveConversationWindowResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              Telnyx::Models::Whatsapp::PhoneNumberRetrieveConversationWindowResponse::Data
            )
          )
        end
        attr_reader :data

        sig do
          params(
            data:
              Telnyx::Models::Whatsapp::PhoneNumberRetrieveConversationWindowResponse::Data::OrHash
          ).void
        end
        attr_writer :data

        sig do
          params(
            data:
              Telnyx::Models::Whatsapp::PhoneNumberRetrieveConversationWindowResponse::Data::OrHash
          ).returns(T.attached_class)
        end
        def self.new(data: nil)
        end

        sig do
          override.returns(
            {
              data:
                Telnyx::Models::Whatsapp::PhoneNumberRetrieveConversationWindowResponse::Data
            }
          )
        end
        def to_hash
        end

        class Data < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::Whatsapp::PhoneNumberRetrieveConversationWindowResponse::Data,
                Telnyx::Internal::AnyHash
              )
            end

          # Timestamp of the last inbound message that opened the window
          sig { returns(T.nilable(Time)) }
          attr_reader :last_user_message_at

          sig { params(last_user_message_at: Time).void }
          attr_writer :last_user_message_at

          # Whether the 24-hour conversation window is currently open
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :window_active

          sig { params(window_active: T::Boolean).void }
          attr_writer :window_active

          # When the window closes. Null if no active window.
          sig { returns(T.nilable(Time)) }
          attr_reader :window_expires_at

          sig { params(window_expires_at: Time).void }
          attr_writer :window_expires_at

          # Window type. Currently always 24h when present.
          sig { returns(T.nilable(String)) }
          attr_reader :window_type

          sig { params(window_type: String).void }
          attr_writer :window_type

          sig do
            params(
              last_user_message_at: Time,
              window_active: T::Boolean,
              window_expires_at: Time,
              window_type: String
            ).returns(T.attached_class)
          end
          def self.new(
            # Timestamp of the last inbound message that opened the window
            last_user_message_at: nil,
            # Whether the 24-hour conversation window is currently open
            window_active: nil,
            # When the window closes. Null if no active window.
            window_expires_at: nil,
            # Window type. Currently always 24h when present.
            window_type: nil
          )
          end

          sig do
            override.returns(
              {
                last_user_message_at: Time,
                window_active: T::Boolean,
                window_expires_at: Time,
                window_type: String
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
