# typed: strong

module Telnyx
  module Models
    class WhatsappMedia < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Telnyx::WhatsappMedia, Telnyx::Internal::AnyHash) }

      # media caption
      sig { returns(T.nilable(String)) }
      attr_reader :caption

      sig { params(caption: String).void }
      attr_writer :caption

      # file name with extension
      sig { returns(T.nilable(String)) }
      attr_reader :filename

      sig { params(filename: String).void }
      attr_writer :filename

      # media URL
      sig { returns(T.nilable(String)) }
      attr_reader :link

      sig { params(link: String).void }
      attr_writer :link

      # true if voice message
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :voice

      sig { params(voice: T::Boolean).void }
      attr_writer :voice

      sig do
        params(
          caption: String,
          filename: String,
          link: String,
          voice: T::Boolean
        ).returns(T.attached_class)
      end
      def self.new(
        # media caption
        caption: nil,
        # file name with extension
        filename: nil,
        # media URL
        link: nil,
        # true if voice message
        voice: nil
      )
      end

      sig do
        override.returns(
          { caption: String, filename: String, link: String, voice: T::Boolean }
        )
      end
      def to_hash
      end
    end
  end
end
