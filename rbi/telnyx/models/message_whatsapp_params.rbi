# typed: strong

module Telnyx
  module Models
    class MessageWhatsappParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::MessageWhatsappParams, Telnyx::Internal::AnyHash)
        end

      # Phone number in +E.164 format associated with Whatsapp account
      sig { returns(String) }
      attr_accessor :from

      # Recipient phone number in +E.164 format, or the business-scoped user ID (BSUID)
      # of a WhatsApp user who hides their phone number, for example
      # `US.13491208655302741918`. Authentication templates cannot be sent to a BSUID.
      sig { returns(String) }
      attr_accessor :to

      sig { returns(Telnyx::MessageWhatsappParams::WhatsappMessage) }
      attr_reader :whatsapp_message

      sig do
        params(
          whatsapp_message:
            Telnyx::MessageWhatsappParams::WhatsappMessage::OrHash
        ).void
      end
      attr_writer :whatsapp_message

      # Messaging profile ID - required if the 'from' number is not SMS-enabled
      sig { returns(T.nilable(String)) }
      attr_reader :messaging_profile_id

      sig { params(messaging_profile_id: String).void }
      attr_writer :messaging_profile_id

      # Message type - must be set to "WHATSAPP"
      sig { returns(T.nilable(Telnyx::MessageWhatsappParams::Type::OrSymbol)) }
      attr_reader :type

      sig { params(type: Telnyx::MessageWhatsappParams::Type::OrSymbol).void }
      attr_writer :type

      # The URL where webhooks related to this message will be sent.
      sig { returns(T.nilable(String)) }
      attr_reader :webhook_url

      sig { params(webhook_url: String).void }
      attr_writer :webhook_url

      sig { returns(T.nilable(String)) }
      attr_reader :idempotency_key

      sig { params(idempotency_key: String).void }
      attr_writer :idempotency_key

      sig do
        params(
          from: String,
          to: String,
          whatsapp_message:
            Telnyx::MessageWhatsappParams::WhatsappMessage::OrHash,
          messaging_profile_id: String,
          type: Telnyx::MessageWhatsappParams::Type::OrSymbol,
          webhook_url: String,
          idempotency_key: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Phone number in +E.164 format associated with Whatsapp account
        from:,
        # Recipient phone number in +E.164 format, or the business-scoped user ID (BSUID)
        # of a WhatsApp user who hides their phone number, for example
        # `US.13491208655302741918`. Authentication templates cannot be sent to a BSUID.
        to:,
        whatsapp_message:,
        # Messaging profile ID - required if the 'from' number is not SMS-enabled
        messaging_profile_id: nil,
        # Message type - must be set to "WHATSAPP"
        type: nil,
        # The URL where webhooks related to this message will be sent.
        webhook_url: nil,
        idempotency_key: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            from: String,
            to: String,
            whatsapp_message: Telnyx::MessageWhatsappParams::WhatsappMessage,
            messaging_profile_id: String,
            type: Telnyx::MessageWhatsappParams::Type::OrSymbol,
            webhook_url: String,
            idempotency_key: String,
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
              Telnyx::MessageWhatsappParams::WhatsappMessage,
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
              T::Array[Telnyx::MessageWhatsappParams::WhatsappMessage::Contact]
            )
          )
        end
        attr_reader :contacts

        sig do
          params(
            contacts:
              T::Array[
                Telnyx::MessageWhatsappParams::WhatsappMessage::Contact::OrHash
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
              Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive
            )
          )
        end
        attr_reader :interactive

        sig do
          params(
            interactive:
              Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::OrHash
          ).void
        end
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
        sig do
          returns(
            T.nilable(Telnyx::MessageWhatsappParams::WhatsappMessage::Template)
          )
        end
        attr_reader :template

        sig do
          params(
            template:
              Telnyx::MessageWhatsappParams::WhatsappMessage::Template::OrHash
          ).void
        end
        attr_writer :template

        # Text message content. Can only be sent within a 24-hour customer service window.
        sig do
          returns(
            T.nilable(Telnyx::MessageWhatsappParams::WhatsappMessage::Text)
          )
        end
        attr_reader :text

        sig do
          params(
            text: Telnyx::MessageWhatsappParams::WhatsappMessage::Text::OrHash
          ).void
        end
        attr_writer :text

        sig do
          returns(
            T.nilable(
              Telnyx::MessageWhatsappParams::WhatsappMessage::Type::OrSymbol
            )
          )
        end
        attr_reader :type

        sig do
          params(
            type: Telnyx::MessageWhatsappParams::WhatsappMessage::Type::OrSymbol
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
                Telnyx::MessageWhatsappParams::WhatsappMessage::Contact::OrHash
              ],
            document: Telnyx::WhatsappMedia::OrHash,
            image: Telnyx::WhatsappMedia::OrHash,
            interactive:
              Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::OrHash,
            location: Telnyx::WhatsappLocation::OrHash,
            reaction: Telnyx::WhatsappReaction::OrHash,
            sticker: Telnyx::WhatsappMedia::OrHash,
            template:
              Telnyx::MessageWhatsappParams::WhatsappMessage::Template::OrHash,
            text: Telnyx::MessageWhatsappParams::WhatsappMessage::Text::OrHash,
            type:
              Telnyx::MessageWhatsappParams::WhatsappMessage::Type::OrSymbol,
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
              contacts:
                T::Array[
                  Telnyx::MessageWhatsappParams::WhatsappMessage::Contact
                ],
              document: Telnyx::WhatsappMedia,
              image: Telnyx::WhatsappMedia,
              interactive:
                Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive,
              location: Telnyx::WhatsappLocation,
              reaction: Telnyx::WhatsappReaction,
              sticker: Telnyx::WhatsappMedia,
              template:
                Telnyx::MessageWhatsappParams::WhatsappMessage::Template,
              text: Telnyx::MessageWhatsappParams::WhatsappMessage::Text,
              type:
                Telnyx::MessageWhatsappParams::WhatsappMessage::Type::OrSymbol,
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
                Telnyx::MessageWhatsappParams::WhatsappMessage::Contact,
                Telnyx::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(
                T::Array[
                  Telnyx::MessageWhatsappParams::WhatsappMessage::Contact::Address
                ]
              )
            )
          end
          attr_reader :addresses

          sig do
            params(
              addresses:
                T::Array[
                  Telnyx::MessageWhatsappParams::WhatsappMessage::Contact::Address::OrHash
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
                  Telnyx::MessageWhatsappParams::WhatsappMessage::Contact::Email
                ]
              )
            )
          end
          attr_reader :emails

          sig do
            params(
              emails:
                T::Array[
                  Telnyx::MessageWhatsappParams::WhatsappMessage::Contact::Email::OrHash
                ]
            ).void
          end
          attr_writer :emails

          sig do
            returns(
              T.nilable(
                Telnyx::MessageWhatsappParams::WhatsappMessage::Contact::Name
              )
            )
          end
          attr_reader :name

          sig do
            params(
              name:
                Telnyx::MessageWhatsappParams::WhatsappMessage::Contact::Name::OrHash
            ).void
          end
          attr_writer :name

          sig do
            returns(
              T.nilable(
                Telnyx::MessageWhatsappParams::WhatsappMessage::Contact::Org
              )
            )
          end
          attr_reader :org

          sig do
            params(
              org:
                Telnyx::MessageWhatsappParams::WhatsappMessage::Contact::Org::OrHash
            ).void
          end
          attr_writer :org

          sig do
            returns(
              T.nilable(
                T::Array[
                  Telnyx::MessageWhatsappParams::WhatsappMessage::Contact::Phone
                ]
              )
            )
          end
          attr_reader :phones

          sig do
            params(
              phones:
                T::Array[
                  Telnyx::MessageWhatsappParams::WhatsappMessage::Contact::Phone::OrHash
                ]
            ).void
          end
          attr_writer :phones

          sig do
            returns(
              T.nilable(
                T::Array[
                  Telnyx::MessageWhatsappParams::WhatsappMessage::Contact::URL
                ]
              )
            )
          end
          attr_reader :urls

          sig do
            params(
              urls:
                T::Array[
                  Telnyx::MessageWhatsappParams::WhatsappMessage::Contact::URL::OrHash
                ]
            ).void
          end
          attr_writer :urls

          sig do
            params(
              addresses:
                T::Array[
                  Telnyx::MessageWhatsappParams::WhatsappMessage::Contact::Address::OrHash
                ],
              birthday: String,
              emails:
                T::Array[
                  Telnyx::MessageWhatsappParams::WhatsappMessage::Contact::Email::OrHash
                ],
              name:
                Telnyx::MessageWhatsappParams::WhatsappMessage::Contact::Name::OrHash,
              org:
                Telnyx::MessageWhatsappParams::WhatsappMessage::Contact::Org::OrHash,
              phones:
                T::Array[
                  Telnyx::MessageWhatsappParams::WhatsappMessage::Contact::Phone::OrHash
                ],
              urls:
                T::Array[
                  Telnyx::MessageWhatsappParams::WhatsappMessage::Contact::URL::OrHash
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
                    Telnyx::MessageWhatsappParams::WhatsappMessage::Contact::Address
                  ],
                birthday: String,
                emails:
                  T::Array[
                    Telnyx::MessageWhatsappParams::WhatsappMessage::Contact::Email
                  ],
                name:
                  Telnyx::MessageWhatsappParams::WhatsappMessage::Contact::Name,
                org:
                  Telnyx::MessageWhatsappParams::WhatsappMessage::Contact::Org,
                phones:
                  T::Array[
                    Telnyx::MessageWhatsappParams::WhatsappMessage::Contact::Phone
                  ],
                urls:
                  T::Array[
                    Telnyx::MessageWhatsappParams::WhatsappMessage::Contact::URL
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
                  Telnyx::MessageWhatsappParams::WhatsappMessage::Contact::Address,
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
                  Telnyx::MessageWhatsappParams::WhatsappMessage::Contact::Email,
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

          class Name < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::MessageWhatsappParams::WhatsappMessage::Contact::Name,
                  Telnyx::Internal::AnyHash
                )
              end

            # contact's full name as displayed in the message
            sig { returns(String) }
            attr_accessor :formatted_name

            sig { returns(T.nilable(String)) }
            attr_reader :first_name

            sig { params(first_name: String).void }
            attr_writer :first_name

            sig { returns(T.nilable(String)) }
            attr_reader :last_name

            sig { params(last_name: String).void }
            attr_writer :last_name

            sig { returns(T.nilable(String)) }
            attr_reader :middle_name

            sig { params(middle_name: String).void }
            attr_writer :middle_name

            sig { returns(T.nilable(String)) }
            attr_reader :prefix

            sig { params(prefix: String).void }
            attr_writer :prefix

            sig { returns(T.nilable(String)) }
            attr_reader :suffix

            sig { params(suffix: String).void }
            attr_writer :suffix

            sig do
              params(
                formatted_name: String,
                first_name: String,
                last_name: String,
                middle_name: String,
                prefix: String,
                suffix: String
              ).returns(T.attached_class)
            end
            def self.new(
              # contact's full name as displayed in the message
              formatted_name:,
              first_name: nil,
              last_name: nil,
              middle_name: nil,
              prefix: nil,
              suffix: nil
            )
            end

            sig do
              override.returns(
                {
                  formatted_name: String,
                  first_name: String,
                  last_name: String,
                  middle_name: String,
                  prefix: String,
                  suffix: String
                }
              )
            end
            def to_hash
            end
          end

          class Org < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::MessageWhatsappParams::WhatsappMessage::Contact::Org,
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
                  Telnyx::MessageWhatsappParams::WhatsappMessage::Contact::Phone,
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
                  Telnyx::MessageWhatsappParams::WhatsappMessage::Contact::URL,
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
                Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive,
                Telnyx::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(
                Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Action
              )
            )
          end
          attr_reader :action

          sig do
            params(
              action:
                Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Action::OrHash
            ).void
          end
          attr_writer :action

          sig do
            returns(
              T.nilable(
                Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Body
              )
            )
          end
          attr_reader :body

          sig do
            params(
              body:
                Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Body::OrHash
            ).void
          end
          attr_writer :body

          sig do
            returns(
              T.nilable(
                Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Footer
              )
            )
          end
          attr_reader :footer

          sig do
            params(
              footer:
                Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Footer::OrHash
            ).void
          end
          attr_writer :footer

          sig do
            returns(
              T.nilable(
                Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Header
              )
            )
          end
          attr_reader :header

          sig do
            params(
              header:
                Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Header::OrHash
            ).void
          end
          attr_writer :header

          sig do
            returns(
              T.nilable(
                Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Type::OrSymbol
              )
            )
          end
          attr_reader :type

          sig do
            params(
              type:
                Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Type::OrSymbol
            ).void
          end
          attr_writer :type

          sig do
            params(
              action:
                Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Action::OrHash,
              body:
                Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Body::OrHash,
              footer:
                Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Footer::OrHash,
              header:
                Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Header::OrHash,
              type:
                Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Type::OrSymbol
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
                  Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Action,
                body:
                  Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Body,
                footer:
                  Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Footer,
                header:
                  Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Header,
                type:
                  Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Type::OrSymbol
              }
            )
          end
          def to_hash
          end

          class Action < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Action,
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
                    Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Button
                  ]
                )
              )
            end
            attr_reader :buttons

            sig do
              params(
                buttons:
                  T::Array[
                    Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Button::OrHash
                  ]
              ).void
            end
            attr_writer :buttons

            sig do
              returns(
                T.nilable(
                  T::Array[
                    Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Card
                  ]
                )
              )
            end
            attr_reader :cards

            sig do
              params(
                cards:
                  T::Array[
                    Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Card::OrHash
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
                  Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Parameters
                )
              )
            end
            attr_reader :parameters

            sig do
              params(
                parameters:
                  Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Parameters::OrHash
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
                    Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Section
                  ]
                )
              )
            end
            attr_reader :sections

            sig do
              params(
                sections:
                  T::Array[
                    Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Section::OrHash
                  ]
              ).void
            end
            attr_writer :sections

            sig do
              params(
                button: String,
                buttons:
                  T::Array[
                    Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Button::OrHash
                  ],
                cards:
                  T::Array[
                    Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Card::OrHash
                  ],
                catalog_id: String,
                mode: String,
                name: String,
                parameters:
                  Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Parameters::OrHash,
                product_retailer_id: String,
                sections:
                  T::Array[
                    Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Section::OrHash
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
                      Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Button
                    ],
                  cards:
                    T::Array[
                      Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Card
                    ],
                  catalog_id: String,
                  mode: String,
                  name: String,
                  parameters:
                    Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Parameters,
                  product_retailer_id: String,
                  sections:
                    T::Array[
                      Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Section
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
                    Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Button,
                    Telnyx::Internal::AnyHash
                  )
                end

              sig do
                returns(
                  T.nilable(
                    Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Button::Reply
                  )
                )
              end
              attr_reader :reply

              sig do
                params(
                  reply:
                    Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Button::Reply::OrHash
                ).void
              end
              attr_writer :reply

              sig do
                returns(
                  T.nilable(
                    Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Button::Type::OrSymbol
                  )
                )
              end
              attr_reader :type

              sig do
                params(
                  type:
                    Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Button::Type::OrSymbol
                ).void
              end
              attr_writer :type

              sig do
                params(
                  reply:
                    Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Button::Reply::OrHash,
                  type:
                    Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Button::Type::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(reply: nil, type: nil)
              end

              sig do
                override.returns(
                  {
                    reply:
                      Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Button::Reply,
                    type:
                      Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Button::Type::OrSymbol
                  }
                )
              end
              def to_hash
              end

              class Reply < Telnyx::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Button::Reply,
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
                      Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Button::Type
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                REPLY =
                  T.let(
                    :reply,
                    Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Button::Type::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Button::Type::TaggedSymbol
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
                    Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Card,
                    Telnyx::Internal::AnyHash
                  )
                end

              sig do
                returns(
                  T.nilable(
                    Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Card::Action
                  )
                )
              end
              attr_reader :action

              sig do
                params(
                  action:
                    Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Card::Action::OrHash
                ).void
              end
              attr_writer :action

              sig do
                returns(
                  T.nilable(
                    Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Card::Body
                  )
                )
              end
              attr_reader :body

              sig do
                params(
                  body:
                    Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Card::Body::OrHash
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
                    Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Card::Header
                  )
                )
              end
              attr_reader :header

              sig do
                params(
                  header:
                    Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Card::Header::OrHash
                ).void
              end
              attr_writer :header

              sig do
                returns(
                  T.nilable(
                    Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Card::Type::OrSymbol
                  )
                )
              end
              attr_reader :type

              sig do
                params(
                  type:
                    Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Card::Type::OrSymbol
                ).void
              end
              attr_writer :type

              sig do
                params(
                  action:
                    Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Card::Action::OrHash,
                  body:
                    Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Card::Body::OrHash,
                  card_index: Integer,
                  header:
                    Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Card::Header::OrHash,
                  type:
                    Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Card::Type::OrSymbol
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
                      Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Card::Action,
                    body:
                      Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Card::Body,
                    card_index: Integer,
                    header:
                      Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Card::Header,
                    type:
                      Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Card::Type::OrSymbol
                  }
                )
              end
              def to_hash
              end

              class Action < Telnyx::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Card::Action,
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
                      Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Card::Body,
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
                      Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Card::Header,
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
                      Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Card::Header::Type::OrSymbol
                    )
                  )
                end
                attr_reader :type

                sig do
                  params(
                    type:
                      Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Card::Header::Type::OrSymbol
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
                      Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Card::Header::Type::OrSymbol,
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
                        Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Card::Header::Type::OrSymbol,
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
                        Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Card::Header::Type
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  IMAGE =
                    T.let(
                      :image,
                      Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Card::Header::Type::TaggedSymbol
                    )
                  VIDEO =
                    T.let(
                      :video,
                      Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Card::Header::Type::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Card::Header::Type::TaggedSymbol
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
                      Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Card::Type
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                CTA_URL =
                  T.let(
                    :cta_url,
                    Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Card::Type::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Card::Type::TaggedSymbol
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
                    Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Parameters,
                    Telnyx::Internal::AnyHash
                  )
                end

              # button label text, 20 character maximum
              sig { returns(T.nilable(String)) }
              attr_reader :display_text

              sig { params(display_text: String).void }
              attr_writer :display_text

              # how the flow starts. navigate opens the screen in flow_action_payload;
              # data_exchange requests the first screen from the business's flow endpoint.
              # Defaults to navigate
              sig do
                returns(
                  T.nilable(
                    Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Parameters::FlowAction::OrSymbol
                  )
                )
              end
              attr_reader :flow_action

              sig do
                params(
                  flow_action:
                    Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Parameters::FlowAction::OrSymbol
                ).void
              end
              attr_writer :flow_action

              # optional initial screen and data. When omitted, the flow opens on its first
              # entry screen. Must be omitted when flow_action is data_exchange
              sig do
                returns(
                  T.nilable(
                    Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Parameters::FlowActionPayload
                  )
                )
              end
              attr_reader :flow_action_payload

              sig do
                params(
                  flow_action_payload:
                    Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Parameters::FlowActionPayload::OrHash
                ).void
              end
              attr_writer :flow_action_payload

              # text of the button that opens the flow, 1-20 characters, no emoji. Required for
              # flow messages
              sig { returns(T.nilable(String)) }
              attr_reader :flow_cta

              sig { params(flow_cta: String).void }
              attr_writer :flow_cta

              # ID of the flow to open. Provide exactly one of flow_id or flow_name
              sig { returns(T.nilable(String)) }
              attr_reader :flow_id

              sig { params(flow_id: String).void }
              attr_writer :flow_id

              # flow message version, must be 3. Required for flow messages
              sig { returns(T.nilable(String)) }
              attr_reader :flow_message_version

              sig { params(flow_message_version: String).void }
              attr_writer :flow_message_version

              # name of the flow to open. Provide exactly one of flow_id or flow_name
              sig { returns(T.nilable(String)) }
              attr_reader :flow_name

              sig { params(flow_name: String).void }
              attr_writer :flow_name

              # business-generated identifier for the flow session. Returned in the flow
              # response for correlation
              sig { returns(T.nilable(String)) }
              attr_reader :flow_token

              sig { params(flow_token: String).void }
              attr_writer :flow_token

              # use draft to test an unpublished flow. Defaults to published
              sig do
                returns(
                  T.nilable(
                    Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Parameters::Mode::OrSymbol
                  )
                )
              end
              attr_reader :mode

              sig do
                params(
                  mode:
                    Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Parameters::Mode::OrSymbol
                ).void
              end
              attr_writer :mode

              # button URL to load when tapped by the user
              sig { returns(T.nilable(String)) }
              attr_reader :url

              sig { params(url: String).void }
              attr_writer :url

              sig do
                params(
                  display_text: String,
                  flow_action:
                    Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Parameters::FlowAction::OrSymbol,
                  flow_action_payload:
                    Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Parameters::FlowActionPayload::OrHash,
                  flow_cta: String,
                  flow_id: String,
                  flow_message_version: String,
                  flow_name: String,
                  flow_token: String,
                  mode:
                    Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Parameters::Mode::OrSymbol,
                  url: String
                ).returns(T.attached_class)
              end
              def self.new(
                # button label text, 20 character maximum
                display_text: nil,
                # how the flow starts. navigate opens the screen in flow_action_payload;
                # data_exchange requests the first screen from the business's flow endpoint.
                # Defaults to navigate
                flow_action: nil,
                # optional initial screen and data. When omitted, the flow opens on its first
                # entry screen. Must be omitted when flow_action is data_exchange
                flow_action_payload: nil,
                # text of the button that opens the flow, 1-20 characters, no emoji. Required for
                # flow messages
                flow_cta: nil,
                # ID of the flow to open. Provide exactly one of flow_id or flow_name
                flow_id: nil,
                # flow message version, must be 3. Required for flow messages
                flow_message_version: nil,
                # name of the flow to open. Provide exactly one of flow_id or flow_name
                flow_name: nil,
                # business-generated identifier for the flow session. Returned in the flow
                # response for correlation
                flow_token: nil,
                # use draft to test an unpublished flow. Defaults to published
                mode: nil,
                # button URL to load when tapped by the user
                url: nil
              )
              end

              sig do
                override.returns(
                  {
                    display_text: String,
                    flow_action:
                      Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Parameters::FlowAction::OrSymbol,
                    flow_action_payload:
                      Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Parameters::FlowActionPayload,
                    flow_cta: String,
                    flow_id: String,
                    flow_message_version: String,
                    flow_name: String,
                    flow_token: String,
                    mode:
                      Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Parameters::Mode::OrSymbol,
                    url: String
                  }
                )
              end
              def to_hash
              end

              # how the flow starts. navigate opens the screen in flow_action_payload;
              # data_exchange requests the first screen from the business's flow endpoint.
              # Defaults to navigate
              module FlowAction
                extend Telnyx::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Parameters::FlowAction
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                NAVIGATE =
                  T.let(
                    :navigate,
                    Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Parameters::FlowAction::TaggedSymbol
                  )
                DATA_EXCHANGE =
                  T.let(
                    :data_exchange,
                    Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Parameters::FlowAction::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Parameters::FlowAction::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end

              class FlowActionPayload < Telnyx::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Parameters::FlowActionPayload,
                      Telnyx::Internal::AnyHash
                    )
                  end

                # input data for the first screen. Must be a non-empty object when provided
                sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
                attr_reader :data

                sig { params(data: T::Hash[Symbol, T.anything]).void }
                attr_writer :data

                # ID of the first screen to show
                sig { returns(T.nilable(String)) }
                attr_reader :screen

                sig { params(screen: String).void }
                attr_writer :screen

                # optional initial screen and data. When omitted, the flow opens on its first
                # entry screen. Must be omitted when flow_action is data_exchange
                sig do
                  params(
                    data: T::Hash[Symbol, T.anything],
                    screen: String
                  ).returns(T.attached_class)
                end
                def self.new(
                  # input data for the first screen. Must be a non-empty object when provided
                  data: nil,
                  # ID of the first screen to show
                  screen: nil
                )
                end

                sig do
                  override.returns(
                    { data: T::Hash[Symbol, T.anything], screen: String }
                  )
                end
                def to_hash
                end
              end

              # use draft to test an unpublished flow. Defaults to published
              module Mode
                extend Telnyx::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Parameters::Mode
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                DRAFT =
                  T.let(
                    :draft,
                    Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Parameters::Mode::TaggedSymbol
                  )
                PUBLISHED =
                  T.let(
                    :published,
                    Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Parameters::Mode::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Parameters::Mode::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end

            class Section < Telnyx::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Section,
                    Telnyx::Internal::AnyHash
                  )
                end

              sig do
                returns(
                  T.nilable(
                    T::Array[
                      Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Section::ProductItem
                    ]
                  )
                )
              end
              attr_reader :product_items

              sig do
                params(
                  product_items:
                    T::Array[
                      Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Section::ProductItem::OrHash
                    ]
                ).void
              end
              attr_writer :product_items

              sig do
                returns(
                  T.nilable(
                    T::Array[
                      Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Section::Row
                    ]
                  )
                )
              end
              attr_reader :rows

              sig do
                params(
                  rows:
                    T::Array[
                      Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Section::Row::OrHash
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
                      Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Section::ProductItem::OrHash
                    ],
                  rows:
                    T::Array[
                      Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Section::Row::OrHash
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
                        Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Section::ProductItem
                      ],
                    rows:
                      T::Array[
                        Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Section::Row
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
                      Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Section::ProductItem,
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
                      Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Action::Section::Row,
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
                  Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Body,
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
                  Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Footer,
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
                  Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Header,
                  Telnyx::Internal::AnyHash
                )
              end

            # header type. Required when a header is provided; the matching document, image,
            # text, or video field must be set
            sig do
              returns(
                Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Header::Type::OrSymbol
              )
            end
            attr_accessor :type

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
                type:
                  Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Header::Type::OrSymbol,
                document: Telnyx::WhatsappMedia::OrHash,
                image: Telnyx::WhatsappMedia::OrHash,
                sub_text: String,
                text: String,
                video: Telnyx::WhatsappMedia::OrHash
              ).returns(T.attached_class)
            end
            def self.new(
              # header type. Required when a header is provided; the matching document, image,
              # text, or video field must be set
              type:,
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
                  type:
                    Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Header::Type::OrSymbol,
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

            # header type. Required when a header is provided; the matching document, image,
            # text, or video field must be set
            module Type
              extend Telnyx::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Header::Type
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              DOCUMENT =
                T.let(
                  :document,
                  Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Header::Type::TaggedSymbol
                )
              IMAGE =
                T.let(
                  :image,
                  Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Header::Type::TaggedSymbol
                )
              TEXT =
                T.let(
                  :text,
                  Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Header::Type::TaggedSymbol
                )
              VIDEO =
                T.let(
                  :video,
                  Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Header::Type::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Header::Type::TaggedSymbol
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
                  Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Type
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            CTA_URL =
              T.let(
                :cta_url,
                Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Type::TaggedSymbol
              )
            LIST =
              T.let(
                :list,
                Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Type::TaggedSymbol
              )
            CAROUSEL =
              T.let(
                :carousel,
                Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Type::TaggedSymbol
              )
            BUTTON =
              T.let(
                :button,
                Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Type::TaggedSymbol
              )
            LOCATION_REQUEST_MESSAGE =
              T.let(
                :location_request_message,
                Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Type::TaggedSymbol
              )
            FLOW =
              T.let(
                :flow,
                Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::MessageWhatsappParams::WhatsappMessage::Interactive::Type::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class Template < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::MessageWhatsappParams::WhatsappMessage::Template,
                Telnyx::Internal::AnyHash
              )
            end

          # Template parameter values for header, body, and button components.
          sig do
            returns(
              T.nilable(
                T::Array[
                  Telnyx::MessageWhatsappParams::WhatsappMessage::Template::Component
                ]
              )
            )
          end
          attr_reader :components

          sig do
            params(
              components:
                T::Array[
                  Telnyx::MessageWhatsappParams::WhatsappMessage::Template::Component::OrHash
                ]
            ).void
          end
          attr_writer :components

          # Template language. Required unless template_id is provided.
          sig do
            returns(
              T.nilable(
                Telnyx::MessageWhatsappParams::WhatsappMessage::Template::Language
              )
            )
          end
          attr_reader :language

          sig do
            params(
              language:
                Telnyx::MessageWhatsappParams::WhatsappMessage::Template::Language::OrHash
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
                  Telnyx::MessageWhatsappParams::WhatsappMessage::Template::Component::OrHash
                ],
              language:
                Telnyx::MessageWhatsappParams::WhatsappMessage::Template::Language::OrHash,
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
                  T::Array[
                    Telnyx::MessageWhatsappParams::WhatsappMessage::Template::Component
                  ],
                language:
                  Telnyx::MessageWhatsappParams::WhatsappMessage::Template::Language,
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
                  Telnyx::MessageWhatsappParams::WhatsappMessage::Template::Component,
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
                    Telnyx::MessageWhatsappParams::WhatsappMessage::Template::Component::Parameter
                  ]
                )
              )
            end
            attr_reader :parameters

            sig do
              params(
                parameters:
                  T::Array[
                    Telnyx::MessageWhatsappParams::WhatsappMessage::Template::Component::Parameter::OrHash
                  ]
              ).void
            end
            attr_writer :parameters

            sig do
              returns(
                T.nilable(
                  Telnyx::MessageWhatsappParams::WhatsappMessage::Template::Component::SubType::OrSymbol
                )
              )
            end
            attr_reader :sub_type

            sig do
              params(
                sub_type:
                  Telnyx::MessageWhatsappParams::WhatsappMessage::Template::Component::SubType::OrSymbol
              ).void
            end
            attr_writer :sub_type

            sig do
              returns(
                T.nilable(
                  Telnyx::MessageWhatsappParams::WhatsappMessage::Template::Component::Type::OrSymbol
                )
              )
            end
            attr_reader :type

            sig do
              params(
                type:
                  Telnyx::MessageWhatsappParams::WhatsappMessage::Template::Component::Type::OrSymbol
              ).void
            end
            attr_writer :type

            sig do
              params(
                index: Integer,
                parameters:
                  T::Array[
                    Telnyx::MessageWhatsappParams::WhatsappMessage::Template::Component::Parameter::OrHash
                  ],
                sub_type:
                  Telnyx::MessageWhatsappParams::WhatsappMessage::Template::Component::SubType::OrSymbol,
                type:
                  Telnyx::MessageWhatsappParams::WhatsappMessage::Template::Component::Type::OrSymbol
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
                      Telnyx::MessageWhatsappParams::WhatsappMessage::Template::Component::Parameter
                    ],
                  sub_type:
                    Telnyx::MessageWhatsappParams::WhatsappMessage::Template::Component::SubType::OrSymbol,
                  type:
                    Telnyx::MessageWhatsappParams::WhatsappMessage::Template::Component::Type::OrSymbol
                }
              )
            end
            def to_hash
            end

            class Parameter < Telnyx::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::MessageWhatsappParams::WhatsappMessage::Template::Component::Parameter,
                    Telnyx::Internal::AnyHash
                  )
                end

              # Flow button parameters. Used with type action on a flow button component
              sig do
                returns(
                  T.nilable(
                    Telnyx::MessageWhatsappParams::WhatsappMessage::Template::Component::Parameter::Action
                  )
                )
              end
              attr_reader :action

              sig do
                params(
                  action:
                    Telnyx::MessageWhatsappParams::WhatsappMessage::Template::Component::Parameter::Action::OrHash
                ).void
              end
              attr_writer :action

              sig { returns(T.nilable(String)) }
              attr_reader :text

              sig { params(text: String).void }
              attr_writer :text

              sig do
                returns(
                  T.nilable(
                    Telnyx::MessageWhatsappParams::WhatsappMessage::Template::Component::Parameter::Type::OrSymbol
                  )
                )
              end
              attr_reader :type

              sig do
                params(
                  type:
                    Telnyx::MessageWhatsappParams::WhatsappMessage::Template::Component::Parameter::Type::OrSymbol
                ).void
              end
              attr_writer :type

              sig do
                params(
                  action:
                    Telnyx::MessageWhatsappParams::WhatsappMessage::Template::Component::Parameter::Action::OrHash,
                  text: String,
                  type:
                    Telnyx::MessageWhatsappParams::WhatsappMessage::Template::Component::Parameter::Type::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(
                # Flow button parameters. Used with type action on a flow button component
                action: nil,
                text: nil,
                type: nil
              )
              end

              sig do
                override.returns(
                  {
                    action:
                      Telnyx::MessageWhatsappParams::WhatsappMessage::Template::Component::Parameter::Action,
                    text: String,
                    type:
                      Telnyx::MessageWhatsappParams::WhatsappMessage::Template::Component::Parameter::Type::OrSymbol
                  }
                )
              end
              def to_hash
              end

              class Action < Telnyx::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Telnyx::MessageWhatsappParams::WhatsappMessage::Template::Component::Parameter::Action,
                      Telnyx::Internal::AnyHash
                    )
                  end

                # input data for the first screen of the flow
                sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
                attr_reader :flow_action_data

                sig do
                  params(flow_action_data: T::Hash[Symbol, T.anything]).void
                end
                attr_writer :flow_action_data

                # business-generated identifier for the flow session. Returned in the flow
                # response for correlation
                sig { returns(T.nilable(String)) }
                attr_reader :flow_token

                sig { params(flow_token: String).void }
                attr_writer :flow_token

                # Flow button parameters. Used with type action on a flow button component
                sig do
                  params(
                    flow_action_data: T::Hash[Symbol, T.anything],
                    flow_token: String
                  ).returns(T.attached_class)
                end
                def self.new(
                  # input data for the first screen of the flow
                  flow_action_data: nil,
                  # business-generated identifier for the flow session. Returned in the flow
                  # response for correlation
                  flow_token: nil
                )
                end

                sig do
                  override.returns(
                    {
                      flow_action_data: T::Hash[Symbol, T.anything],
                      flow_token: String
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
                      Telnyx::MessageWhatsappParams::WhatsappMessage::Template::Component::Parameter::Type
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                TEXT =
                  T.let(
                    :text,
                    Telnyx::MessageWhatsappParams::WhatsappMessage::Template::Component::Parameter::Type::TaggedSymbol
                  )
                IMAGE =
                  T.let(
                    :image,
                    Telnyx::MessageWhatsappParams::WhatsappMessage::Template::Component::Parameter::Type::TaggedSymbol
                  )
                VIDEO =
                  T.let(
                    :video,
                    Telnyx::MessageWhatsappParams::WhatsappMessage::Template::Component::Parameter::Type::TaggedSymbol
                  )
                DOCUMENT =
                  T.let(
                    :document,
                    Telnyx::MessageWhatsappParams::WhatsappMessage::Template::Component::Parameter::Type::TaggedSymbol
                  )
                CURRENCY =
                  T.let(
                    :currency,
                    Telnyx::MessageWhatsappParams::WhatsappMessage::Template::Component::Parameter::Type::TaggedSymbol
                  )
                DATE_TIME =
                  T.let(
                    :date_time,
                    Telnyx::MessageWhatsappParams::WhatsappMessage::Template::Component::Parameter::Type::TaggedSymbol
                  )
                ACTION =
                  T.let(
                    :action,
                    Telnyx::MessageWhatsappParams::WhatsappMessage::Template::Component::Parameter::Type::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Telnyx::MessageWhatsappParams::WhatsappMessage::Template::Component::Parameter::Type::TaggedSymbol
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
                    Telnyx::MessageWhatsappParams::WhatsappMessage::Template::Component::SubType
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              QUICK_REPLY =
                T.let(
                  :quick_reply,
                  Telnyx::MessageWhatsappParams::WhatsappMessage::Template::Component::SubType::TaggedSymbol
                )
              URL =
                T.let(
                  :url,
                  Telnyx::MessageWhatsappParams::WhatsappMessage::Template::Component::SubType::TaggedSymbol
                )
              FLOW =
                T.let(
                  :flow,
                  Telnyx::MessageWhatsappParams::WhatsappMessage::Template::Component::SubType::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::MessageWhatsappParams::WhatsappMessage::Template::Component::SubType::TaggedSymbol
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
                    Telnyx::MessageWhatsappParams::WhatsappMessage::Template::Component::Type
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              HEADER =
                T.let(
                  :header,
                  Telnyx::MessageWhatsappParams::WhatsappMessage::Template::Component::Type::TaggedSymbol
                )
              BODY =
                T.let(
                  :body,
                  Telnyx::MessageWhatsappParams::WhatsappMessage::Template::Component::Type::TaggedSymbol
                )
              BUTTON =
                T.let(
                  :button,
                  Telnyx::MessageWhatsappParams::WhatsappMessage::Template::Component::Type::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::MessageWhatsappParams::WhatsappMessage::Template::Component::Type::TaggedSymbol
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
                  Telnyx::MessageWhatsappParams::WhatsappMessage::Template::Language,
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
            sig do
              params(code: String, policy: String).returns(T.attached_class)
            end
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
                Telnyx::MessageWhatsappParams::WhatsappMessage::Text,
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
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::MessageWhatsappParams::WhatsappMessage::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AUDIO =
            T.let(
              :audio,
              Telnyx::MessageWhatsappParams::WhatsappMessage::Type::TaggedSymbol
            )
          DOCUMENT =
            T.let(
              :document,
              Telnyx::MessageWhatsappParams::WhatsappMessage::Type::TaggedSymbol
            )
          IMAGE =
            T.let(
              :image,
              Telnyx::MessageWhatsappParams::WhatsappMessage::Type::TaggedSymbol
            )
          STICKER =
            T.let(
              :sticker,
              Telnyx::MessageWhatsappParams::WhatsappMessage::Type::TaggedSymbol
            )
          VIDEO =
            T.let(
              :video,
              Telnyx::MessageWhatsappParams::WhatsappMessage::Type::TaggedSymbol
            )
          INTERACTIVE =
            T.let(
              :interactive,
              Telnyx::MessageWhatsappParams::WhatsappMessage::Type::TaggedSymbol
            )
          LOCATION =
            T.let(
              :location,
              Telnyx::MessageWhatsappParams::WhatsappMessage::Type::TaggedSymbol
            )
          TEMPLATE =
            T.let(
              :template,
              Telnyx::MessageWhatsappParams::WhatsappMessage::Type::TaggedSymbol
            )
          REACTION =
            T.let(
              :reaction,
              Telnyx::MessageWhatsappParams::WhatsappMessage::Type::TaggedSymbol
            )
          CONTACTS =
            T.let(
              :contacts,
              Telnyx::MessageWhatsappParams::WhatsappMessage::Type::TaggedSymbol
            )
          TEXT =
            T.let(
              :text,
              Telnyx::MessageWhatsappParams::WhatsappMessage::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::MessageWhatsappParams::WhatsappMessage::Type::TaggedSymbol
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
          T.type_alias { T.all(Symbol, Telnyx::MessageWhatsappParams::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        WHATSAPP =
          T.let(:WHATSAPP, Telnyx::MessageWhatsappParams::Type::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::MessageWhatsappParams::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
