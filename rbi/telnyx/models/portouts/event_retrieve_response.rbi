# typed: strong

module Telnyx
  module Models
    module Portouts
      class EventRetrieveResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::Portouts::EventRetrieveResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(
              Telnyx::Models::Portouts::EventRetrieveResponse::Data::Variants
            )
          )
        end
        attr_reader :data

        sig do
          params(
            data:
              T.any(
                Telnyx::Portouts::WebhookPortoutStatusChanged::OrHash,
                Telnyx::Portouts::WebhookPortoutNewComment::OrHash,
                Telnyx::Portouts::WebhookPortoutFocDateChanged::OrHash
              )
          ).void
        end
        attr_writer :data

        sig do
          params(
            data:
              T.any(
                Telnyx::Portouts::WebhookPortoutStatusChanged::OrHash,
                Telnyx::Portouts::WebhookPortoutNewComment::OrHash,
                Telnyx::Portouts::WebhookPortoutFocDateChanged::OrHash
              )
          ).returns(T.attached_class)
        end
        def self.new(data: nil)
        end

        sig do
          override.returns(
            {
              data:
                Telnyx::Models::Portouts::EventRetrieveResponse::Data::Variants
            }
          )
        end
        def to_hash
        end

        module Data
          extend Telnyx::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                Telnyx::Portouts::WebhookPortoutStatusChanged,
                Telnyx::Portouts::WebhookPortoutNewComment,
                Telnyx::Portouts::WebhookPortoutFocDateChanged
              )
            end

          sig do
            override.returns(
              T::Array[
                Telnyx::Models::Portouts::EventRetrieveResponse::Data::Variants
              ]
            )
          end
          def self.variants
          end
        end
      end
    end
  end
end
