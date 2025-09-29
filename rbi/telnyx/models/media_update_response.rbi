# typed: strong

module Telnyx
  module Models
    class MediaUpdateResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::Models::MediaUpdateResponse, Telnyx::Internal::AnyHash)
        end

      sig { returns(T.nilable(Telnyx::MediaResource)) }
      attr_reader :data

      sig { params(data: Telnyx::MediaResource::OrHash).void }
      attr_writer :data

      sig do
        params(data: Telnyx::MediaResource::OrHash).returns(T.attached_class)
      end
      def self.new(data: nil)
      end

      sig { override.returns({ data: Telnyx::MediaResource }) }
      def to_hash
      end
    end
  end
end
