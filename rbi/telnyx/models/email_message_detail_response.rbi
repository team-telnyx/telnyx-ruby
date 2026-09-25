# typed: strong

module Telnyx
  module Models
    class EmailMessageDetailResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::EmailMessageDetailResponse, Telnyx::Internal::AnyHash)
        end

      sig { returns(Telnyx::EmailMessageDetailResponse::Data) }
      attr_reader :data

      sig do
        params(data: Telnyx::EmailMessageDetailResponse::Data::OrHash).void
      end
      attr_writer :data

      sig do
        params(data: Telnyx::EmailMessageDetailResponse::Data::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(data:)
      end

      sig do
        override.returns({ data: Telnyx::EmailMessageDetailResponse::Data })
      end
      def to_hash
      end

      class Data < Telnyx::Models::EmailInboxes::EmailMessage
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::EmailMessageDetailResponse::Data,
              Telnyx::Internal::AnyHash
            )
          end

        # HTML body submitted for the message.
        sig { returns(T.nilable(String)) }
        attr_accessor :html_body

        # Plain-text body submitted for the message.
        sig { returns(T.nilable(String)) }
        attr_accessor :text_body

        sig do
          params(
            html_body: T.nilable(String),
            text_body: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # HTML body submitted for the message.
          html_body:,
          # Plain-text body submitted for the message.
          text_body:
        )
        end

        sig do
          override.returns(
            { html_body: T.nilable(String), text_body: T.nilable(String) }
          )
        end
        def to_hash
        end
      end
    end
  end
end
