# typed: strong

module Telnyx
  module Models
    TexmlRecordingSubresourcesUris = Texml::TexmlRecordingSubresourcesUris

    module Texml
      class TexmlRecordingSubresourcesUris < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Texml::TexmlRecordingSubresourcesUris,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(String)) }
        attr_accessor :transcriptions

        # Subresources details for a recording if available.
        sig do
          params(transcriptions: T.nilable(String)).returns(T.attached_class)
        end
        def self.new(transcriptions: nil)
        end

        sig { override.returns({ transcriptions: T.nilable(String) }) }
        def to_hash
        end
      end
    end
  end
end
