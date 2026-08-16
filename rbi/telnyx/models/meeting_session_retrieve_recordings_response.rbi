# typed: strong

module Telnyx
  module Models
    class MeetingSessionRetrieveRecordingsResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::MeetingSessionRetrieveRecordingsResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig do
        returns(
          T::Array[
            Telnyx::Models::MeetingSessionRetrieveRecordingsResponse::Data
          ]
        )
      end
      attr_accessor :data

      sig do
        params(
          data:
            T::Array[
              Telnyx::Models::MeetingSessionRetrieveRecordingsResponse::Data::OrHash
            ]
        ).returns(T.attached_class)
      end
      def self.new(data:)
      end

      sig do
        override.returns(
          {
            data:
              T::Array[
                Telnyx::Models::MeetingSessionRetrieveRecordingsResponse::Data
              ]
          }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::MeetingSessionRetrieveRecordingsResponse::Data,
              Telnyx::Internal::AnyHash
            )
          end

        # Expiry timestamp when supplied by the provider, or null. The current adapter
        # returns null.
        sig { returns(T.nilable(String)) }
        attr_accessor :expires_at

        sig { returns(String) }
        attr_accessor :type

        # Current provider download URL. The API does not guarantee URL lifetime or
        # refresh behavior.
        sig { returns(String) }
        attr_accessor :url

        sig do
          params(
            expires_at: T.nilable(String),
            type: String,
            url: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Expiry timestamp when supplied by the provider, or null. The current adapter
          # returns null.
          expires_at:,
          type:,
          # Current provider download URL. The API does not guarantee URL lifetime or
          # refresh behavior.
          url:
        )
        end

        sig do
          override.returns(
            { expires_at: T.nilable(String), type: String, url: String }
          )
        end
        def to_hash
        end
      end
    end
  end
end
