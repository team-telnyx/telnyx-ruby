# typed: strong

module Telnyx
  module Models
    class MessageSendWhatsappParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::MessageSendWhatsappParams, Telnyx::Internal::AnyHash)
        end

      # Phone number in +E.164 format associated with Whatsapp account
      sig { returns(String) }
      attr_accessor :from

      # Phone number in +E.164 format
      sig { returns(String) }
      attr_accessor :to

      sig { returns(Telnyx::MessageSendWhatsappParams::WhatsappMessage) }
      attr_reader :whatsapp_message

      sig do
        params(
          whatsapp_message:
            Telnyx::MessageSendWhatsappParams::WhatsappMessage::OrHash
        ).void
      end
      attr_writer :whatsapp_message

      # Message type - must be set to "WHATSAPP"
      sig do
        returns(T.nilable(Telnyx::MessageSendWhatsappParams::Type::OrSymbol))
      end
      attr_reader :type

      sig do
        params(type: Telnyx::MessageSendWhatsappParams::Type::OrSymbol).void
      end
      attr_writer :type

      # The URL where webhooks related to this message will be sent.
      sig { returns(T.nilable(String)) }
      attr_reader :webhook_url

      sig { params(webhook_url: String).void }
      attr_writer :webhook_url

      sig do
        params(
          from: String,
          to: String,
          whatsapp_message:
            Telnyx::MessageSendWhatsappParams::WhatsappMessage::OrHash,
          type: Telnyx::MessageSendWhatsappParams::Type::OrSymbol,
          webhook_url: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Phone number in +E.164 format associated with Whatsapp account
        from:,
        # Phone number in +E.164 format
        to:,
        whatsapp_message:,
        # Message type - must be set to "WHATSAPP"
        type: nil,
        # The URL where webhooks related to this message will be sent.
        webhook_url: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            from: String,
            to: String,
            whatsapp_message:
              Telnyx::MessageSendWhatsappParams::WhatsappMessage,
            type: Telnyx::MessageSendWhatsappParams::Type::OrSymbol,
            webhook_url: String,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      class WhatsappMessage < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::MessageSendWhatsappParams::WhatsappMessage,
              Telnyx::Internal::AnyHash
            )
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

        sig do
          returns(
            T.nilable(
              T::Array[
                Telnyx::MessageSendWhatsappParams::WhatsappMessage::Contact
              ]
            )
          )
        end
        attr_reader :contacts

        sig do
          params(
            contacts:
              T::Array[
                Telnyx::MessageSendWhatsappParams::WhatsappMessage::Contact::OrHash
              ]
          ).void
        end
        attr_writer :contacts

        sig { returns(T.nilable(Telnyx::WhatsappMedia)) }
        attr_reader :document

        sig { params(document: Telnyx::WhatsappMedia::OrHash).void }
        attr_writer :document

        sig { returns(T.nilable(Telnyx::WhatsappMedia)) }
        attr_reader :image

        sig { params(image: Telnyx::WhatsappMedia::OrHash).void }
        attr_writer :image

        sig do
          returns(
            T.nilable(
              Telnyx::MessageSendWhatsappParams::WhatsappMessage::Interactive
            )
          )
        end
        attr_reader :interactive

        sig do
          params(
            interactive:
              Telnyx::MessageSendWhatsappParams::WhatsappMessage::Interactive::OrHash
          ).void
        end
        attr_writer :interactive

        sig do
          returns(
            T.nilable(
              Telnyx::MessageSendWhatsappParams::WhatsappMessage::Location
            )
          )
        end
        attr_reader :location

        sig do
          params(
            location:
              Telnyx::MessageSendWhatsappParams::WhatsappMessage::Location::OrHash
          ).void
        end
        attr_writer :location

        sig do
          returns(
            T.nilable(
              Telnyx::MessageSendWhatsappParams::WhatsappMessage::Reaction
            )
          )
        end
        attr_reader :reaction

        sig do
          params(
            reaction:
              Telnyx::MessageSendWhatsappParams::WhatsappMessage::Reaction::OrHash
          ).void
        end
        attr_writer :reaction

        sig { returns(T.nilable(Telnyx::WhatsappMedia)) }
        attr_reader :sticker

        sig { params(sticker: Telnyx::WhatsappMedia::OrHash).void }
        attr_writer :sticker

        sig do
          returns(
            T.nilable(
              Telnyx::MessageSendWhatsappParams::WhatsappMessage::Type::OrSymbol
            )
          )
        end
        attr_reader :type

        sig do
          params(
            type:
              Telnyx::MessageSendWhatsappParams::WhatsappMessage::Type::OrSymbol
          ).void
        end
        attr_writer :type

        sig { returns(T.nilable(Telnyx::WhatsappMedia)) }
        attr_reader :video

        sig { params(video: Telnyx::WhatsappMedia::OrHash).void }
        attr_writer :video

        sig do
          params(
            audio: Telnyx::WhatsappMedia::OrHash,
            biz_opaque_callback_data: String,
            contacts:
              T::Array[
                Telnyx::MessageSendWhatsappParams::WhatsappMessage::Contact::OrHash
              ],
            document: Telnyx::WhatsappMedia::OrHash,
            image: Telnyx::WhatsappMedia::OrHash,
            interactive:
              Telnyx::MessageSendWhatsappParams::WhatsappMessage::Interactive::OrHash,
            location:
              Telnyx::MessageSendWhatsappParams::WhatsappMessage::Location::OrHash,
            reaction:
              Telnyx::MessageSendWhatsappParams::WhatsappMessage::Reaction::OrHash,
            sticker: Telnyx::WhatsappMedia::OrHash,
            type:
              Telnyx::MessageSendWhatsappParams::WhatsappMessage::Type::OrSymbol,
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
              contacts:
                T::Array[
                  Telnyx::MessageSendWhatsappParams::WhatsappMessage::Contact
                ],
              document: Telnyx::WhatsappMedia,
              image: Telnyx::WhatsappMedia,
              interactive:
                Telnyx::MessageSendWhatsappParams::WhatsappMessage::Interactive,
              location:
                Telnyx::MessageSendWhatsappParams::WhatsappMessage::Location,
              reaction:
                Telnyx::MessageSendWhatsappParams::WhatsappMessage::Reaction,
              sticker: Telnyx::WhatsappMedia,
              type:
                Telnyx::MessageSendWhatsappParams::WhatsappMessage::Type::OrSymbol,
              video: Telnyx::WhatsappMedia
            }
          )
        end
        def to_hash
        end

        class Contact < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::MessageSendWhatsappParams::WhatsappMessage::Contact,
                Telnyx::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(
                T::Array[
                  Telnyx::MessageSendWhatsappParams::WhatsappMessage::Contact::Address
                ]
              )
            )
          end
          attr_reader :addresses

          sig do
            params(
              addresses:
                T::Array[
                  Telnyx::MessageSendWhatsappParams::WhatsappMessage::Contact::Address::OrHash
                ]
            ).void
          end
          attr_writer :addresses

          sig { returns(T.nilable(String)) }
          attr_reader :birthday

          sig { params(birthday: String).void }
          attr_writer :birthday

          sig do
            returns(
              T.nilable(
                T::Array[
                  Telnyx::MessageSendWhatsappParams::WhatsappMessage::Contact::Email
                ]
              )
            )
          end
          attr_reader :emails

          sig do
            params(
              emails:
                T::Array[
                  Telnyx::MessageSendWhatsappParams::WhatsappMessage::Contact::Email::OrHash
                ]
            ).void
          end
          attr_writer :emails

          sig { returns(T.nilable(String)) }
          attr_reader :name

          sig { params(name: String).void }
          attr_writer :name

          sig do
            returns(
              T.nilable(
                Telnyx::MessageSendWhatsappParams::WhatsappMessage::Contact::Org
              )
            )
          end
          attr_reader :org

          sig do
            params(
              org:
                Telnyx::MessageSendWhatsappParams::WhatsappMessage::Contact::Org::OrHash
            ).void
          end
          attr_writer :org

          sig do
            returns(
              T.nilable(
                T::Array[
                  Telnyx::MessageSendWhatsappParams::WhatsappMessage::Contact::Phone
                ]
              )
            )
          end
          attr_reader :phones

          sig do
            params(
              phones:
                T::Array[
                  Telnyx::MessageSendWhatsappParams::WhatsappMessage::Contact::Phone::OrHash
                ]
            ).void
          end
          attr_writer :phones

          sig do
            returns(
              T.nilable(
                T::Array[
                  Telnyx::MessageSendWhatsappParams::WhatsappMessage::Contact::URL
                ]
              )
            )
          end
          attr_reader :urls

          sig do
            params(
              urls:
                T::Array[
                  Telnyx::MessageSendWhatsappParams::WhatsappMessage::Contact::URL::OrHash
                ]
            ).void
          end
          attr_writer :urls

          sig do
            params(
              addresses:
                T::Array[
                  Telnyx::MessageSendWhatsappParams::WhatsappMessage::Contact::Address::OrHash
                ],
              birthday: String,
              emails:
                T::Array[
                  Telnyx::MessageSendWhatsappParams::WhatsappMessage::Contact::Email::OrHash
                ],
              name: String,
              org:
                Telnyx::MessageSendWhatsappParams::WhatsappMessage::Contact::Org::OrHash,
              phones:
                T::Array[
                  Telnyx::MessageSendWhatsappParams::WhatsappMessage::Contact::Phone::OrHash
                ],
              urls:
                T::Array[
                  Telnyx::MessageSendWhatsappParams::WhatsappMessage::Contact::URL::OrHash
                ]
            ).returns(T.attached_class)
          end
          def self.new(
            addresses: nil,
            birthday: nil,
            emails: nil,
            name: nil,
            org: nil,
            phones: nil,
            urls: nil
          )
          end

          sig do
            override.returns(
              {
                addresses:
                  T::Array[
                    Telnyx::MessageSendWhatsappParams::WhatsappMessage::Contact::Address
                  ],
                birthday: String,
                emails:
                  T::Array[
                    Telnyx::MessageSendWhatsappParams::WhatsappMessage::Contact::Email
                  ],
                name: String,
                org:
                  Telnyx::MessageSendWhatsappParams::WhatsappMessage::Contact::Org,
                phones:
                  T::Array[
                    Telnyx::MessageSendWhatsappParams::WhatsappMessage::Contact::Phone
                  ],
                urls:
                  T::Array[
                    Telnyx::MessageSendWhatsappParams::WhatsappMessage::Contact::URL
                  ]
              }
            )
          end
          def to_hash
          end

          class Address < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::MessageSendWhatsappParams::WhatsappMessage::Contact::Address,
                  Telnyx::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(String)) }
            attr_reader :city

            sig { params(city: String).void }
            attr_writer :city

            sig { returns(T.nilable(String)) }
            attr_reader :country

            sig { params(country: String).void }
            attr_writer :country

            sig { returns(T.nilable(String)) }
            attr_reader :country_code

            sig { params(country_code: String).void }
            attr_writer :country_code

            sig { returns(T.nilable(String)) }
            attr_reader :state

            sig { params(state: String).void }
            attr_writer :state

            sig { returns(T.nilable(String)) }
            attr_reader :street

            sig { params(street: String).void }
            attr_writer :street

            sig { returns(T.nilable(String)) }
            attr_reader :type

            sig { params(type: String).void }
            attr_writer :type

            sig { returns(T.nilable(String)) }
            attr_reader :zip

            sig { params(zip: String).void }
            attr_writer :zip

            sig do
              params(
                city: String,
                country: String,
                country_code: String,
                state: String,
                street: String,
                type: String,
                zip: String
              ).returns(T.attached_class)
            end
            def self.new(
              city: nil,
              country: nil,
              country_code: nil,
              state: nil,
              street: nil,
              type: nil,
              zip: nil
            )
            end

            sig do
              override.returns(
                {
                  city: String,
                  country: String,
                  country_code: String,
                  state: String,
                  street: String,
                  type: String,
                  zip: String
                }
              )
            end
            def to_hash
            end
          end

          class Email < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::MessageSendWhatsappParams::WhatsappMessage::Contact::Email,
                  Telnyx::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(String)) }
            attr_reader :email

            sig { params(email: String).void }
            attr_writer :email

            sig { returns(T.nilable(String)) }
            attr_reader :type

            sig { params(type: String).void }
            attr_writer :type

            sig do
              params(email: String, type: String).returns(T.attached_class)
            end
            def self.new(email: nil, type: nil)
            end

            sig { override.returns({ email: String, type: String }) }
            def to_hash
            end
          end

          class Org < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::MessageSendWhatsappParams::WhatsappMessage::Contact::Org,
                  Telnyx::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(String)) }
            attr_reader :company

            sig { params(company: String).void }
            attr_writer :company

            sig { returns(T.nilable(String)) }
            attr_reader :department

            sig { params(department: String).void }
            attr_writer :department

            sig { returns(T.nilable(String)) }
            attr_reader :title

            sig { params(title: String).void }
            attr_writer :title

            sig do
              params(
                company: String,
                department: String,
                title: String
              ).returns(T.attached_class)
            end
            def self.new(company: nil, department: nil, title: nil)
            end

            sig do
              override.returns(
                { company: String, department: String, title: String }
              )
            end
            def to_hash
            end
          end

          class Phone < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::MessageSendWhatsappParams::WhatsappMessage::Contact::Phone,
                  Telnyx::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(String)) }
            attr_reader :phone

            sig { params(phone: String).void }
            attr_writer :phone

            sig { returns(T.nilable(String)) }
            attr_reader :type

            sig { params(type: String).void }
            attr_writer :type

            sig { returns(T.nilable(String)) }
            attr_reader :wa_id

            sig { params(wa_id: String).void }
            attr_writer :wa_id

            sig do
              params(phone: String, type: String, wa_id: String).returns(
                T.attached_class
              )
            end
            def self.new(phone: nil, type: nil, wa_id: nil)
            end

            sig do
              override.returns({ phone: String, type: String, wa_id: String })
            end
            def to_hash
            end
          end

          class URL < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::MessageSendWhatsappParams::WhatsappMessage::Contact::URL,
                  Telnyx::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(String)) }
            attr_reader :type

            sig { params(type: String).void }
            attr_writer :type

            sig { returns(T.nilable(String)) }
            attr_reader :url

            sig { params(url: String).void }
            attr_writer :url

            sig { params(type: String, url: String).returns(T.attached_class) }
            def self.new(type: nil, url: nil)
            end

            sig { override.returns({ type: String, url: String }) }
            def to_hash
            end
          end
        end

        class Interactive < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::MessageSendWhatsappParams::WhatsappMessage::Interactive,
                Telnyx::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(
                Telnyx::MessageSendWhatsappParams::WhatsappMessage::Interactive::Action
              )
            )
          end
          attr_reader :action

          sig do
            params(
              action:
                Telnyx::MessageSendWhatsappParams::WhatsappMessage::Interactive::Action::OrHash
            ).void
          end
          attr_writer :action

          sig do
            returns(
              T.nilable(
                Telnyx::MessageSendWhatsappParams::WhatsappMessage::Interactive::Body
              )
            )
          end
          attr_reader :body

          sig do
            params(
              body:
                Telnyx::MessageSendWhatsappParams::WhatsappMessage::Interactive::Body::OrHash
            ).void
          end
          attr_writer :body

          sig do
            returns(
              T.nilable(
                Telnyx::MessageSendWhatsappParams::WhatsappMessage::Interactive::Footer
              )
            )
          end
          attr_reader :footer

          sig do
            params(
              footer:
                Telnyx::MessageSendWhatsappParams::WhatsappMessage::Interactive::Footer::OrHash
            ).void
          end
          attr_writer :footer

          sig do
            returns(
              T.nilable(
                Telnyx::MessageSendWhatsappParams::WhatsappMessage::Interactive::Header
              )
            )
          end
          attr_reader :header

          sig do
            params(
              header:
                Telnyx::MessageSendWhatsappParams::WhatsappMessage::Interactive::Header::OrHash
            ).void
          end
          attr_writer :header

          sig do
            returns(
              T.nilable(
                Telnyx::MessageSendWhatsappParams::WhatsappMessage::Interactive::Type::OrSymbol
              )
            )
          end
          attr_reader :type

          sig do
            params(
              type:
                Telnyx::MessageSendWhatsappParams::WhatsappMessage::Interactive::Type::OrSymbol
            ).void
          end
          attr_writer :type

          sig do
            params(
              action:
                Telnyx::MessageSendWhatsappParams::WhatsappMessage::Interactive::Action::OrHash,
              body:
                Telnyx::MessageSendWhatsappParams::WhatsappMessage::Interactive::Body::OrHash,
              footer:
                Telnyx::MessageSendWhatsappParams::WhatsappMessage::Interactive::Footer::OrHash,
              header:
                Telnyx::MessageSendWhatsappParams::WhatsappMessage::Interactive::Header::OrHash,
              type:
                Telnyx::MessageSendWhatsappParams::WhatsappMessage::Interactive::Type::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            action: nil,
            body: nil,
            footer: nil,
            header: nil,
            type: nil
          )
          end

          sig do
            override.returns(
              {
                action:
                  Telnyx::MessageSendWhatsappParams::WhatsappMessage::Interactive::Action,
                body:
                  Telnyx::MessageSendWhatsappParams::WhatsappMessage::Interactive::Body,
                footer:
                  Telnyx::MessageSendWhatsappParams::WhatsappMessage::Interactive::Footer,
                header:
                  Telnyx::MessageSendWhatsappParams::WhatsappMessage::Interactive::Header,
                type:
                  Telnyx::MessageSendWhatsappParams::WhatsappMessage::Interactive::Type::OrSymbol
              }
            )
          end
          def to_hash
          end

          class Action < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::MessageSendWhatsappParams::WhatsappMessage::Interactive::Action,
                  Telnyx::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(String)) }
            attr_reader :button

            sig { params(button: String).void }
            attr_writer :button

            sig do
              returns(
                T.nilable(
                  T::Array[
                    Telnyx::MessageSendWhatsappParams::WhatsappMessage::Interactive::Action::Button
                  ]
                )
              )
            end
            attr_reader :buttons

            sig do
              params(
                buttons:
                  T::Array[
                    Telnyx::MessageSendWhatsappParams::WhatsappMessage::Interactive::Action::Button::OrHash
                  ]
              ).void
            end
            attr_writer :buttons

            sig do
              returns(
                T.nilable(
                  T::Array[
                    Telnyx::MessageSendWhatsappParams::WhatsappMessage::Interactive::Action::Card
                  ]
                )
              )
            end
            attr_reader :cards

            sig do
              params(
                cards:
                  T::Array[
                    Telnyx::MessageSendWhatsappParams::WhatsappMessage::Interactive::Action::Card::OrHash
                  ]
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
              returns(
                T.nilable(
                  Telnyx::MessageSendWhatsappParams::WhatsappMessage::Interactive::Action::Parameters
                )
              )
            end
            attr_reader :parameters

            sig do
              params(
                parameters:
                  Telnyx::MessageSendWhatsappParams::WhatsappMessage::Interactive::Action::Parameters::OrHash
              ).void
            end
            attr_writer :parameters

            sig { returns(T.nilable(String)) }
            attr_reader :product_retailer_id

            sig { params(product_retailer_id: String).void }
            attr_writer :product_retailer_id

            sig do
              returns(
                T.nilable(
                  T::Array[
                    Telnyx::MessageSendWhatsappParams::WhatsappMessage::Interactive::Action::Section
                  ]
                )
              )
            end
            attr_reader :sections

            sig do
              params(
                sections:
                  T::Array[
                    Telnyx::MessageSendWhatsappParams::WhatsappMessage::Interactive::Action::Section::OrHash
                  ]
              ).void
            end
            attr_writer :sections

            sig do
              params(
                button: String,
                buttons:
                  T::Array[
                    Telnyx::MessageSendWhatsappParams::WhatsappMessage::Interactive::Action::Button::OrHash
                  ],
                cards:
                  T::Array[
                    Telnyx::MessageSendWhatsappParams::WhatsappMessage::Interactive::Action::Card::OrHash
                  ],
                catalog_id: String,
                mode: String,
                name: String,
                parameters:
                  Telnyx::MessageSendWhatsappParams::WhatsappMessage::Interactive::Action::Parameters::OrHash,
                product_retailer_id: String,
                sections:
                  T::Array[
                    Telnyx::MessageSendWhatsappParams::WhatsappMessage::Interactive::Action::Section::OrHash
                  ]
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
                  buttons:
                    T::Array[
                      Telnyx::MessageSendWhatsappParams::WhatsappMessage::Interactive::Action::Button
                    ],
                  cards:
                    T::Array[
                      Telnyx::MessageSendWhatsappParams::WhatsappMessage::Interactive::Action::Card
                    ],
                  catalog_id: String,
                  mode: String,
                  name: String,
                  parameters:
                    Telnyx::MessageSendWhatsappParams::WhatsappMessage::Interactive::Action::Parameters,
                  product_retailer_id: String,
                  sections:
                    T::Array[
                      Telnyx::MessageSendWhatsappParams::WhatsappMessage::Interactive::Action::Section
                    ]
                }
              )
            end
            def to_hash
            end

            class Button < Telnyx::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::MessageSendWhatsappParams::WhatsappMessage::Interactive::Action::Button,
                    Telnyx::Internal::AnyHash
                  )
                end

              sig do
                returns(
                  T.nilable(
                    Telnyx::MessageSendWhatsappParams::WhatsappMessage::Interactive::Action::Button::Reply
                  )
                )
              end
              attr_reader :reply

              sig do
                params(
                  reply:
                    Telnyx::MessageSendWhatsappParams::WhatsappMessage::Interactive::Action::Button::Reply::OrHash
                ).void
              end
              attr_writer :reply

              sig do
                returns(
                  T.nilable(
                    Telnyx::MessageSendWhatsappParams::WhatsappMessage::Interactive::Action::Button::Type::OrSymbol
                  )
                )
              end
              attr_reader :type

              sig do
                params(
                  type:
                    Telnyx::MessageSendWhatsappParams::WhatsappMessage::Interactive::Action::Button::Type::OrSymbol
                ).void
              end
              attr_writer :type

              sig do
                params(
                  reply:
                    Telnyx::MessageSendWhatsappParams::WhatsappMessage::Interactive::Action::Button::Reply::OrHash,
                  type:
                    Telnyx::MessageSendWhatsappParams::WhatsappMessage::Interactive::Action::Button::Type::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(reply: nil, type: nil)
              end

              sig do
                override.returns(
                  {
                    reply:
                      Telnyx::MessageSendWhatsappParams::WhatsappMessage::Interactive::Action::Button::Reply,
                    type:
                      Telnyx::MessageSendWhatsappParams::WhatsappMessage::Interactive::Action::Button::Type::OrSymbol
                  }
                )
              end
              def to_hash
              end

              class Reply < Telnyx::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Telnyx::MessageSendWhatsappParams::WhatsappMessage::Interactive::Action::Button::Reply,
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

                sig do
                  params(id: String, title: String).returns(T.attached_class)
                end
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
                    T.all(
                      Symbol,
                      Telnyx::MessageSendWhatsappParams::WhatsappMessage::Interactive::Action::Button::Type
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                REPLY =
                  T.let(
                    :reply,
                    Telnyx::MessageSendWhatsappParams::WhatsappMessage::Interactive::Action::Button::Type::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Telnyx::MessageSendWhatsappParams::WhatsappMessage::Interactive::Action::Button::Type::TaggedSymbol
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
                    Telnyx::MessageSendWhatsappParams::WhatsappMessage::Interactive::Action::Card,
                    Telnyx::Internal::AnyHash
                  )
                end

              sig do
                returns(
                  T.nilable(
                    Telnyx::MessageSendWhatsappParams::WhatsappMessage::Interactive::Action::Card::Action
                  )
                )
              end
              attr_reader :action

              sig do
                params(
                  action:
                    Telnyx::MessageSendWhatsappParams::WhatsappMessage::Interactive::Action::Card::Action::OrHash
                ).void
              end
              attr_writer :action

              sig do
                returns(
                  T.nilable(
                    Telnyx::MessageSendWhatsappParams::WhatsappMessage::Interactive::Action::Card::Body
                  )
                )
              end
              attr_reader :body

              sig do
                params(
                  body:
                    Telnyx::MessageSendWhatsappParams::WhatsappMessage::Interactive::Action::Card::Body::OrHash
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
                  T.nilable(
                    Telnyx::MessageSendWhatsappParams::WhatsappMessage::Interactive::Action::Card::Header
                  )
                )
              end
              attr_reader :header

              sig do
                params(
                  header:
                    Telnyx::MessageSendWhatsappParams::WhatsappMessage::Interactive::Action::Card::Header::OrHash
                ).void
              end
              attr_writer :header

              sig do
                returns(
                  T.nilable(
                    Telnyx::MessageSendWhatsappParams::WhatsappMessage::Interactive::Action::Card::Type::OrSymbol
                  )
                )
              end
              attr_reader :type

              sig do
                params(
                  type:
                    Telnyx::MessageSendWhatsappParams::WhatsappMessage::Interactive::Action::Card::Type::OrSymbol
                ).void
              end
              attr_writer :type

              sig do
                params(
                  action:
                    Telnyx::MessageSendWhatsappParams::WhatsappMessage::Interactive::Action::Card::Action::OrHash,
                  body:
                    Telnyx::MessageSendWhatsappParams::WhatsappMessage::Interactive::Action::Card::Body::OrHash,
                  card_index: Integer,
                  header:
                    Telnyx::MessageSendWhatsappParams::WhatsappMessage::Interactive::Action::Card::Header::OrHash,
                  type:
                    Telnyx::MessageSendWhatsappParams::WhatsappMessage::Interactive::Action::Card::Type::OrSymbol
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
                    action:
                      Telnyx::MessageSendWhatsappParams::WhatsappMessage::Interactive::Action::Card::Action,
                    body:
                      Telnyx::MessageSendWhatsappParams::WhatsappMessage::Interactive::Action::Card::Body,
                    card_index: Integer,
                    header:
                      Telnyx::MessageSendWhatsappParams::WhatsappMessage::Interactive::Action::Card::Header,
                    type:
                      Telnyx::MessageSendWhatsappParams::WhatsappMessage::Interactive::Action::Card::Type::OrSymbol
                  }
                )
              end
              def to_hash
              end

              class Action < Telnyx::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Telnyx::MessageSendWhatsappParams::WhatsappMessage::Interactive::Action::Card::Action,
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
                  params(
                    catalog_id: String,
                    product_retailer_id: String
                  ).returns(T.attached_class)
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
                      Telnyx::MessageSendWhatsappParams::WhatsappMessage::Interactive::Action::Card::Body,
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
                      Telnyx::MessageSendWhatsappParams::WhatsappMessage::Interactive::Action::Card::Header,
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
                      Telnyx::MessageSendWhatsappParams::WhatsappMessage::Interactive::Action::Card::Header::Type::OrSymbol
                    )
                  )
                end
                attr_reader :type

                sig do
                  params(
                    type:
                      Telnyx::MessageSendWhatsappParams::WhatsappMessage::Interactive::Action::Card::Header::Type::OrSymbol
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
                      Telnyx::MessageSendWhatsappParams::WhatsappMessage::Interactive::Action::Card::Header::Type::OrSymbol,
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
                        Telnyx::MessageSendWhatsappParams::WhatsappMessage::Interactive::Action::Card::Header::Type::OrSymbol,
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
                        Telnyx::MessageSendWhatsappParams::WhatsappMessage::Interactive::Action::Card::Header::Type
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  IMAGE =
                    T.let(
                      :image,
                      Telnyx::MessageSendWhatsappParams::WhatsappMessage::Interactive::Action::Card::Header::Type::TaggedSymbol
                    )
                  VIDEO =
                    T.let(
                      :video,
                      Telnyx::MessageSendWhatsappParams::WhatsappMessage::Interactive::Action::Card::Header::Type::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        Telnyx::MessageSendWhatsappParams::WhatsappMessage::Interactive::Action::Card::Header::Type::TaggedSymbol
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
                    T.all(
                      Symbol,
                      Telnyx::MessageSendWhatsappParams::WhatsappMessage::Interactive::Action::Card::Type
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                CTA_URL =
                  T.let(
                    :cta_url,
                    Telnyx::MessageSendWhatsappParams::WhatsappMessage::Interactive::Action::Card::Type::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Telnyx::MessageSendWhatsappParams::WhatsappMessage::Interactive::Action::Card::Type::TaggedSymbol
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
                    Telnyx::MessageSendWhatsappParams::WhatsappMessage::Interactive::Action::Parameters,
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
                params(display_text: String, url: String).returns(
                  T.attached_class
                )
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
                    Telnyx::MessageSendWhatsappParams::WhatsappMessage::Interactive::Action::Section,
                    Telnyx::Internal::AnyHash
                  )
                end

              sig do
                returns(
                  T.nilable(
                    T::Array[
                      Telnyx::MessageSendWhatsappParams::WhatsappMessage::Interactive::Action::Section::ProductItem
                    ]
                  )
                )
              end
              attr_reader :product_items

              sig do
                params(
                  product_items:
                    T::Array[
                      Telnyx::MessageSendWhatsappParams::WhatsappMessage::Interactive::Action::Section::ProductItem::OrHash
                    ]
                ).void
              end
              attr_writer :product_items

              sig do
                returns(
                  T.nilable(
                    T::Array[
                      Telnyx::MessageSendWhatsappParams::WhatsappMessage::Interactive::Action::Section::Row
                    ]
                  )
                )
              end
              attr_reader :rows

              sig do
                params(
                  rows:
                    T::Array[
                      Telnyx::MessageSendWhatsappParams::WhatsappMessage::Interactive::Action::Section::Row::OrHash
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
                      Telnyx::MessageSendWhatsappParams::WhatsappMessage::Interactive::Action::Section::ProductItem::OrHash
                    ],
                  rows:
                    T::Array[
                      Telnyx::MessageSendWhatsappParams::WhatsappMessage::Interactive::Action::Section::Row::OrHash
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
                        Telnyx::MessageSendWhatsappParams::WhatsappMessage::Interactive::Action::Section::ProductItem
                      ],
                    rows:
                      T::Array[
                        Telnyx::MessageSendWhatsappParams::WhatsappMessage::Interactive::Action::Section::Row
                      ],
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
                      Telnyx::MessageSendWhatsappParams::WhatsappMessage::Interactive::Action::Section::ProductItem,
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
                      Telnyx::MessageSendWhatsappParams::WhatsappMessage::Interactive::Action::Section::Row,
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
                  params(
                    id: String,
                    description: String,
                    title: String
                  ).returns(T.attached_class)
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
                T.any(
                  Telnyx::MessageSendWhatsappParams::WhatsappMessage::Interactive::Body,
                  Telnyx::Internal::AnyHash
                )
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
                  Telnyx::MessageSendWhatsappParams::WhatsappMessage::Interactive::Footer,
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
                  Telnyx::MessageSendWhatsappParams::WhatsappMessage::Interactive::Header,
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
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::MessageSendWhatsappParams::WhatsappMessage::Interactive::Type
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            CTA_URL =
              T.let(
                :cta_url,
                Telnyx::MessageSendWhatsappParams::WhatsappMessage::Interactive::Type::TaggedSymbol
              )
            LIST =
              T.let(
                :list,
                Telnyx::MessageSendWhatsappParams::WhatsappMessage::Interactive::Type::TaggedSymbol
              )
            CAROUSEL =
              T.let(
                :carousel,
                Telnyx::MessageSendWhatsappParams::WhatsappMessage::Interactive::Type::TaggedSymbol
              )
            BUTTON =
              T.let(
                :button,
                Telnyx::MessageSendWhatsappParams::WhatsappMessage::Interactive::Type::TaggedSymbol
              )
            LOCATION_REQUEST_MESSAGE =
              T.let(
                :location_request_message,
                Telnyx::MessageSendWhatsappParams::WhatsappMessage::Interactive::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::MessageSendWhatsappParams::WhatsappMessage::Interactive::Type::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class Location < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::MessageSendWhatsappParams::WhatsappMessage::Location,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(String)) }
          attr_reader :address

          sig { params(address: String).void }
          attr_writer :address

          sig { returns(T.nilable(String)) }
          attr_reader :latitude

          sig { params(latitude: String).void }
          attr_writer :latitude

          sig { returns(T.nilable(String)) }
          attr_reader :longitude

          sig { params(longitude: String).void }
          attr_writer :longitude

          sig { returns(T.nilable(String)) }
          attr_reader :name

          sig { params(name: String).void }
          attr_writer :name

          sig do
            params(
              address: String,
              latitude: String,
              longitude: String,
              name: String
            ).returns(T.attached_class)
          end
          def self.new(address: nil, latitude: nil, longitude: nil, name: nil)
          end

          sig do
            override.returns(
              {
                address: String,
                latitude: String,
                longitude: String,
                name: String
              }
            )
          end
          def to_hash
          end
        end

        class Reaction < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::MessageSendWhatsappParams::WhatsappMessage::Reaction,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(String)) }
          attr_reader :emoji

          sig { params(emoji: String).void }
          attr_writer :emoji

          sig { returns(T.nilable(String)) }
          attr_reader :message_id

          sig { params(message_id: String).void }
          attr_writer :message_id

          sig do
            params(emoji: String, message_id: String).returns(T.attached_class)
          end
          def self.new(emoji: nil, message_id: nil)
          end

          sig { override.returns({ emoji: String, message_id: String }) }
          def to_hash
          end
        end

        module Type
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::MessageSendWhatsappParams::WhatsappMessage::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AUDIO =
            T.let(
              :audio,
              Telnyx::MessageSendWhatsappParams::WhatsappMessage::Type::TaggedSymbol
            )
          DOCUMENT =
            T.let(
              :document,
              Telnyx::MessageSendWhatsappParams::WhatsappMessage::Type::TaggedSymbol
            )
          IMAGE =
            T.let(
              :image,
              Telnyx::MessageSendWhatsappParams::WhatsappMessage::Type::TaggedSymbol
            )
          STICKER =
            T.let(
              :sticker,
              Telnyx::MessageSendWhatsappParams::WhatsappMessage::Type::TaggedSymbol
            )
          VIDEO =
            T.let(
              :video,
              Telnyx::MessageSendWhatsappParams::WhatsappMessage::Type::TaggedSymbol
            )
          INTERACTIVE =
            T.let(
              :interactive,
              Telnyx::MessageSendWhatsappParams::WhatsappMessage::Type::TaggedSymbol
            )
          LOCATION =
            T.let(
              :location,
              Telnyx::MessageSendWhatsappParams::WhatsappMessage::Type::TaggedSymbol
            )
          TEMPLATE =
            T.let(
              :template,
              Telnyx::MessageSendWhatsappParams::WhatsappMessage::Type::TaggedSymbol
            )
          REACTION =
            T.let(
              :reaction,
              Telnyx::MessageSendWhatsappParams::WhatsappMessage::Type::TaggedSymbol
            )
          CONTACTS =
            T.let(
              :contacts,
              Telnyx::MessageSendWhatsappParams::WhatsappMessage::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::MessageSendWhatsappParams::WhatsappMessage::Type::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      # Message type - must be set to "WHATSAPP"
      module Type
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::MessageSendWhatsappParams::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        WHATSAPP =
          T.let(
            :WHATSAPP,
            Telnyx::MessageSendWhatsappParams::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::MessageSendWhatsappParams::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
