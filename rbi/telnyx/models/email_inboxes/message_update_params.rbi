# typed: strong

module Telnyx
  module Models
    module EmailInboxes
      class MessageUpdateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::EmailInboxes::MessageUpdateParams,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :inbox_id

        sig { returns(String) }
        attr_accessor :message_id

        # Set to `true` for server time, an ISO 8601 timestamp for an explicit read time,
        # or `null` to mark unread.
        sig do
          returns(
            T.nilable(
              T.any(
                Telnyx::EmailInboxes::MessageUpdateParams::ReadAt::OrBoolean,
                Time
              )
            )
          )
        end
        attr_accessor :read_at

        sig do
          params(
            inbox_id: String,
            message_id: String,
            read_at:
              T.nilable(
                T.any(
                  Telnyx::EmailInboxes::MessageUpdateParams::ReadAt::OrBoolean,
                  Time
                )
              ),
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          inbox_id:,
          message_id:,
          # Set to `true` for server time, an ISO 8601 timestamp for an explicit read time,
          # or `null` to mark unread.
          read_at:,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              inbox_id: String,
              message_id: String,
              read_at:
                T.nilable(
                  T.any(
                    Telnyx::EmailInboxes::MessageUpdateParams::ReadAt::OrBoolean,
                    Time
                  )
                ),
              request_options: Telnyx::RequestOptions
            }
          )
        end
        def to_hash
        end

        # Set to `true` for server time, an ISO 8601 timestamp for an explicit read time,
        # or `null` to mark unread.
        module ReadAt
          extend Telnyx::Internal::Type::Union

          Variants =
            T.type_alias do
              T.nilable(
                T.any(
                  Telnyx::EmailInboxes::MessageUpdateParams::ReadAt::TaggedBoolean,
                  Time
                )
              )
            end

          sig do
            override.returns(
              T::Array[
                Telnyx::EmailInboxes::MessageUpdateParams::ReadAt::Variants
              ]
            )
          end
          def self.variants
          end

          TaggedBoolean =
            T.type_alias do
              T.all(
                T::Boolean,
                Telnyx::EmailInboxes::MessageUpdateParams::ReadAt
              )
            end
          OrBoolean = T.type_alias { T::Boolean }

          TRUE =
            T.let(
              true,
              Telnyx::EmailInboxes::MessageUpdateParams::ReadAt::TaggedBoolean
            )
        end
      end
    end
  end
end
