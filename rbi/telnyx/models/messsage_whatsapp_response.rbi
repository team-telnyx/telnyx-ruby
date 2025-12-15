# typed: strong

module Telnyx
  module Models
    class MesssageWhatsappResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::MesssageWhatsappResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Telnyx::Models::MesssageWhatsappResponse::Data)) }
      attr_reader :data

      sig do
        params(
          data: Telnyx::Models::MesssageWhatsappResponse::Data::OrHash
        ).void
      end
      attr_writer :data

      sig do
        params(
          data: Telnyx::Models::MesssageWhatsappResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data: nil)
      end

      sig do
        override.returns(
          { data: Telnyx::Models::MesssageWhatsappResponse::Data }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::MesssageWhatsappResponse::Data,
              Telnyx::Internal::AnyHash
            )
          end

        # message ID
        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        sig do
          returns(
            T.nilable(Telnyx::Models::MesssageWhatsappResponse::Data::Body)
          )
        end
        attr_reader :body

        sig do
          params(
            body: Telnyx::Models::MesssageWhatsappResponse::Data::Body::OrHash
          ).void
        end
        attr_writer :body

        sig { returns(T.nilable(String)) }
        attr_reader :direction

        sig { params(direction: String).void }
        attr_writer :direction

        sig { returns(T.nilable(String)) }
        attr_reader :encoding

        sig { params(encoding: String).void }
        attr_writer :encoding

        sig do
          returns(
            T.nilable(Telnyx::Models::MesssageWhatsappResponse::Data::From)
          )
        end
        attr_reader :from

        sig do
          params(
            from: Telnyx::Models::MesssageWhatsappResponse::Data::From::OrHash
          ).void
        end
        attr_writer :from

        sig { returns(T.nilable(String)) }
        attr_reader :messaging_profile_id

        sig { params(messaging_profile_id: String).void }
        attr_writer :messaging_profile_id

        sig { returns(T.nilable(String)) }
        attr_reader :organization_id

        sig { params(organization_id: String).void }
        attr_writer :organization_id

        sig { returns(T.nilable(Time)) }
        attr_reader :received_at

        sig { params(received_at: Time).void }
        attr_writer :received_at

        sig { returns(T.nilable(String)) }
        attr_reader :record_type

        sig { params(record_type: String).void }
        attr_writer :record_type

        sig do
          returns(
            T.nilable(
              T::Array[Telnyx::Models::MesssageWhatsappResponse::Data::To]
            )
          )
        end
        attr_reader :to

        sig do
          params(
            to:
              T::Array[
                Telnyx::Models::MesssageWhatsappResponse::Data::To::OrHash
              ]
          ).void
        end
        attr_writer :to

        sig { returns(T.nilable(String)) }
        attr_reader :type

        sig { params(type: String).void }
        attr_writer :type

        sig do
          params(
            id: String,
            body: Telnyx::Models::MesssageWhatsappResponse::Data::Body::OrHash,
            direction: String,
            encoding: String,
            from: Telnyx::Models::MesssageWhatsappResponse::Data::From::OrHash,
            messaging_profile_id: String,
            organization_id: String,
            received_at: Time,
            record_type: String,
            to:
              T::Array[
                Telnyx::Models::MesssageWhatsappResponse::Data::To::OrHash
              ],
            type: String
          ).returns(T.attached_class)
        end
        def self.new(
          # message ID
          id: nil,
          body: nil,
          direction: nil,
          encoding: nil,
          from: nil,
          messaging_profile_id: nil,
          organization_id: nil,
          received_at: nil,
          record_type: nil,
          to: nil,
          type: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              body: Telnyx::Models::MesssageWhatsappResponse::Data::Body,
              direction: String,
              encoding: String,
              from: Telnyx::Models::MesssageWhatsappResponse::Data::From,
              messaging_profile_id: String,
              organization_id: String,
              received_at: Time,
              record_type: String,
              to: T::Array[Telnyx::Models::MesssageWhatsappResponse::Data::To],
              type: String
            }
          )
        end
        def to_hash
        end

        class Body < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::MesssageWhatsappResponse::Data::Body,
                Telnyx::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(
                Telnyx::Models::MesssageWhatsappResponse::Data::Body::Audio
              )
            )
          end
          attr_reader :audio

          sig do
            params(
              audio:
                Telnyx::Models::MesssageWhatsappResponse::Data::Body::Audio::OrHash
            ).void
          end
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
                  Telnyx::Models::MesssageWhatsappResponse::Data::Body::Contact
                ]
              )
            )
          end
          attr_reader :contacts

          sig do
            params(
              contacts:
                T::Array[
                  Telnyx::Models::MesssageWhatsappResponse::Data::Body::Contact::OrHash
                ]
            ).void
          end
          attr_writer :contacts

          sig do
            returns(
              T.nilable(
                Telnyx::Models::MesssageWhatsappResponse::Data::Body::Document
              )
            )
          end
          attr_reader :document

          sig do
            params(
              document:
                Telnyx::Models::MesssageWhatsappResponse::Data::Body::Document::OrHash
            ).void
          end
          attr_writer :document

          sig do
            returns(
              T.nilable(
                Telnyx::Models::MesssageWhatsappResponse::Data::Body::Image
              )
            )
          end
          attr_reader :image

          sig do
            params(
              image:
                Telnyx::Models::MesssageWhatsappResponse::Data::Body::Image::OrHash
            ).void
          end
          attr_writer :image

          sig do
            returns(
              T.nilable(
                Telnyx::Models::MesssageWhatsappResponse::Data::Body::Interactive
              )
            )
          end
          attr_reader :interactive

          sig do
            params(
              interactive:
                Telnyx::Models::MesssageWhatsappResponse::Data::Body::Interactive::OrHash
            ).void
          end
          attr_writer :interactive

          sig do
            returns(
              T.nilable(
                Telnyx::Models::MesssageWhatsappResponse::Data::Body::Location
              )
            )
          end
          attr_reader :location

          sig do
            params(
              location:
                Telnyx::Models::MesssageWhatsappResponse::Data::Body::Location::OrHash
            ).void
          end
          attr_writer :location

          sig do
            returns(
              T.nilable(
                Telnyx::Models::MesssageWhatsappResponse::Data::Body::Reaction
              )
            )
          end
          attr_reader :reaction

          sig do
            params(
              reaction:
                Telnyx::Models::MesssageWhatsappResponse::Data::Body::Reaction::OrHash
            ).void
          end
          attr_writer :reaction

          sig do
            returns(
              T.nilable(
                Telnyx::Models::MesssageWhatsappResponse::Data::Body::Sticker
              )
            )
          end
          attr_reader :sticker

          sig do
            params(
              sticker:
                Telnyx::Models::MesssageWhatsappResponse::Data::Body::Sticker::OrHash
            ).void
          end
          attr_writer :sticker

          sig do
            returns(
              T.nilable(
                Telnyx::Models::MesssageWhatsappResponse::Data::Body::Type::TaggedSymbol
              )
            )
          end
          attr_reader :type

          sig do
            params(
              type:
                Telnyx::Models::MesssageWhatsappResponse::Data::Body::Type::OrSymbol
            ).void
          end
          attr_writer :type

          sig do
            returns(
              T.nilable(
                Telnyx::Models::MesssageWhatsappResponse::Data::Body::Video
              )
            )
          end
          attr_reader :video

          sig do
            params(
              video:
                Telnyx::Models::MesssageWhatsappResponse::Data::Body::Video::OrHash
            ).void
          end
          attr_writer :video

          sig do
            params(
              audio:
                Telnyx::Models::MesssageWhatsappResponse::Data::Body::Audio::OrHash,
              biz_opaque_callback_data: String,
              contacts:
                T::Array[
                  Telnyx::Models::MesssageWhatsappResponse::Data::Body::Contact::OrHash
                ],
              document:
                Telnyx::Models::MesssageWhatsappResponse::Data::Body::Document::OrHash,
              image:
                Telnyx::Models::MesssageWhatsappResponse::Data::Body::Image::OrHash,
              interactive:
                Telnyx::Models::MesssageWhatsappResponse::Data::Body::Interactive::OrHash,
              location:
                Telnyx::Models::MesssageWhatsappResponse::Data::Body::Location::OrHash,
              reaction:
                Telnyx::Models::MesssageWhatsappResponse::Data::Body::Reaction::OrHash,
              sticker:
                Telnyx::Models::MesssageWhatsappResponse::Data::Body::Sticker::OrHash,
              type:
                Telnyx::Models::MesssageWhatsappResponse::Data::Body::Type::OrSymbol,
              video:
                Telnyx::Models::MesssageWhatsappResponse::Data::Body::Video::OrHash
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
                audio:
                  Telnyx::Models::MesssageWhatsappResponse::Data::Body::Audio,
                biz_opaque_callback_data: String,
                contacts:
                  T::Array[
                    Telnyx::Models::MesssageWhatsappResponse::Data::Body::Contact
                  ],
                document:
                  Telnyx::Models::MesssageWhatsappResponse::Data::Body::Document,
                image:
                  Telnyx::Models::MesssageWhatsappResponse::Data::Body::Image,
                interactive:
                  Telnyx::Models::MesssageWhatsappResponse::Data::Body::Interactive,
                location:
                  Telnyx::Models::MesssageWhatsappResponse::Data::Body::Location,
                reaction:
                  Telnyx::Models::MesssageWhatsappResponse::Data::Body::Reaction,
                sticker:
                  Telnyx::Models::MesssageWhatsappResponse::Data::Body::Sticker,
                type:
                  Telnyx::Models::MesssageWhatsappResponse::Data::Body::Type::TaggedSymbol,
                video:
                  Telnyx::Models::MesssageWhatsappResponse::Data::Body::Video
              }
            )
          end
          def to_hash
          end

          class Audio < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Models::MesssageWhatsappResponse::Data::Body::Audio,
                  Telnyx::Internal::AnyHash
                )
              end

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
                {
                  caption: String,
                  filename: String,
                  link: String,
                  voice: T::Boolean
                }
              )
            end
            def to_hash
            end
          end

          class Contact < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Models::MesssageWhatsappResponse::Data::Body::Contact,
                  Telnyx::Internal::AnyHash
                )
              end

            sig do
              returns(
                T.nilable(
                  T::Array[
                    Telnyx::Models::MesssageWhatsappResponse::Data::Body::Contact::Address
                  ]
                )
              )
            end
            attr_reader :addresses

            sig do
              params(
                addresses:
                  T::Array[
                    Telnyx::Models::MesssageWhatsappResponse::Data::Body::Contact::Address::OrHash
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
                    Telnyx::Models::MesssageWhatsappResponse::Data::Body::Contact::Email
                  ]
                )
              )
            end
            attr_reader :emails

            sig do
              params(
                emails:
                  T::Array[
                    Telnyx::Models::MesssageWhatsappResponse::Data::Body::Contact::Email::OrHash
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
                  Telnyx::Models::MesssageWhatsappResponse::Data::Body::Contact::Org
                )
              )
            end
            attr_reader :org

            sig do
              params(
                org:
                  Telnyx::Models::MesssageWhatsappResponse::Data::Body::Contact::Org::OrHash
              ).void
            end
            attr_writer :org

            sig do
              returns(
                T.nilable(
                  T::Array[
                    Telnyx::Models::MesssageWhatsappResponse::Data::Body::Contact::Phone
                  ]
                )
              )
            end
            attr_reader :phones

            sig do
              params(
                phones:
                  T::Array[
                    Telnyx::Models::MesssageWhatsappResponse::Data::Body::Contact::Phone::OrHash
                  ]
              ).void
            end
            attr_writer :phones

            sig do
              returns(
                T.nilable(
                  T::Array[
                    Telnyx::Models::MesssageWhatsappResponse::Data::Body::Contact::URL
                  ]
                )
              )
            end
            attr_reader :urls

            sig do
              params(
                urls:
                  T::Array[
                    Telnyx::Models::MesssageWhatsappResponse::Data::Body::Contact::URL::OrHash
                  ]
              ).void
            end
            attr_writer :urls

            sig do
              params(
                addresses:
                  T::Array[
                    Telnyx::Models::MesssageWhatsappResponse::Data::Body::Contact::Address::OrHash
                  ],
                birthday: String,
                emails:
                  T::Array[
                    Telnyx::Models::MesssageWhatsappResponse::Data::Body::Contact::Email::OrHash
                  ],
                name: String,
                org:
                  Telnyx::Models::MesssageWhatsappResponse::Data::Body::Contact::Org::OrHash,
                phones:
                  T::Array[
                    Telnyx::Models::MesssageWhatsappResponse::Data::Body::Contact::Phone::OrHash
                  ],
                urls:
                  T::Array[
                    Telnyx::Models::MesssageWhatsappResponse::Data::Body::Contact::URL::OrHash
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
                      Telnyx::Models::MesssageWhatsappResponse::Data::Body::Contact::Address
                    ],
                  birthday: String,
                  emails:
                    T::Array[
                      Telnyx::Models::MesssageWhatsappResponse::Data::Body::Contact::Email
                    ],
                  name: String,
                  org:
                    Telnyx::Models::MesssageWhatsappResponse::Data::Body::Contact::Org,
                  phones:
                    T::Array[
                      Telnyx::Models::MesssageWhatsappResponse::Data::Body::Contact::Phone
                    ],
                  urls:
                    T::Array[
                      Telnyx::Models::MesssageWhatsappResponse::Data::Body::Contact::URL
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
                    Telnyx::Models::MesssageWhatsappResponse::Data::Body::Contact::Address,
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
                    Telnyx::Models::MesssageWhatsappResponse::Data::Body::Contact::Email,
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
                    Telnyx::Models::MesssageWhatsappResponse::Data::Body::Contact::Org,
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
                    Telnyx::Models::MesssageWhatsappResponse::Data::Body::Contact::Phone,
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
                    Telnyx::Models::MesssageWhatsappResponse::Data::Body::Contact::URL,
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

              sig do
                params(type: String, url: String).returns(T.attached_class)
              end
              def self.new(type: nil, url: nil)
              end

              sig { override.returns({ type: String, url: String }) }
              def to_hash
              end
            end
          end

          class Document < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Models::MesssageWhatsappResponse::Data::Body::Document,
                  Telnyx::Internal::AnyHash
                )
              end

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
                {
                  caption: String,
                  filename: String,
                  link: String,
                  voice: T::Boolean
                }
              )
            end
            def to_hash
            end
          end

          class Image < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Models::MesssageWhatsappResponse::Data::Body::Image,
                  Telnyx::Internal::AnyHash
                )
              end

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
                {
                  caption: String,
                  filename: String,
                  link: String,
                  voice: T::Boolean
                }
              )
            end
            def to_hash
            end
          end

          class Interactive < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Models::MesssageWhatsappResponse::Data::Body::Interactive,
                  Telnyx::Internal::AnyHash
                )
              end

            sig do
              returns(
                T.nilable(
                  Telnyx::Models::MesssageWhatsappResponse::Data::Body::Interactive::Action
                )
              )
            end
            attr_reader :action

            sig do
              params(
                action:
                  Telnyx::Models::MesssageWhatsappResponse::Data::Body::Interactive::Action::OrHash
              ).void
            end
            attr_writer :action

            sig do
              returns(
                T.nilable(
                  Telnyx::Models::MesssageWhatsappResponse::Data::Body::Interactive::Body
                )
              )
            end
            attr_reader :body

            sig do
              params(
                body:
                  Telnyx::Models::MesssageWhatsappResponse::Data::Body::Interactive::Body::OrHash
              ).void
            end
            attr_writer :body

            sig do
              returns(
                T.nilable(
                  Telnyx::Models::MesssageWhatsappResponse::Data::Body::Interactive::Footer
                )
              )
            end
            attr_reader :footer

            sig do
              params(
                footer:
                  Telnyx::Models::MesssageWhatsappResponse::Data::Body::Interactive::Footer::OrHash
              ).void
            end
            attr_writer :footer

            sig do
              returns(
                T.nilable(
                  Telnyx::Models::MesssageWhatsappResponse::Data::Body::Interactive::Header
                )
              )
            end
            attr_reader :header

            sig do
              params(
                header:
                  Telnyx::Models::MesssageWhatsappResponse::Data::Body::Interactive::Header::OrHash
              ).void
            end
            attr_writer :header

            sig do
              returns(
                T.nilable(
                  Telnyx::Models::MesssageWhatsappResponse::Data::Body::Interactive::Type::TaggedSymbol
                )
              )
            end
            attr_reader :type

            sig do
              params(
                type:
                  Telnyx::Models::MesssageWhatsappResponse::Data::Body::Interactive::Type::OrSymbol
              ).void
            end
            attr_writer :type

            sig do
              params(
                action:
                  Telnyx::Models::MesssageWhatsappResponse::Data::Body::Interactive::Action::OrHash,
                body:
                  Telnyx::Models::MesssageWhatsappResponse::Data::Body::Interactive::Body::OrHash,
                footer:
                  Telnyx::Models::MesssageWhatsappResponse::Data::Body::Interactive::Footer::OrHash,
                header:
                  Telnyx::Models::MesssageWhatsappResponse::Data::Body::Interactive::Header::OrHash,
                type:
                  Telnyx::Models::MesssageWhatsappResponse::Data::Body::Interactive::Type::OrSymbol
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
                    Telnyx::Models::MesssageWhatsappResponse::Data::Body::Interactive::Action,
                  body:
                    Telnyx::Models::MesssageWhatsappResponse::Data::Body::Interactive::Body,
                  footer:
                    Telnyx::Models::MesssageWhatsappResponse::Data::Body::Interactive::Footer,
                  header:
                    Telnyx::Models::MesssageWhatsappResponse::Data::Body::Interactive::Header,
                  type:
                    Telnyx::Models::MesssageWhatsappResponse::Data::Body::Interactive::Type::TaggedSymbol
                }
              )
            end
            def to_hash
            end

            class Action < Telnyx::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::Models::MesssageWhatsappResponse::Data::Body::Interactive::Action,
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
                      Telnyx::Models::MesssageWhatsappResponse::Data::Body::Interactive::Action::Button
                    ]
                  )
                )
              end
              attr_reader :buttons

              sig do
                params(
                  buttons:
                    T::Array[
                      Telnyx::Models::MesssageWhatsappResponse::Data::Body::Interactive::Action::Button::OrHash
                    ]
                ).void
              end
              attr_writer :buttons

              sig do
                returns(
                  T.nilable(
                    T::Array[
                      Telnyx::Models::MesssageWhatsappResponse::Data::Body::Interactive::Action::Card
                    ]
                  )
                )
              end
              attr_reader :cards

              sig do
                params(
                  cards:
                    T::Array[
                      Telnyx::Models::MesssageWhatsappResponse::Data::Body::Interactive::Action::Card::OrHash
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
                    Telnyx::Models::MesssageWhatsappResponse::Data::Body::Interactive::Action::Parameters
                  )
                )
              end
              attr_reader :parameters

              sig do
                params(
                  parameters:
                    Telnyx::Models::MesssageWhatsappResponse::Data::Body::Interactive::Action::Parameters::OrHash
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
                      Telnyx::Models::MesssageWhatsappResponse::Data::Body::Interactive::Action::Section
                    ]
                  )
                )
              end
              attr_reader :sections

              sig do
                params(
                  sections:
                    T::Array[
                      Telnyx::Models::MesssageWhatsappResponse::Data::Body::Interactive::Action::Section::OrHash
                    ]
                ).void
              end
              attr_writer :sections

              sig do
                params(
                  button: String,
                  buttons:
                    T::Array[
                      Telnyx::Models::MesssageWhatsappResponse::Data::Body::Interactive::Action::Button::OrHash
                    ],
                  cards:
                    T::Array[
                      Telnyx::Models::MesssageWhatsappResponse::Data::Body::Interactive::Action::Card::OrHash
                    ],
                  catalog_id: String,
                  mode: String,
                  name: String,
                  parameters:
                    Telnyx::Models::MesssageWhatsappResponse::Data::Body::Interactive::Action::Parameters::OrHash,
                  product_retailer_id: String,
                  sections:
                    T::Array[
                      Telnyx::Models::MesssageWhatsappResponse::Data::Body::Interactive::Action::Section::OrHash
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
                        Telnyx::Models::MesssageWhatsappResponse::Data::Body::Interactive::Action::Button
                      ],
                    cards:
                      T::Array[
                        Telnyx::Models::MesssageWhatsappResponse::Data::Body::Interactive::Action::Card
                      ],
                    catalog_id: String,
                    mode: String,
                    name: String,
                    parameters:
                      Telnyx::Models::MesssageWhatsappResponse::Data::Body::Interactive::Action::Parameters,
                    product_retailer_id: String,
                    sections:
                      T::Array[
                        Telnyx::Models::MesssageWhatsappResponse::Data::Body::Interactive::Action::Section
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
                      Telnyx::Models::MesssageWhatsappResponse::Data::Body::Interactive::Action::Button,
                      Telnyx::Internal::AnyHash
                    )
                  end

                sig do
                  returns(
                    T.nilable(
                      Telnyx::Models::MesssageWhatsappResponse::Data::Body::Interactive::Action::Button::Reply
                    )
                  )
                end
                attr_reader :reply

                sig do
                  params(
                    reply:
                      Telnyx::Models::MesssageWhatsappResponse::Data::Body::Interactive::Action::Button::Reply::OrHash
                  ).void
                end
                attr_writer :reply

                sig do
                  returns(
                    T.nilable(
                      Telnyx::Models::MesssageWhatsappResponse::Data::Body::Interactive::Action::Button::Type::TaggedSymbol
                    )
                  )
                end
                attr_reader :type

                sig do
                  params(
                    type:
                      Telnyx::Models::MesssageWhatsappResponse::Data::Body::Interactive::Action::Button::Type::OrSymbol
                  ).void
                end
                attr_writer :type

                sig do
                  params(
                    reply:
                      Telnyx::Models::MesssageWhatsappResponse::Data::Body::Interactive::Action::Button::Reply::OrHash,
                    type:
                      Telnyx::Models::MesssageWhatsappResponse::Data::Body::Interactive::Action::Button::Type::OrSymbol
                  ).returns(T.attached_class)
                end
                def self.new(reply: nil, type: nil)
                end

                sig do
                  override.returns(
                    {
                      reply:
                        Telnyx::Models::MesssageWhatsappResponse::Data::Body::Interactive::Action::Button::Reply,
                      type:
                        Telnyx::Models::MesssageWhatsappResponse::Data::Body::Interactive::Action::Button::Type::TaggedSymbol
                    }
                  )
                end
                def to_hash
                end

                class Reply < Telnyx::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        Telnyx::Models::MesssageWhatsappResponse::Data::Body::Interactive::Action::Button::Reply,
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
                        Telnyx::Models::MesssageWhatsappResponse::Data::Body::Interactive::Action::Button::Type
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  REPLY =
                    T.let(
                      :reply,
                      Telnyx::Models::MesssageWhatsappResponse::Data::Body::Interactive::Action::Button::Type::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        Telnyx::Models::MesssageWhatsappResponse::Data::Body::Interactive::Action::Button::Type::TaggedSymbol
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
                      Telnyx::Models::MesssageWhatsappResponse::Data::Body::Interactive::Action::Card,
                      Telnyx::Internal::AnyHash
                    )
                  end

                sig do
                  returns(
                    T.nilable(
                      Telnyx::Models::MesssageWhatsappResponse::Data::Body::Interactive::Action::Card::Action
                    )
                  )
                end
                attr_reader :action

                sig do
                  params(
                    action:
                      Telnyx::Models::MesssageWhatsappResponse::Data::Body::Interactive::Action::Card::Action::OrHash
                  ).void
                end
                attr_writer :action

                sig do
                  returns(
                    T.nilable(
                      Telnyx::Models::MesssageWhatsappResponse::Data::Body::Interactive::Action::Card::Body
                    )
                  )
                end
                attr_reader :body

                sig do
                  params(
                    body:
                      Telnyx::Models::MesssageWhatsappResponse::Data::Body::Interactive::Action::Card::Body::OrHash
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
                      Telnyx::Models::MesssageWhatsappResponse::Data::Body::Interactive::Action::Card::Header
                    )
                  )
                end
                attr_reader :header

                sig do
                  params(
                    header:
                      Telnyx::Models::MesssageWhatsappResponse::Data::Body::Interactive::Action::Card::Header::OrHash
                  ).void
                end
                attr_writer :header

                sig do
                  returns(
                    T.nilable(
                      Telnyx::Models::MesssageWhatsappResponse::Data::Body::Interactive::Action::Card::Type::TaggedSymbol
                    )
                  )
                end
                attr_reader :type

                sig do
                  params(
                    type:
                      Telnyx::Models::MesssageWhatsappResponse::Data::Body::Interactive::Action::Card::Type::OrSymbol
                  ).void
                end
                attr_writer :type

                sig do
                  params(
                    action:
                      Telnyx::Models::MesssageWhatsappResponse::Data::Body::Interactive::Action::Card::Action::OrHash,
                    body:
                      Telnyx::Models::MesssageWhatsappResponse::Data::Body::Interactive::Action::Card::Body::OrHash,
                    card_index: Integer,
                    header:
                      Telnyx::Models::MesssageWhatsappResponse::Data::Body::Interactive::Action::Card::Header::OrHash,
                    type:
                      Telnyx::Models::MesssageWhatsappResponse::Data::Body::Interactive::Action::Card::Type::OrSymbol
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
                        Telnyx::Models::MesssageWhatsappResponse::Data::Body::Interactive::Action::Card::Action,
                      body:
                        Telnyx::Models::MesssageWhatsappResponse::Data::Body::Interactive::Action::Card::Body,
                      card_index: Integer,
                      header:
                        Telnyx::Models::MesssageWhatsappResponse::Data::Body::Interactive::Action::Card::Header,
                      type:
                        Telnyx::Models::MesssageWhatsappResponse::Data::Body::Interactive::Action::Card::Type::TaggedSymbol
                    }
                  )
                end
                def to_hash
                end

                class Action < Telnyx::Internal::Type::BaseModel
                  OrHash =
                    T.type_alias do
                      T.any(
                        Telnyx::Models::MesssageWhatsappResponse::Data::Body::Interactive::Action::Card::Action,
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
                        Telnyx::Models::MesssageWhatsappResponse::Data::Body::Interactive::Action::Card::Body,
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
                        Telnyx::Models::MesssageWhatsappResponse::Data::Body::Interactive::Action::Card::Header,
                        Telnyx::Internal::AnyHash
                      )
                    end

                  sig do
                    returns(
                      T.nilable(
                        Telnyx::Models::MesssageWhatsappResponse::Data::Body::Interactive::Action::Card::Header::Image
                      )
                    )
                  end
                  attr_reader :image

                  sig do
                    params(
                      image:
                        Telnyx::Models::MesssageWhatsappResponse::Data::Body::Interactive::Action::Card::Header::Image::OrHash
                    ).void
                  end
                  attr_writer :image

                  sig do
                    returns(
                      T.nilable(
                        Telnyx::Models::MesssageWhatsappResponse::Data::Body::Interactive::Action::Card::Header::Type::TaggedSymbol
                      )
                    )
                  end
                  attr_reader :type

                  sig do
                    params(
                      type:
                        Telnyx::Models::MesssageWhatsappResponse::Data::Body::Interactive::Action::Card::Header::Type::OrSymbol
                    ).void
                  end
                  attr_writer :type

                  sig do
                    returns(
                      T.nilable(
                        Telnyx::Models::MesssageWhatsappResponse::Data::Body::Interactive::Action::Card::Header::Video
                      )
                    )
                  end
                  attr_reader :video

                  sig do
                    params(
                      video:
                        Telnyx::Models::MesssageWhatsappResponse::Data::Body::Interactive::Action::Card::Header::Video::OrHash
                    ).void
                  end
                  attr_writer :video

                  sig do
                    params(
                      image:
                        Telnyx::Models::MesssageWhatsappResponse::Data::Body::Interactive::Action::Card::Header::Image::OrHash,
                      type:
                        Telnyx::Models::MesssageWhatsappResponse::Data::Body::Interactive::Action::Card::Header::Type::OrSymbol,
                      video:
                        Telnyx::Models::MesssageWhatsappResponse::Data::Body::Interactive::Action::Card::Header::Video::OrHash
                    ).returns(T.attached_class)
                  end
                  def self.new(image: nil, type: nil, video: nil)
                  end

                  sig do
                    override.returns(
                      {
                        image:
                          Telnyx::Models::MesssageWhatsappResponse::Data::Body::Interactive::Action::Card::Header::Image,
                        type:
                          Telnyx::Models::MesssageWhatsappResponse::Data::Body::Interactive::Action::Card::Header::Type::TaggedSymbol,
                        video:
                          Telnyx::Models::MesssageWhatsappResponse::Data::Body::Interactive::Action::Card::Header::Video
                      }
                    )
                  end
                  def to_hash
                  end

                  class Image < Telnyx::Internal::Type::BaseModel
                    OrHash =
                      T.type_alias do
                        T.any(
                          Telnyx::Models::MesssageWhatsappResponse::Data::Body::Interactive::Action::Card::Header::Image,
                          Telnyx::Internal::AnyHash
                        )
                      end

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
                        {
                          caption: String,
                          filename: String,
                          link: String,
                          voice: T::Boolean
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
                          Telnyx::Models::MesssageWhatsappResponse::Data::Body::Interactive::Action::Card::Header::Type
                        )
                      end
                    OrSymbol = T.type_alias { T.any(Symbol, String) }

                    IMAGE =
                      T.let(
                        :image,
                        Telnyx::Models::MesssageWhatsappResponse::Data::Body::Interactive::Action::Card::Header::Type::TaggedSymbol
                      )
                    VIDEO =
                      T.let(
                        :video,
                        Telnyx::Models::MesssageWhatsappResponse::Data::Body::Interactive::Action::Card::Header::Type::TaggedSymbol
                      )

                    sig do
                      override.returns(
                        T::Array[
                          Telnyx::Models::MesssageWhatsappResponse::Data::Body::Interactive::Action::Card::Header::Type::TaggedSymbol
                        ]
                      )
                    end
                    def self.values
                    end
                  end

                  class Video < Telnyx::Internal::Type::BaseModel
                    OrHash =
                      T.type_alias do
                        T.any(
                          Telnyx::Models::MesssageWhatsappResponse::Data::Body::Interactive::Action::Card::Header::Video,
                          Telnyx::Internal::AnyHash
                        )
                      end

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
                        {
                          caption: String,
                          filename: String,
                          link: String,
                          voice: T::Boolean
                        }
                      )
                    end
                    def to_hash
                    end
                  end
                end

                module Type
                  extend Telnyx::Internal::Type::Enum

                  TaggedSymbol =
                    T.type_alias do
                      T.all(
                        Symbol,
                        Telnyx::Models::MesssageWhatsappResponse::Data::Body::Interactive::Action::Card::Type
                      )
                    end
                  OrSymbol = T.type_alias { T.any(Symbol, String) }

                  CTA_URL =
                    T.let(
                      :cta_url,
                      Telnyx::Models::MesssageWhatsappResponse::Data::Body::Interactive::Action::Card::Type::TaggedSymbol
                    )

                  sig do
                    override.returns(
                      T::Array[
                        Telnyx::Models::MesssageWhatsappResponse::Data::Body::Interactive::Action::Card::Type::TaggedSymbol
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
                      Telnyx::Models::MesssageWhatsappResponse::Data::Body::Interactive::Action::Parameters,
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
                      Telnyx::Models::MesssageWhatsappResponse::Data::Body::Interactive::Action::Section,
                      Telnyx::Internal::AnyHash
                    )
                  end

                sig do
                  returns(
                    T.nilable(
                      T::Array[
                        Telnyx::Models::MesssageWhatsappResponse::Data::Body::Interactive::Action::Section::ProductItem
                      ]
                    )
                  )
                end
                attr_reader :product_items

                sig do
                  params(
                    product_items:
                      T::Array[
                        Telnyx::Models::MesssageWhatsappResponse::Data::Body::Interactive::Action::Section::ProductItem::OrHash
                      ]
                  ).void
                end
                attr_writer :product_items

                sig do
                  returns(
                    T.nilable(
                      T::Array[
                        Telnyx::Models::MesssageWhatsappResponse::Data::Body::Interactive::Action::Section::Row
                      ]
                    )
                  )
                end
                attr_reader :rows

                sig do
                  params(
                    rows:
                      T::Array[
                        Telnyx::Models::MesssageWhatsappResponse::Data::Body::Interactive::Action::Section::Row::OrHash
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
                        Telnyx::Models::MesssageWhatsappResponse::Data::Body::Interactive::Action::Section::ProductItem::OrHash
                      ],
                    rows:
                      T::Array[
                        Telnyx::Models::MesssageWhatsappResponse::Data::Body::Interactive::Action::Section::Row::OrHash
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
                          Telnyx::Models::MesssageWhatsappResponse::Data::Body::Interactive::Action::Section::ProductItem
                        ],
                      rows:
                        T::Array[
                          Telnyx::Models::MesssageWhatsappResponse::Data::Body::Interactive::Action::Section::Row
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
                        Telnyx::Models::MesssageWhatsappResponse::Data::Body::Interactive::Action::Section::ProductItem,
                        Telnyx::Internal::AnyHash
                      )
                    end

                  sig { returns(T.nilable(String)) }
                  attr_reader :product_retailer_id

                  sig { params(product_retailer_id: String).void }
                  attr_writer :product_retailer_id

                  sig do
                    params(product_retailer_id: String).returns(
                      T.attached_class
                    )
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
                        Telnyx::Models::MesssageWhatsappResponse::Data::Body::Interactive::Action::Section::Row,
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
                    Telnyx::Models::MesssageWhatsappResponse::Data::Body::Interactive::Body,
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
                    Telnyx::Models::MesssageWhatsappResponse::Data::Body::Interactive::Footer,
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
                    Telnyx::Models::MesssageWhatsappResponse::Data::Body::Interactive::Header,
                    Telnyx::Internal::AnyHash
                  )
                end

              sig do
                returns(
                  T.nilable(
                    Telnyx::Models::MesssageWhatsappResponse::Data::Body::Interactive::Header::Document
                  )
                )
              end
              attr_reader :document

              sig do
                params(
                  document:
                    Telnyx::Models::MesssageWhatsappResponse::Data::Body::Interactive::Header::Document::OrHash
                ).void
              end
              attr_writer :document

              sig do
                returns(
                  T.nilable(
                    Telnyx::Models::MesssageWhatsappResponse::Data::Body::Interactive::Header::Image
                  )
                )
              end
              attr_reader :image

              sig do
                params(
                  image:
                    Telnyx::Models::MesssageWhatsappResponse::Data::Body::Interactive::Header::Image::OrHash
                ).void
              end
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

              sig do
                returns(
                  T.nilable(
                    Telnyx::Models::MesssageWhatsappResponse::Data::Body::Interactive::Header::Video
                  )
                )
              end
              attr_reader :video

              sig do
                params(
                  video:
                    Telnyx::Models::MesssageWhatsappResponse::Data::Body::Interactive::Header::Video::OrHash
                ).void
              end
              attr_writer :video

              sig do
                params(
                  document:
                    Telnyx::Models::MesssageWhatsappResponse::Data::Body::Interactive::Header::Document::OrHash,
                  image:
                    Telnyx::Models::MesssageWhatsappResponse::Data::Body::Interactive::Header::Image::OrHash,
                  sub_text: String,
                  text: String,
                  video:
                    Telnyx::Models::MesssageWhatsappResponse::Data::Body::Interactive::Header::Video::OrHash
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
                    document:
                      Telnyx::Models::MesssageWhatsappResponse::Data::Body::Interactive::Header::Document,
                    image:
                      Telnyx::Models::MesssageWhatsappResponse::Data::Body::Interactive::Header::Image,
                    sub_text: String,
                    text: String,
                    video:
                      Telnyx::Models::MesssageWhatsappResponse::Data::Body::Interactive::Header::Video
                  }
                )
              end
              def to_hash
              end

              class Document < Telnyx::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Telnyx::Models::MesssageWhatsappResponse::Data::Body::Interactive::Header::Document,
                      Telnyx::Internal::AnyHash
                    )
                  end

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
                    {
                      caption: String,
                      filename: String,
                      link: String,
                      voice: T::Boolean
                    }
                  )
                end
                def to_hash
                end
              end

              class Image < Telnyx::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Telnyx::Models::MesssageWhatsappResponse::Data::Body::Interactive::Header::Image,
                      Telnyx::Internal::AnyHash
                    )
                  end

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
                    {
                      caption: String,
                      filename: String,
                      link: String,
                      voice: T::Boolean
                    }
                  )
                end
                def to_hash
                end
              end

              class Video < Telnyx::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Telnyx::Models::MesssageWhatsappResponse::Data::Body::Interactive::Header::Video,
                      Telnyx::Internal::AnyHash
                    )
                  end

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
                    {
                      caption: String,
                      filename: String,
                      link: String,
                      voice: T::Boolean
                    }
                  )
                end
                def to_hash
                end
              end
            end

            module Type
              extend Telnyx::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Telnyx::Models::MesssageWhatsappResponse::Data::Body::Interactive::Type
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              CTA_URL =
                T.let(
                  :cta_url,
                  Telnyx::Models::MesssageWhatsappResponse::Data::Body::Interactive::Type::TaggedSymbol
                )
              LIST =
                T.let(
                  :list,
                  Telnyx::Models::MesssageWhatsappResponse::Data::Body::Interactive::Type::TaggedSymbol
                )
              CAROUSEL =
                T.let(
                  :carousel,
                  Telnyx::Models::MesssageWhatsappResponse::Data::Body::Interactive::Type::TaggedSymbol
                )
              BUTTON =
                T.let(
                  :button,
                  Telnyx::Models::MesssageWhatsappResponse::Data::Body::Interactive::Type::TaggedSymbol
                )
              LOCATION_REQUEST_MESSAGE =
                T.let(
                  :location_request_message,
                  Telnyx::Models::MesssageWhatsappResponse::Data::Body::Interactive::Type::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::Models::MesssageWhatsappResponse::Data::Body::Interactive::Type::TaggedSymbol
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
                  Telnyx::Models::MesssageWhatsappResponse::Data::Body::Location,
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
                  Telnyx::Models::MesssageWhatsappResponse::Data::Body::Reaction,
                  Telnyx::Internal::AnyHash
                )
              end

            sig { returns(T.nilable(String)) }
            attr_reader :empji

            sig { params(empji: String).void }
            attr_writer :empji

            sig { returns(T.nilable(String)) }
            attr_reader :message_id

            sig { params(message_id: String).void }
            attr_writer :message_id

            sig do
              params(empji: String, message_id: String).returns(
                T.attached_class
              )
            end
            def self.new(empji: nil, message_id: nil)
            end

            sig { override.returns({ empji: String, message_id: String }) }
            def to_hash
            end
          end

          class Sticker < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Models::MesssageWhatsappResponse::Data::Body::Sticker,
                  Telnyx::Internal::AnyHash
                )
              end

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
                {
                  caption: String,
                  filename: String,
                  link: String,
                  voice: T::Boolean
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
                  Telnyx::Models::MesssageWhatsappResponse::Data::Body::Type
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            AUDIO =
              T.let(
                :audio,
                Telnyx::Models::MesssageWhatsappResponse::Data::Body::Type::TaggedSymbol
              )
            DOCUMENT =
              T.let(
                :document,
                Telnyx::Models::MesssageWhatsappResponse::Data::Body::Type::TaggedSymbol
              )
            IMAGE =
              T.let(
                :image,
                Telnyx::Models::MesssageWhatsappResponse::Data::Body::Type::TaggedSymbol
              )
            STICKER =
              T.let(
                :sticker,
                Telnyx::Models::MesssageWhatsappResponse::Data::Body::Type::TaggedSymbol
              )
            VIDEO =
              T.let(
                :video,
                Telnyx::Models::MesssageWhatsappResponse::Data::Body::Type::TaggedSymbol
              )
            INTERACTIVE =
              T.let(
                :interactive,
                Telnyx::Models::MesssageWhatsappResponse::Data::Body::Type::TaggedSymbol
              )
            LOCATION =
              T.let(
                :location,
                Telnyx::Models::MesssageWhatsappResponse::Data::Body::Type::TaggedSymbol
              )
            TEMPLATE =
              T.let(
                :template,
                Telnyx::Models::MesssageWhatsappResponse::Data::Body::Type::TaggedSymbol
              )
            REACTION =
              T.let(
                :reaction,
                Telnyx::Models::MesssageWhatsappResponse::Data::Body::Type::TaggedSymbol
              )
            CONTACTS =
              T.let(
                :contacts,
                Telnyx::Models::MesssageWhatsappResponse::Data::Body::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Models::MesssageWhatsappResponse::Data::Body::Type::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          class Video < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Models::MesssageWhatsappResponse::Data::Body::Video,
                  Telnyx::Internal::AnyHash
                )
              end

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
                {
                  caption: String,
                  filename: String,
                  link: String,
                  voice: T::Boolean
                }
              )
            end
            def to_hash
            end
          end
        end

        class From < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::MesssageWhatsappResponse::Data::From,
                Telnyx::Internal::AnyHash
              )
            end

          # The carrier of the sender.
          sig { returns(T.nilable(String)) }
          attr_reader :carrier

          sig { params(carrier: String).void }
          attr_writer :carrier

          # The line-type of the sender.
          sig do
            returns(
              T.nilable(
                Telnyx::Models::MesssageWhatsappResponse::Data::From::LineType::TaggedSymbol
              )
            )
          end
          attr_reader :line_type

          sig do
            params(
              line_type:
                Telnyx::Models::MesssageWhatsappResponse::Data::From::LineType::OrSymbol
            ).void
          end
          attr_writer :line_type

          # Sending address (+E.164 formatted phone number, alphanumeric sender ID, or short
          # code).
          sig { returns(T.nilable(String)) }
          attr_reader :phone_number

          sig { params(phone_number: String).void }
          attr_writer :phone_number

          sig do
            returns(
              T.nilable(
                Telnyx::Models::MesssageWhatsappResponse::Data::From::Status::TaggedSymbol
              )
            )
          end
          attr_reader :status

          sig do
            params(
              status:
                Telnyx::Models::MesssageWhatsappResponse::Data::From::Status::OrSymbol
            ).void
          end
          attr_writer :status

          sig do
            params(
              carrier: String,
              line_type:
                Telnyx::Models::MesssageWhatsappResponse::Data::From::LineType::OrSymbol,
              phone_number: String,
              status:
                Telnyx::Models::MesssageWhatsappResponse::Data::From::Status::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            # The carrier of the sender.
            carrier: nil,
            # The line-type of the sender.
            line_type: nil,
            # Sending address (+E.164 formatted phone number, alphanumeric sender ID, or short
            # code).
            phone_number: nil,
            status: nil
          )
          end

          sig do
            override.returns(
              {
                carrier: String,
                line_type:
                  Telnyx::Models::MesssageWhatsappResponse::Data::From::LineType::TaggedSymbol,
                phone_number: String,
                status:
                  Telnyx::Models::MesssageWhatsappResponse::Data::From::Status::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          # The line-type of the sender.
          module LineType
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::Models::MesssageWhatsappResponse::Data::From::LineType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            WIRELINE =
              T.let(
                :Wireline,
                Telnyx::Models::MesssageWhatsappResponse::Data::From::LineType::TaggedSymbol
              )
            WIRELESS =
              T.let(
                :Wireless,
                Telnyx::Models::MesssageWhatsappResponse::Data::From::LineType::TaggedSymbol
              )
            VO_WI_FI =
              T.let(
                :VoWiFi,
                Telnyx::Models::MesssageWhatsappResponse::Data::From::LineType::TaggedSymbol
              )
            VO_IP =
              T.let(
                :VoIP,
                Telnyx::Models::MesssageWhatsappResponse::Data::From::LineType::TaggedSymbol
              )
            PRE_PAID_WIRELESS =
              T.let(
                :"Pre-Paid Wireless",
                Telnyx::Models::MesssageWhatsappResponse::Data::From::LineType::TaggedSymbol
              )
            EMPTY =
              T.let(
                :"",
                Telnyx::Models::MesssageWhatsappResponse::Data::From::LineType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Models::MesssageWhatsappResponse::Data::From::LineType::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          module Status
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::Models::MesssageWhatsappResponse::Data::From::Status
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            RECEIVED =
              T.let(
                :received,
                Telnyx::Models::MesssageWhatsappResponse::Data::From::Status::TaggedSymbol
              )
            DELIVERED =
              T.let(
                :delivered,
                Telnyx::Models::MesssageWhatsappResponse::Data::From::Status::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Models::MesssageWhatsappResponse::Data::From::Status::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class To < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::MesssageWhatsappResponse::Data::To,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(String)) }
          attr_reader :carrier

          sig { params(carrier: String).void }
          attr_writer :carrier

          sig { returns(T.nilable(String)) }
          attr_reader :line_type

          sig { params(line_type: String).void }
          attr_writer :line_type

          sig { returns(T.nilable(String)) }
          attr_reader :phone_number

          sig { params(phone_number: String).void }
          attr_writer :phone_number

          sig { returns(T.nilable(String)) }
          attr_reader :status

          sig { params(status: String).void }
          attr_writer :status

          sig do
            params(
              carrier: String,
              line_type: String,
              phone_number: String,
              status: String
            ).returns(T.attached_class)
          end
          def self.new(
            carrier: nil,
            line_type: nil,
            phone_number: nil,
            status: nil
          )
          end

          sig do
            override.returns(
              {
                carrier: String,
                line_type: String,
                phone_number: String,
                status: String
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
