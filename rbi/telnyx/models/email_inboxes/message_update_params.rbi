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

        sig do
          returns(
            T.any(
              Telnyx::EmailInboxes::MessageUpdateParams::ReadAt::ServerReadTime::OrBoolean,
              Time
            )
          )
        end
        attr_accessor :read_at

        sig do
          params(
            inbox_id: String,
            message_id: String,
            read_at:
              T.any(
                Telnyx::EmailInboxes::MessageUpdateParams::ReadAt::ServerReadTime::OrBoolean,
                Time
              ),
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(inbox_id:, message_id:, read_at:, request_options: {})
        end

        sig do
          override.returns(
            {
              inbox_id: String,
              message_id: String,
              read_at:
                T.any(
                  Telnyx::EmailInboxes::MessageUpdateParams::ReadAt::ServerReadTime::OrBoolean,
                  Time
                ),
              request_options: Telnyx::RequestOptions
            }
          )
        end
        def to_hash
        end

        module ReadAt
          extend Telnyx::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                Telnyx::EmailInboxes::MessageUpdateParams::ReadAt::ServerReadTime::TaggedBoolean,
                Time
              )
            end

          module ServerReadTime
            extend Telnyx::Internal::Type::Enum

            TaggedBoolean =
              T.type_alias do
                T.all(
                  T::Boolean,
                  Telnyx::EmailInboxes::MessageUpdateParams::ReadAt::ServerReadTime
                )
              end
            OrBoolean = T.type_alias { T::Boolean }

            TRUE =
              T.let(
                true,
                Telnyx::EmailInboxes::MessageUpdateParams::ReadAt::ServerReadTime::TaggedBoolean
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::EmailInboxes::MessageUpdateParams::ReadAt::ServerReadTime::TaggedBoolean
                ]
              )
            end
            def self.values
            end
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
        end
      end
    end
  end
end
