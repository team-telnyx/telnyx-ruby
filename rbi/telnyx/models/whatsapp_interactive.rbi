# typed: strong

module Telnyx
  module Models
    class WhatsappInteractive < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::WhatsappInteractive, Telnyx::Internal::AnyHash)
        end

      sig { returns(T.nilable(Telnyx::WhatsappInteractive::Action)) }
      attr_reader :action

      sig { params(action: Telnyx::WhatsappInteractive::Action::OrHash).void }
      attr_writer :action

      sig { returns(T.nilable(Telnyx::WhatsappInteractive::Body)) }
      attr_reader :body

      sig { params(body: Telnyx::WhatsappInteractive::Body::OrHash).void }
      attr_writer :body

      sig { returns(T.nilable(Telnyx::WhatsappInteractive::Footer)) }
      attr_reader :footer

      sig { params(footer: Telnyx::WhatsappInteractive::Footer::OrHash).void }
      attr_writer :footer

      sig { returns(T.nilable(Telnyx::WhatsappInteractive::Header)) }
      attr_reader :header

      sig { params(header: Telnyx::WhatsappInteractive::Header::OrHash).void }
      attr_writer :header

      sig { returns(T.nilable(Telnyx::WhatsappInteractive::Type::OrSymbol)) }
      attr_reader :type

      sig { params(type: Telnyx::WhatsappInteractive::Type::OrSymbol).void }
      attr_writer :type

      sig do
        params(
          action: Telnyx::WhatsappInteractive::Action::OrHash,
          body: Telnyx::WhatsappInteractive::Body::OrHash,
          footer: Telnyx::WhatsappInteractive::Footer::OrHash,
          header: Telnyx::WhatsappInteractive::Header::OrHash,
          type: Telnyx::WhatsappInteractive::Type::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(action: nil, body: nil, footer: nil, header: nil, type: nil)
      end

      sig do
        override.returns(
          {
            action: Telnyx::WhatsappInteractive::Action,
            body: Telnyx::WhatsappInteractive::Body,
            footer: Telnyx::WhatsappInteractive::Footer,
            header: Telnyx::WhatsappInteractive::Header,
            type: Telnyx::WhatsappInteractive::Type::OrSymbol
          }
        )
      end
      def to_hash
      end

      class Action < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::WhatsappInteractive::Action,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(String)) }
        attr_reader :button

        sig { params(button: String).void }
        attr_writer :button

        sig do
          returns(
            T.nilable(T::Array[Telnyx::WhatsappInteractive::Action::Button])
          )
        end
        attr_reader :buttons

        sig do
          params(
            buttons:
              T::Array[Telnyx::WhatsappInteractive::Action::Button::OrHash]
          ).void
        end
        attr_writer :buttons

        sig do
          returns(
            T.nilable(T::Array[Telnyx::WhatsappInteractive::Action::Card])
          )
        end
        attr_reader :cards

        sig do
          params(
            cards: T::Array[Telnyx::WhatsappInteractive::Action::Card::OrHash]
          ).void
        end
        attr_writer :cards

        sig { returns(T.nilable(String)) }
        attr_reader :catalog_id

        sig { params(catalog_id: String).void }
        attr_writer :catalog_id

        sig { returns(T.nilable(String)) }
        attr_reader :mode

        sig { params(mode: String).void }
        attr_writer :mode

        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        sig do
          returns(T.nilable(Telnyx::WhatsappInteractive::Action::Parameters))
        end
        attr_reader :parameters

        sig do
          params(
            parameters: Telnyx::WhatsappInteractive::Action::Parameters::OrHash
          ).void
        end
        attr_writer :parameters

        sig { returns(T.nilable(String)) }
        attr_reader :product_retailer_id

        sig { params(product_retailer_id: String).void }
        attr_writer :product_retailer_id

        sig do
          returns(
            T.nilable(T::Array[Telnyx::WhatsappInteractive::Action::Section])
          )
        end
        attr_reader :sections

        sig do
          params(
            sections:
              T::Array[Telnyx::WhatsappInteractive::Action::Section::OrHash]
          ).void
        end
        attr_writer :sections

        sig do
          params(
            button: String,
            buttons:
              T::Array[Telnyx::WhatsappInteractive::Action::Button::OrHash],
            cards: T::Array[Telnyx::WhatsappInteractive::Action::Card::OrHash],
            catalog_id: String,
            mode: String,
            name: String,
            parameters: Telnyx::WhatsappInteractive::Action::Parameters::OrHash,
            product_retailer_id: String,
            sections:
              T::Array[Telnyx::WhatsappInteractive::Action::Section::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(
          button: nil,
          buttons: nil,
          cards: nil,
          catalog_id: nil,
          mode: nil,
          name: nil,
          parameters: nil,
          product_retailer_id: nil,
          sections: nil
        )
        end

        sig do
          override.returns(
            {
              button: String,
              buttons: T::Array[Telnyx::WhatsappInteractive::Action::Button],
              cards: T::Array[Telnyx::WhatsappInteractive::Action::Card],
              catalog_id: String,
              mode: String,
              name: String,
              parameters: Telnyx::WhatsappInteractive::Action::Parameters,
              product_retailer_id: String,
              sections: T::Array[Telnyx::WhatsappInteractive::Action::Section]
            }
          )
        end
        def to_hash
        end

        class Button < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::WhatsappInteractive::Action::Button,
                Telnyx::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(Telnyx::WhatsappInteractive::Action::Button::Reply)
            )
          end
          attr_reader :reply

          sig do
            params(
              reply: Telnyx::WhatsappInteractive::Action::Button::Reply::OrHash
            ).void
          end
          attr_writer :reply

          sig do
            returns(
              T.nilable(
                Telnyx::WhatsappInteractive::Action::Button::Type::OrSymbol
              )
            )
          end
          attr_reader :type

          sig do
            params(
              type: Telnyx::WhatsappInteractive::Action::Button::Type::OrSymbol
            ).void
          end
          attr_writer :type

          sig do
            params(
              reply: Telnyx::WhatsappInteractive::Action::Button::Reply::OrHash,
              type: Telnyx::WhatsappInteractive::Action::Button::Type::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(reply: nil, type: nil)
          end

          sig do
            override.returns(
              {
                reply: Telnyx::WhatsappInteractive::Action::Button::Reply,
                type:
                  Telnyx::WhatsappInteractive::Action::Button::Type::OrSymbol
              }
            )
          end
          def to_hash
          end

          class Reply < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::WhatsappInteractive::Action::Button::Reply,
                  Telnyx::Internal::AnyHash
                )
              end

            # unique identifier for each button, 256 character maximum
            sig { returns(T.nilable(String)) }
            attr_reader :id

            sig { params(id: String).void }
            attr_writer :id

            # button label, 20 character maximum
            sig { returns(T.nilable(String)) }
            attr_reader :title

            sig { params(title: String).void }
            attr_writer :title

            sig { params(id: String, title: String).returns(T.attached_class) }
            def self.new(
              # unique identifier for each button, 256 character maximum
              id: nil,
              # button label, 20 character maximum
              title: nil
            )
            end

            sig { override.returns({ id: String, title: String }) }
            def to_hash
            end
          end

          module Type
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(Symbol, Telnyx::WhatsappInteractive::Action::Button::Type)
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            REPLY =
              T.let(
                :reply,
                Telnyx::WhatsappInteractive::Action::Button::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::WhatsappInteractive::Action::Button::Type::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class Card < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::WhatsappInteractive::Action::Card,
                Telnyx::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(Telnyx::WhatsappInteractive::Action::Card::Action)
            )
          end
          attr_reader :action

          sig do
            params(
              action: Telnyx::WhatsappInteractive::Action::Card::Action::OrHash
            ).void
          end
          attr_writer :action

          sig do
            returns(T.nilable(Telnyx::WhatsappInteractive::Action::Card::Body))
          end
          attr_reader :body

          sig do
            params(
              body: Telnyx::WhatsappInteractive::Action::Card::Body::OrHash
            ).void
          end
          attr_writer :body

          # unique index for each card (0-9)
          sig { returns(T.nilable(Integer)) }
          attr_reader :card_index

          sig { params(card_index: Integer).void }
          attr_writer :card_index

          sig do
            returns(
              T.nilable(Telnyx::WhatsappInteractive::Action::Card::Header)
            )
          end
          attr_reader :header

          sig do
            params(
              header: Telnyx::WhatsappInteractive::Action::Card::Header::OrHash
            ).void
          end
          attr_writer :header

          sig do
            returns(
              T.nilable(
                Telnyx::WhatsappInteractive::Action::Card::Type::OrSymbol
              )
            )
          end
          attr_reader :type

          sig do
            params(
              type: Telnyx::WhatsappInteractive::Action::Card::Type::OrSymbol
            ).void
          end
          attr_writer :type

          sig do
            params(
              action: Telnyx::WhatsappInteractive::Action::Card::Action::OrHash,
              body: Telnyx::WhatsappInteractive::Action::Card::Body::OrHash,
              card_index: Integer,
              header: Telnyx::WhatsappInteractive::Action::Card::Header::OrHash,
              type: Telnyx::WhatsappInteractive::Action::Card::Type::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            action: nil,
            body: nil,
            # unique index for each card (0-9)
            card_index: nil,
            header: nil,
            type: nil
          )
          end

          sig do
            override.returns(
              {
                action: Telnyx::WhatsappInteractive::Action::Card::Action,
                body: Telnyx::WhatsappInteractive::Action::Card::Body,
                card_index: Integer,
                header: Telnyx::WhatsappInteractive::Action::Card::Header,
                type: Telnyx::WhatsappInteractive::Action::Card::Type::OrSymbol
              }
            )
          end
          def to_hash
          end

          class Action < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::WhatsappInteractive::Action::Card::Action,
                  Telnyx::Internal::AnyHash
                )
              end

            # the unique ID of the catalog
            sig { returns(T.nilable(String)) }
            attr_reader :catalog_id

            sig { params(catalog_id: String).void }
            attr_writer :catalog_id

            # the unique retailer ID of the product
            sig { returns(T.nilable(String)) }
            attr_reader :product_retailer_id

            sig { params(product_retailer_id: String).void }
            attr_writer :product_retailer_id

            sig do
              params(catalog_id: String, product_retailer_id: String).returns(
                T.attached_class
              )
            end
            def self.new(
              # the unique ID of the catalog
              catalog_id: nil,
              # the unique retailer ID of the product
              product_retailer_id: nil
            )
            end

            sig do
              override.returns(
                { catalog_id: String, product_retailer_id: String }
              )
            end
            def to_hash
            end
          end

          class Body < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::WhatsappInteractive::Action::Card::Body,
                  Telnyx::Internal::AnyHash
                )
              end

            # 160 character maximum, up to 2 line breaks
            sig { returns(T.nilable(String)) }
            attr_reader :text

            sig { params(text: String).void }
            attr_writer :text

            sig { params(text: String).returns(T.attached_class) }
            def self.new(
              # 160 character maximum, up to 2 line breaks
              text: nil
            )
            end

            sig { override.returns({ text: String }) }
            def to_hash
            end
          end

          class Header < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::WhatsappInteractive::Action::Card::Header,
                  Telnyx::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(Telnyx::WhatsappMedia)) }
            attr_reader :image

            sig { params(image: Telnyx::WhatsappMedia::OrHash).void }
            attr_writer :image

            sig do
              returns(
                T.nilable(
                  Telnyx::WhatsappInteractive::Action::Card::Header::Type::OrSymbol
                )
              )
            end
            attr_reader :type

            sig do
              params(
                type:
                  Telnyx::WhatsappInteractive::Action::Card::Header::Type::OrSymbol
              ).void
            end
            attr_writer :type

            sig { returns(T.nilable(Telnyx::WhatsappMedia)) }
            attr_reader :video

            sig { params(video: Telnyx::WhatsappMedia::OrHash).void }
            attr_writer :video

            sig do
              params(
                image: Telnyx::WhatsappMedia::OrHash,
                type:
                  Telnyx::WhatsappInteractive::Action::Card::Header::Type::OrSymbol,
                video: Telnyx::WhatsappMedia::OrHash
              ).returns(T.attached_class)
            end
            def self.new(image: nil, type: nil, video: nil)
            end

            sig do
              override.returns(
                {
                  image: Telnyx::WhatsappMedia,
                  type:
                    Telnyx::WhatsappInteractive::Action::Card::Header::Type::OrSymbol,
                  video: Telnyx::WhatsappMedia
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
                    Telnyx::WhatsappInteractive::Action::Card::Header::Type
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              IMAGE =
                T.let(
                  :image,
                  Telnyx::WhatsappInteractive::Action::Card::Header::Type::TaggedSymbol
                )
              VIDEO =
                T.let(
                  :video,
                  Telnyx::WhatsappInteractive::Action::Card::Header::Type::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::WhatsappInteractive::Action::Card::Header::Type::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          module Type
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(Symbol, Telnyx::WhatsappInteractive::Action::Card::Type)
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            CTA_URL =
              T.let(
                :cta_url,
                Telnyx::WhatsappInteractive::Action::Card::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::WhatsappInteractive::Action::Card::Type::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class Parameters < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::WhatsappInteractive::Action::Parameters,
                Telnyx::Internal::AnyHash
              )
            end

          # button label text, 20 character maximum
          sig { returns(T.nilable(String)) }
          attr_reader :display_text

          sig { params(display_text: String).void }
          attr_writer :display_text

          # button URL to load when tapped by the user
          sig { returns(T.nilable(String)) }
          attr_reader :url

          sig { params(url: String).void }
          attr_writer :url

          sig do
            params(display_text: String, url: String).returns(T.attached_class)
          end
          def self.new(
            # button label text, 20 character maximum
            display_text: nil,
            # button URL to load when tapped by the user
            url: nil
          )
          end

          sig { override.returns({ display_text: String, url: String }) }
          def to_hash
          end
        end

        class Section < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::WhatsappInteractive::Action::Section,
                Telnyx::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(
                T::Array[
                  Telnyx::WhatsappInteractive::Action::Section::ProductItem
                ]
              )
            )
          end
          attr_reader :product_items

          sig do
            params(
              product_items:
                T::Array[
                  Telnyx::WhatsappInteractive::Action::Section::ProductItem::OrHash
                ]
            ).void
          end
          attr_writer :product_items

          sig do
            returns(
              T.nilable(
                T::Array[Telnyx::WhatsappInteractive::Action::Section::Row]
              )
            )
          end
          attr_reader :rows

          sig do
            params(
              rows:
                T::Array[
                  Telnyx::WhatsappInteractive::Action::Section::Row::OrHash
                ]
            ).void
          end
          attr_writer :rows

          # section title, 24 character maximum
          sig { returns(T.nilable(String)) }
          attr_reader :title

          sig { params(title: String).void }
          attr_writer :title

          sig do
            params(
              product_items:
                T::Array[
                  Telnyx::WhatsappInteractive::Action::Section::ProductItem::OrHash
                ],
              rows:
                T::Array[
                  Telnyx::WhatsappInteractive::Action::Section::Row::OrHash
                ],
              title: String
            ).returns(T.attached_class)
          end
          def self.new(
            product_items: nil,
            rows: nil,
            # section title, 24 character maximum
            title: nil
          )
          end

          sig do
            override.returns(
              {
                product_items:
                  T::Array[
                    Telnyx::WhatsappInteractive::Action::Section::ProductItem
                  ],
                rows:
                  T::Array[Telnyx::WhatsappInteractive::Action::Section::Row],
                title: String
              }
            )
          end
          def to_hash
          end

          class ProductItem < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::WhatsappInteractive::Action::Section::ProductItem,
                  Telnyx::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(String)) }
            attr_reader :product_retailer_id

            sig { params(product_retailer_id: String).void }
            attr_writer :product_retailer_id

            sig do
              params(product_retailer_id: String).returns(T.attached_class)
            end
            def self.new(product_retailer_id: nil)
            end

            sig { override.returns({ product_retailer_id: String }) }
            def to_hash
            end
          end

          class Row < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::WhatsappInteractive::Action::Section::Row,
                  Telnyx::Internal::AnyHash
                )
              end

            # arbitrary string identifying the row, 200 character maximum
            sig { returns(T.nilable(String)) }
            attr_reader :id

            sig { params(id: String).void }
            attr_writer :id

            # row description, 72 character maximum
            sig { returns(T.nilable(String)) }
            attr_reader :description

            sig { params(description: String).void }
            attr_writer :description

            # row title, 24 character maximum
            sig { returns(T.nilable(String)) }
            attr_reader :title

            sig { params(title: String).void }
            attr_writer :title

            sig do
              params(id: String, description: String, title: String).returns(
                T.attached_class
              )
            end
            def self.new(
              # arbitrary string identifying the row, 200 character maximum
              id: nil,
              # row description, 72 character maximum
              description: nil,
              # row title, 24 character maximum
              title: nil
            )
            end

            sig do
              override.returns(
                { id: String, description: String, title: String }
              )
            end
            def to_hash
            end
          end
        end
      end

      class Body < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::WhatsappInteractive::Body, Telnyx::Internal::AnyHash)
          end

        # body text, 1024 character maximum
        sig { returns(T.nilable(String)) }
        attr_reader :text

        sig { params(text: String).void }
        attr_writer :text

        sig { params(text: String).returns(T.attached_class) }
        def self.new(
          # body text, 1024 character maximum
          text: nil
        )
        end

        sig { override.returns({ text: String }) }
        def to_hash
        end
      end

      class Footer < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::WhatsappInteractive::Footer,
              Telnyx::Internal::AnyHash
            )
          end

        # footer text, 60 character maximum
        sig { returns(T.nilable(String)) }
        attr_reader :text

        sig { params(text: String).void }
        attr_writer :text

        sig { params(text: String).returns(T.attached_class) }
        def self.new(
          # footer text, 60 character maximum
          text: nil
        )
        end

        sig { override.returns({ text: String }) }
        def to_hash
        end
      end

      class Header < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::WhatsappInteractive::Header,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(Telnyx::WhatsappMedia)) }
        attr_reader :document

        sig { params(document: Telnyx::WhatsappMedia::OrHash).void }
        attr_writer :document

        sig { returns(T.nilable(Telnyx::WhatsappMedia)) }
        attr_reader :image

        sig { params(image: Telnyx::WhatsappMedia::OrHash).void }
        attr_writer :image

        sig { returns(T.nilable(String)) }
        attr_reader :sub_text

        sig { params(sub_text: String).void }
        attr_writer :sub_text

        # header text, 60 character maximum
        sig { returns(T.nilable(String)) }
        attr_reader :text

        sig { params(text: String).void }
        attr_writer :text

        sig { returns(T.nilable(Telnyx::WhatsappMedia)) }
        attr_reader :video

        sig { params(video: Telnyx::WhatsappMedia::OrHash).void }
        attr_writer :video

        sig do
          params(
            document: Telnyx::WhatsappMedia::OrHash,
            image: Telnyx::WhatsappMedia::OrHash,
            sub_text: String,
            text: String,
            video: Telnyx::WhatsappMedia::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          document: nil,
          image: nil,
          sub_text: nil,
          # header text, 60 character maximum
          text: nil,
          video: nil
        )
        end

        sig do
          override.returns(
            {
              document: Telnyx::WhatsappMedia,
              image: Telnyx::WhatsappMedia,
              sub_text: String,
              text: String,
              video: Telnyx::WhatsappMedia
            }
          )
        end
        def to_hash
        end
      end

      module Type
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::WhatsappInteractive::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CTA_URL =
          T.let(:cta_url, Telnyx::WhatsappInteractive::Type::TaggedSymbol)
        LIST = T.let(:list, Telnyx::WhatsappInteractive::Type::TaggedSymbol)
        CAROUSEL =
          T.let(:carousel, Telnyx::WhatsappInteractive::Type::TaggedSymbol)
        BUTTON = T.let(:button, Telnyx::WhatsappInteractive::Type::TaggedSymbol)
        LOCATION_REQUEST_MESSAGE =
          T.let(
            :location_request_message,
            Telnyx::WhatsappInteractive::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::WhatsappInteractive::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
