# typed: strong

module Telnyx
  module Models
    class WhatsappMessageContent < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::WhatsappMessageContent, Telnyx::Internal::AnyHash)
        end

      sig { returns(T.nilable(Telnyx::WhatsappMedia)) }
      attr_reader :audio

      sig { params(audio: Telnyx::WhatsappMedia::OrHash).void }
      attr_writer :audio

      # custom data to return with status update
      sig { returns(T.nilable(String)) }
      attr_reader :biz_opaque_callback_data

      sig { params(biz_opaque_callback_data: String).void }
      attr_writer :biz_opaque_callback_data

      sig { returns(T.nilable(T::Array[Telnyx::WhatsappContact])) }
      attr_reader :contacts

      sig { params(contacts: T::Array[Telnyx::WhatsappContact::OrHash]).void }
      attr_writer :contacts

      sig { returns(T.nilable(Telnyx::WhatsappMedia)) }
      attr_reader :document

      sig { params(document: Telnyx::WhatsappMedia::OrHash).void }
      attr_writer :document

      sig { returns(T.nilable(Telnyx::WhatsappMedia)) }
      attr_reader :image

      sig { params(image: Telnyx::WhatsappMedia::OrHash).void }
      attr_writer :image

      sig { returns(T.nilable(Telnyx::WhatsappInteractive)) }
      attr_reader :interactive

      sig { params(interactive: Telnyx::WhatsappInteractive::OrHash).void }
      attr_writer :interactive

      sig { returns(T.nilable(Telnyx::WhatsappLocation)) }
      attr_reader :location

      sig { params(location: Telnyx::WhatsappLocation::OrHash).void }
      attr_writer :location

      sig { returns(T.nilable(Telnyx::WhatsappReaction)) }
      attr_reader :reaction

      sig { params(reaction: Telnyx::WhatsappReaction::OrHash).void }
      attr_writer :reaction

      sig { returns(T.nilable(Telnyx::WhatsappMedia)) }
      attr_reader :sticker

      sig { params(sticker: Telnyx::WhatsappMedia::OrHash).void }
      attr_writer :sticker

      sig { returns(T.nilable(Telnyx::WhatsappMessageContent::Type::OrSymbol)) }
      attr_reader :type

      sig { params(type: Telnyx::WhatsappMessageContent::Type::OrSymbol).void }
      attr_writer :type

      sig { returns(T.nilable(Telnyx::WhatsappMedia)) }
      attr_reader :video

      sig { params(video: Telnyx::WhatsappMedia::OrHash).void }
      attr_writer :video

      sig do
        params(
          audio: Telnyx::WhatsappMedia::OrHash,
          biz_opaque_callback_data: String,
          contacts: T::Array[Telnyx::WhatsappContact::OrHash],
          document: Telnyx::WhatsappMedia::OrHash,
          image: Telnyx::WhatsappMedia::OrHash,
          interactive: Telnyx::WhatsappInteractive::OrHash,
          location: Telnyx::WhatsappLocation::OrHash,
          reaction: Telnyx::WhatsappReaction::OrHash,
          sticker: Telnyx::WhatsappMedia::OrHash,
          type: Telnyx::WhatsappMessageContent::Type::OrSymbol,
          video: Telnyx::WhatsappMedia::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        audio: nil,
        # custom data to return with status update
        biz_opaque_callback_data: nil,
        contacts: nil,
        document: nil,
        image: nil,
        interactive: nil,
        location: nil,
        reaction: nil,
        sticker: nil,
        type: nil,
        video: nil
      )
      end

      sig do
        override.returns(
          {
            audio: Telnyx::WhatsappMedia,
            biz_opaque_callback_data: String,
            contacts: T::Array[Telnyx::WhatsappContact],
            document: Telnyx::WhatsappMedia,
            image: Telnyx::WhatsappMedia,
            interactive: Telnyx::WhatsappInteractive,
            location: Telnyx::WhatsappLocation,
            reaction: Telnyx::WhatsappReaction,
            sticker: Telnyx::WhatsappMedia,
            type: Telnyx::WhatsappMessageContent::Type::OrSymbol,
            video: Telnyx::WhatsappMedia
          }
        )
      end
      def to_hash
      end

      module Type
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::WhatsappMessageContent::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        AUDIO =
          T.let(:audio, Telnyx::WhatsappMessageContent::Type::TaggedSymbol)
        DOCUMENT =
          T.let(:document, Telnyx::WhatsappMessageContent::Type::TaggedSymbol)
        IMAGE =
          T.let(:image, Telnyx::WhatsappMessageContent::Type::TaggedSymbol)
        STICKER =
          T.let(:sticker, Telnyx::WhatsappMessageContent::Type::TaggedSymbol)
        VIDEO =
          T.let(:video, Telnyx::WhatsappMessageContent::Type::TaggedSymbol)
        INTERACTIVE =
          T.let(
            :interactive,
            Telnyx::WhatsappMessageContent::Type::TaggedSymbol
          )
        LOCATION =
          T.let(:location, Telnyx::WhatsappMessageContent::Type::TaggedSymbol)
        TEMPLATE =
          T.let(:template, Telnyx::WhatsappMessageContent::Type::TaggedSymbol)
        REACTION =
          T.let(:reaction, Telnyx::WhatsappMessageContent::Type::TaggedSymbol)
        CONTACTS =
          T.let(:contacts, Telnyx::WhatsappMessageContent::Type::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::WhatsappMessageContent::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
