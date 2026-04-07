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

      # Template message object. Provide either template_id or name + language to
      # identify the template.
      sig { returns(T.nilable(Telnyx::WhatsappMessageContent::Template)) }
      attr_reader :template

      sig do
        params(template: Telnyx::WhatsappMessageContent::Template::OrHash).void
      end
      attr_writer :template

      # Text message content. Can only be sent within a 24-hour customer service window.
      sig { returns(T.nilable(Telnyx::WhatsappMessageContent::Text)) }
      attr_reader :text

      sig { params(text: Telnyx::WhatsappMessageContent::Text::OrHash).void }
      attr_writer :text

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
          template: Telnyx::WhatsappMessageContent::Template::OrHash,
          text: Telnyx::WhatsappMessageContent::Text::OrHash,
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
        # Template message object. Provide either template_id or name + language to
        # identify the template.
        template: nil,
        # Text message content. Can only be sent within a 24-hour customer service window.
        text: nil,
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
            template: Telnyx::WhatsappMessageContent::Template,
            text: Telnyx::WhatsappMessageContent::Text,
            type: Telnyx::WhatsappMessageContent::Type::OrSymbol,
            video: Telnyx::WhatsappMedia
          }
        )
      end
      def to_hash
      end

      class Template < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::WhatsappMessageContent::Template,
              Telnyx::Internal::AnyHash
            )
          end

        # Template parameter values for header, body, and button components.
        sig do
          returns(
            T.nilable(
              T::Array[Telnyx::WhatsappMessageContent::Template::Component]
            )
          )
        end
        attr_reader :components

        sig do
          params(
            components:
              T::Array[
                Telnyx::WhatsappMessageContent::Template::Component::OrHash
              ]
          ).void
        end
        attr_writer :components

        # Template language. Required unless template_id is provided.
        sig do
          returns(T.nilable(Telnyx::WhatsappMessageContent::Template::Language))
        end
        attr_reader :language

        sig do
          params(
            language: Telnyx::WhatsappMessageContent::Template::Language::OrHash
          ).void
        end
        attr_writer :language

        # Template name as registered with Meta. Required unless template_id is provided.
        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        # Telnyx template ID (the id field from template list/get responses). When
        # provided, name and language are resolved automatically.
        sig { returns(T.nilable(String)) }
        attr_reader :template_id

        sig { params(template_id: String).void }
        attr_writer :template_id

        # Template message object. Provide either template_id or name + language to
        # identify the template.
        sig do
          params(
            components:
              T::Array[
                Telnyx::WhatsappMessageContent::Template::Component::OrHash
              ],
            language:
              Telnyx::WhatsappMessageContent::Template::Language::OrHash,
            name: String,
            template_id: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Template parameter values for header, body, and button components.
          components: nil,
          # Template language. Required unless template_id is provided.
          language: nil,
          # Template name as registered with Meta. Required unless template_id is provided.
          name: nil,
          # Telnyx template ID (the id field from template list/get responses). When
          # provided, name and language are resolved automatically.
          template_id: nil
        )
        end

        sig do
          override.returns(
            {
              components:
                T::Array[Telnyx::WhatsappMessageContent::Template::Component],
              language: Telnyx::WhatsappMessageContent::Template::Language,
              name: String,
              template_id: String
            }
          )
        end
        def to_hash
        end

        class Component < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::WhatsappMessageContent::Template::Component,
                Telnyx::Internal::AnyHash
              )
            end

          # Button index (required for button components)
          sig { returns(T.nilable(Integer)) }
          attr_reader :index

          sig { params(index: Integer).void }
          attr_writer :index

          sig do
            returns(
              T.nilable(
                T::Array[
                  Telnyx::WhatsappMessageContent::Template::Component::Parameter
                ]
              )
            )
          end
          attr_reader :parameters

          sig do
            params(
              parameters:
                T::Array[
                  Telnyx::WhatsappMessageContent::Template::Component::Parameter::OrHash
                ]
            ).void
          end
          attr_writer :parameters

          sig do
            returns(
              T.nilable(
                Telnyx::WhatsappMessageContent::Template::Component::SubType::OrSymbol
              )
            )
          end
          attr_reader :sub_type

          sig do
            params(
              sub_type:
                Telnyx::WhatsappMessageContent::Template::Component::SubType::OrSymbol
            ).void
          end
          attr_writer :sub_type

          sig do
            returns(
              T.nilable(
                Telnyx::WhatsappMessageContent::Template::Component::Type::OrSymbol
              )
            )
          end
          attr_reader :type

          sig do
            params(
              type:
                Telnyx::WhatsappMessageContent::Template::Component::Type::OrSymbol
            ).void
          end
          attr_writer :type

          sig do
            params(
              index: Integer,
              parameters:
                T::Array[
                  Telnyx::WhatsappMessageContent::Template::Component::Parameter::OrHash
                ],
              sub_type:
                Telnyx::WhatsappMessageContent::Template::Component::SubType::OrSymbol,
              type:
                Telnyx::WhatsappMessageContent::Template::Component::Type::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            # Button index (required for button components)
            index: nil,
            parameters: nil,
            sub_type: nil,
            type: nil
          )
          end

          sig do
            override.returns(
              {
                index: Integer,
                parameters:
                  T::Array[
                    Telnyx::WhatsappMessageContent::Template::Component::Parameter
                  ],
                sub_type:
                  Telnyx::WhatsappMessageContent::Template::Component::SubType::OrSymbol,
                type:
                  Telnyx::WhatsappMessageContent::Template::Component::Type::OrSymbol
              }
            )
          end
          def to_hash
          end

          class Parameter < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::WhatsappMessageContent::Template::Component::Parameter,
                  Telnyx::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(String)) }
            attr_reader :text

            sig { params(text: String).void }
            attr_writer :text

            sig do
              returns(
                T.nilable(
                  Telnyx::WhatsappMessageContent::Template::Component::Parameter::Type::OrSymbol
                )
              )
            end
            attr_reader :type

            sig do
              params(
                type:
                  Telnyx::WhatsappMessageContent::Template::Component::Parameter::Type::OrSymbol
              ).void
            end
            attr_writer :type

            sig do
              params(
                text: String,
                type:
                  Telnyx::WhatsappMessageContent::Template::Component::Parameter::Type::OrSymbol
              ).returns(T.attached_class)
            end
            def self.new(text: nil, type: nil)
            end

            sig do
              override.returns(
                {
                  text: String,
                  type:
                    Telnyx::WhatsappMessageContent::Template::Component::Parameter::Type::OrSymbol
                }
              )
            end
            def to_hash
            end

            module Type
              extend Telnyx::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Telnyx::WhatsappMessageContent::Template::Component::Parameter::Type
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              TEXT =
                T.let(
                  :text,
                  Telnyx::WhatsappMessageContent::Template::Component::Parameter::Type::TaggedSymbol
                )
              IMAGE =
                T.let(
                  :image,
                  Telnyx::WhatsappMessageContent::Template::Component::Parameter::Type::TaggedSymbol
                )
              VIDEO =
                T.let(
                  :video,
                  Telnyx::WhatsappMessageContent::Template::Component::Parameter::Type::TaggedSymbol
                )
              DOCUMENT =
                T.let(
                  :document,
                  Telnyx::WhatsappMessageContent::Template::Component::Parameter::Type::TaggedSymbol
                )
              CURRENCY =
                T.let(
                  :currency,
                  Telnyx::WhatsappMessageContent::Template::Component::Parameter::Type::TaggedSymbol
                )
              DATE_TIME =
                T.let(
                  :date_time,
                  Telnyx::WhatsappMessageContent::Template::Component::Parameter::Type::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::WhatsappMessageContent::Template::Component::Parameter::Type::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          module SubType
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::WhatsappMessageContent::Template::Component::SubType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            QUICK_REPLY =
              T.let(
                :quick_reply,
                Telnyx::WhatsappMessageContent::Template::Component::SubType::TaggedSymbol
              )
            URL =
              T.let(
                :url,
                Telnyx::WhatsappMessageContent::Template::Component::SubType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::WhatsappMessageContent::Template::Component::SubType::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          module Type
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::WhatsappMessageContent::Template::Component::Type
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            HEADER =
              T.let(
                :header,
                Telnyx::WhatsappMessageContent::Template::Component::Type::TaggedSymbol
              )
            BODY =
              T.let(
                :body,
                Telnyx::WhatsappMessageContent::Template::Component::Type::TaggedSymbol
              )
            BUTTON =
              T.let(
                :button,
                Telnyx::WhatsappMessageContent::Template::Component::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::WhatsappMessageContent::Template::Component::Type::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class Language < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::WhatsappMessageContent::Template::Language,
                Telnyx::Internal::AnyHash
              )
            end

          # Language code (e.g. en_US)
          sig { returns(String) }
          attr_accessor :code

          sig { returns(T.nilable(String)) }
          attr_reader :policy

          sig { params(policy: String).void }
          attr_writer :policy

          # Template language. Required unless template_id is provided.
          sig { params(code: String, policy: String).returns(T.attached_class) }
          def self.new(
            # Language code (e.g. en_US)
            code:,
            policy: nil
          )
          end

          sig { override.returns({ code: String, policy: String }) }
          def to_hash
          end
        end
      end

      class Text < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::WhatsappMessageContent::Text,
              Telnyx::Internal::AnyHash
            )
          end

        # The text message body.
        sig { returns(String) }
        attr_accessor :body

        # Whether to show a URL preview in the message.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :preview_url

        sig { params(preview_url: T::Boolean).void }
        attr_writer :preview_url

        # Text message content. Can only be sent within a 24-hour customer service window.
        sig do
          params(body: String, preview_url: T::Boolean).returns(
            T.attached_class
          )
        end
        def self.new(
          # The text message body.
          body:,
          # Whether to show a URL preview in the message.
          preview_url: nil
        )
        end

        sig { override.returns({ body: String, preview_url: T::Boolean }) }
        def to_hash
        end
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
        TEXT = T.let(:text, Telnyx::WhatsappMessageContent::Type::TaggedSymbol)

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
