# typed: strong

module Telnyx
  module Models
    class PronunciationDictRetrieveResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::PronunciationDictRetrieveResponse,
            Telnyx::Internal::AnyHash
          )
        end

      # A pronunciation dictionary record.
      sig { returns(T.nilable(Telnyx::PronunciationDictData)) }
      attr_reader :data

      sig { params(data: Telnyx::PronunciationDictData::OrHash).void }
      attr_writer :data

      # Response containing a single pronunciation dictionary.
      sig do
        params(data: Telnyx::PronunciationDictData::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(
        # A pronunciation dictionary record.
        data: nil
      )
      end

      sig { override.returns({ data: Telnyx::PronunciationDictData }) }
      def to_hash
      end
    end
  end
end
