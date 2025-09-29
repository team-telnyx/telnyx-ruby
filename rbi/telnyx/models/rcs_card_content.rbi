# typed: strong

module Telnyx
  module Models
    class RcsCardContent < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::RcsCardContent, Telnyx::Internal::AnyHash)
        end

      # Description of the card (at most 2000 characters)
      sig { returns(T.nilable(String)) }
      attr_reader :description

      sig { params(description: String).void }
      attr_writer :description

      # A media file within a rich card.
      sig { returns(T.nilable(Telnyx::RcsCardContent::Media)) }
      attr_reader :media

      sig { params(media: Telnyx::RcsCardContent::Media::OrHash).void }
      attr_writer :media

      # List of suggestions to include in the card. Maximum 10 suggestions.
      sig { returns(T.nilable(T::Array[Telnyx::RcsSuggestion])) }
      attr_reader :suggestions

      sig { params(suggestions: T::Array[Telnyx::RcsSuggestion::OrHash]).void }
      attr_writer :suggestions

      # Title of the card (at most 200 characters)
      sig { returns(T.nilable(String)) }
      attr_reader :title

      sig { params(title: String).void }
      attr_writer :title

      sig do
        params(
          description: String,
          media: Telnyx::RcsCardContent::Media::OrHash,
          suggestions: T::Array[Telnyx::RcsSuggestion::OrHash],
          title: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Description of the card (at most 2000 characters)
        description: nil,
        # A media file within a rich card.
        media: nil,
        # List of suggestions to include in the card. Maximum 10 suggestions.
        suggestions: nil,
        # Title of the card (at most 200 characters)
        title: nil
      )
      end

      sig do
        override.returns(
          {
            description: String,
            media: Telnyx::RcsCardContent::Media,
            suggestions: T::Array[Telnyx::RcsSuggestion],
            title: String
          }
        )
      end
      def to_hash
      end

      class Media < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::RcsCardContent::Media, Telnyx::Internal::AnyHash)
          end

        sig { returns(T.nilable(Telnyx::RcsContentInfo)) }
        attr_reader :content_info

        sig { params(content_info: Telnyx::RcsContentInfo::OrHash).void }
        attr_writer :content_info

        # The height of the media within a rich card with a vertical layout. For a
        # standalone card with horizontal layout, height is not customizable, and this
        # field is ignored.
        sig do
          returns(T.nilable(Telnyx::RcsCardContent::Media::Height::OrSymbol))
        end
        attr_reader :height

        sig do
          params(height: Telnyx::RcsCardContent::Media::Height::OrSymbol).void
        end
        attr_writer :height

        # A media file within a rich card.
        sig do
          params(
            content_info: Telnyx::RcsContentInfo::OrHash,
            height: Telnyx::RcsCardContent::Media::Height::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          content_info: nil,
          # The height of the media within a rich card with a vertical layout. For a
          # standalone card with horizontal layout, height is not customizable, and this
          # field is ignored.
          height: nil
        )
        end

        sig do
          override.returns(
            {
              content_info: Telnyx::RcsContentInfo,
              height: Telnyx::RcsCardContent::Media::Height::OrSymbol
            }
          )
        end
        def to_hash
        end

        # The height of the media within a rich card with a vertical layout. For a
        # standalone card with horizontal layout, height is not customizable, and this
        # field is ignored.
        module Height
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::RcsCardContent::Media::Height)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          HEIGHT_UNSPECIFIED =
            T.let(
              :HEIGHT_UNSPECIFIED,
              Telnyx::RcsCardContent::Media::Height::TaggedSymbol
            )
          SHORT =
            T.let(:SHORT, Telnyx::RcsCardContent::Media::Height::TaggedSymbol)
          MEDIUM =
            T.let(:MEDIUM, Telnyx::RcsCardContent::Media::Height::TaggedSymbol)
          TALL =
            T.let(:TALL, Telnyx::RcsCardContent::Media::Height::TaggedSymbol)

          sig do
            override.returns(
              T::Array[Telnyx::RcsCardContent::Media::Height::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
