# typed: strong

module Telnyx
  module Models
    module EmailInboxes
      module Messages
        class ActionForwardParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Telnyx::EmailInboxes::Messages::ActionForwardParams,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :inbox_id

          sig { returns(String) }
          attr_accessor :message_id

          # One recipient or a non-empty recipient array. Each recipient may be an email
          # string or an object with `email` and optional `name`.
          sig do
            returns(
              T.any(
                String,
                Telnyx::EmailInboxes::Messages::ActionForwardParams::To::UnionMember1,
                T::Array[
                  T.any(
                    String,
                    Telnyx::EmailInboxes::Messages::InboxActionEmailAddressInput::UnionMember1
                  )
                ]
              )
            )
          end
          attr_accessor :to

          # One recipient or a recipient array. Each recipient may be an email string or an
          # object with `email` and optional `name`.
          sig do
            returns(
              T.nilable(
                T.any(
                  String,
                  Telnyx::EmailInboxes::Messages::InboxActionRecipientInput::UnionMember1,
                  T::Array[
                    T.any(
                      String,
                      Telnyx::EmailInboxes::Messages::InboxActionEmailAddressInput::UnionMember1
                    )
                  ]
                )
              )
            )
          end
          attr_reader :bcc

          sig do
            params(
              bcc:
                T.any(
                  String,
                  Telnyx::EmailInboxes::Messages::InboxActionRecipientInput::UnionMember1::OrHash,
                  T::Array[
                    T.any(
                      String,
                      Telnyx::EmailInboxes::Messages::InboxActionEmailAddressInput::UnionMember1::OrHash
                    )
                  ]
                )
            ).void
          end
          attr_writer :bcc

          # One recipient or a recipient array. Each recipient may be an email string or an
          # object with `email` and optional `name`.
          sig do
            returns(
              T.nilable(
                T.any(
                  String,
                  Telnyx::EmailInboxes::Messages::InboxActionRecipientInput::UnionMember1,
                  T::Array[
                    T.any(
                      String,
                      Telnyx::EmailInboxes::Messages::InboxActionEmailAddressInput::UnionMember1
                    )
                  ]
                )
              )
            )
          end
          attr_reader :cc

          sig do
            params(
              cc:
                T.any(
                  String,
                  Telnyx::EmailInboxes::Messages::InboxActionRecipientInput::UnionMember1::OrHash,
                  T::Array[
                    T.any(
                      String,
                      Telnyx::EmailInboxes::Messages::InboxActionEmailAddressInput::UnionMember1::OrHash
                    )
                  ]
                )
            ).void
          end
          attr_writer :cc

          # Optional HTML note prepended to the generated forwarded-message block. Blank
          # values are treated as omitted.
          sig { returns(T.nilable(String)) }
          attr_reader :html

          sig { params(html: String).void }
          attr_writer :html

          # Optional plain-text note prepended to the generated forwarded-message block.
          # Blank values are treated as omitted.
          sig { returns(T.nilable(String)) }
          attr_reader :text

          sig { params(text: String).void }
          attr_writer :text

          sig do
            params(
              inbox_id: String,
              message_id: String,
              to:
                T.any(
                  String,
                  Telnyx::EmailInboxes::Messages::ActionForwardParams::To::UnionMember1::OrHash,
                  T::Array[
                    T.any(
                      String,
                      Telnyx::EmailInboxes::Messages::InboxActionEmailAddressInput::UnionMember1::OrHash
                    )
                  ]
                ),
              bcc:
                T.any(
                  String,
                  Telnyx::EmailInboxes::Messages::InboxActionRecipientInput::UnionMember1::OrHash,
                  T::Array[
                    T.any(
                      String,
                      Telnyx::EmailInboxes::Messages::InboxActionEmailAddressInput::UnionMember1::OrHash
                    )
                  ]
                ),
              cc:
                T.any(
                  String,
                  Telnyx::EmailInboxes::Messages::InboxActionRecipientInput::UnionMember1::OrHash,
                  T::Array[
                    T.any(
                      String,
                      Telnyx::EmailInboxes::Messages::InboxActionEmailAddressInput::UnionMember1::OrHash
                    )
                  ]
                ),
              html: String,
              text: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            inbox_id:,
            message_id:,
            # One recipient or a non-empty recipient array. Each recipient may be an email
            # string or an object with `email` and optional `name`.
            to:,
            # One recipient or a recipient array. Each recipient may be an email string or an
            # object with `email` and optional `name`.
            bcc: nil,
            # One recipient or a recipient array. Each recipient may be an email string or an
            # object with `email` and optional `name`.
            cc: nil,
            # Optional HTML note prepended to the generated forwarded-message block. Blank
            # values are treated as omitted.
            html: nil,
            # Optional plain-text note prepended to the generated forwarded-message block.
            # Blank values are treated as omitted.
            text: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                inbox_id: String,
                message_id: String,
                to:
                  T.any(
                    String,
                    Telnyx::EmailInboxes::Messages::ActionForwardParams::To::UnionMember1,
                    T::Array[
                      T.any(
                        String,
                        Telnyx::EmailInboxes::Messages::InboxActionEmailAddressInput::UnionMember1
                      )
                    ]
                  ),
                bcc:
                  T.any(
                    String,
                    Telnyx::EmailInboxes::Messages::InboxActionRecipientInput::UnionMember1,
                    T::Array[
                      T.any(
                        String,
                        Telnyx::EmailInboxes::Messages::InboxActionEmailAddressInput::UnionMember1
                      )
                    ]
                  ),
                cc:
                  T.any(
                    String,
                    Telnyx::EmailInboxes::Messages::InboxActionRecipientInput::UnionMember1,
                    T::Array[
                      T.any(
                        String,
                        Telnyx::EmailInboxes::Messages::InboxActionEmailAddressInput::UnionMember1
                      )
                    ]
                  ),
                html: String,
                text: String,
                request_options: Telnyx::RequestOptions
              }
            )
          end
          def to_hash
          end

          # One recipient or a non-empty recipient array. Each recipient may be an email
          # string or an object with `email` and optional `name`.
          module To
            extend Telnyx::Internal::Type::Union

            Variants =
              T.type_alias do
                T.any(
                  String,
                  Telnyx::EmailInboxes::Messages::ActionForwardParams::To::UnionMember1,
                  T::Array[
                    Telnyx::EmailInboxes::Messages::InboxActionEmailAddressInput::Variants
                  ]
                )
              end

            class UnionMember1 < Telnyx::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::EmailInboxes::Messages::ActionForwardParams::To::UnionMember1,
                    Telnyx::Internal::AnyHash
                  )
                end

              sig { returns(String) }
              attr_accessor :email

              sig { returns(T.nilable(String)) }
              attr_reader :name

              sig { params(name: String).void }
              attr_writer :name

              sig do
                params(email: String, name: String).returns(T.attached_class)
              end
              def self.new(email:, name: nil)
              end

              sig { override.returns({ email: String, name: String }) }
              def to_hash
              end
            end

            sig do
              override.returns(
                T::Array[
                  Telnyx::EmailInboxes::Messages::ActionForwardParams::To::Variants
                ]
              )
            end
            def self.variants
            end

            InboxActionEmailAddressInputArray =
              T.let(
                Telnyx::Internal::Type::ArrayOf[
                  union:
                    Telnyx::EmailInboxes::Messages::InboxActionEmailAddressInput
                ],
                Telnyx::Internal::Type::Converter
              )
          end
        end
      end
    end
  end
end
