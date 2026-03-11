# typed: strong

module Telnyx
  module Models
    module Whatsapp
      class MessageTemplateListResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::Whatsapp::MessageTemplateListResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        sig do
          returns(
            T.nilable(
              Telnyx::Models::Whatsapp::MessageTemplateListResponse::Category::TaggedSymbol
            )
          )
        end
        attr_reader :category

        sig do
          params(
            category:
              Telnyx::Models::Whatsapp::MessageTemplateListResponse::Category::OrSymbol
          ).void
        end
        attr_writer :category

        # Whatsapp template components (header, body, footer, buttons)
        sig { returns(T.nilable(T::Array[T.anything])) }
        attr_reader :components

        sig { params(components: T::Array[T.anything]).void }
        attr_writer :components

        sig { returns(T.nilable(Time)) }
        attr_reader :created_at

        sig { params(created_at: Time).void }
        attr_writer :created_at

        sig { returns(T.nilable(String)) }
        attr_reader :language

        sig { params(language: String).void }
        attr_writer :language

        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        sig { returns(T.nilable(String)) }
        attr_reader :record_type

        sig { params(record_type: String).void }
        attr_writer :record_type

        sig { returns(T.nilable(String)) }
        attr_reader :rejection_reason

        sig { params(rejection_reason: String).void }
        attr_writer :rejection_reason

        sig { returns(T.nilable(String)) }
        attr_reader :status

        sig { params(status: String).void }
        attr_writer :status

        sig { returns(T.nilable(String)) }
        attr_reader :template_id

        sig { params(template_id: String).void }
        attr_writer :template_id

        sig { returns(T.nilable(Time)) }
        attr_reader :updated_at

        sig { params(updated_at: Time).void }
        attr_writer :updated_at

        sig do
          returns(
            T.nilable(
              Telnyx::Models::Whatsapp::MessageTemplateListResponse::WhatsappBusinessAccount
            )
          )
        end
        attr_reader :whatsapp_business_account

        sig do
          params(
            whatsapp_business_account:
              Telnyx::Models::Whatsapp::MessageTemplateListResponse::WhatsappBusinessAccount::OrHash
          ).void
        end
        attr_writer :whatsapp_business_account

        sig do
          params(
            id: String,
            category:
              Telnyx::Models::Whatsapp::MessageTemplateListResponse::Category::OrSymbol,
            components: T::Array[T.anything],
            created_at: Time,
            language: String,
            name: String,
            record_type: String,
            rejection_reason: String,
            status: String,
            template_id: String,
            updated_at: Time,
            whatsapp_business_account:
              Telnyx::Models::Whatsapp::MessageTemplateListResponse::WhatsappBusinessAccount::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          id: nil,
          category: nil,
          # Whatsapp template components (header, body, footer, buttons)
          components: nil,
          created_at: nil,
          language: nil,
          name: nil,
          record_type: nil,
          rejection_reason: nil,
          status: nil,
          template_id: nil,
          updated_at: nil,
          whatsapp_business_account: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              category:
                Telnyx::Models::Whatsapp::MessageTemplateListResponse::Category::TaggedSymbol,
              components: T::Array[T.anything],
              created_at: Time,
              language: String,
              name: String,
              record_type: String,
              rejection_reason: String,
              status: String,
              template_id: String,
              updated_at: Time,
              whatsapp_business_account:
                Telnyx::Models::Whatsapp::MessageTemplateListResponse::WhatsappBusinessAccount
            }
          )
        end
        def to_hash
        end

        module Category
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Models::Whatsapp::MessageTemplateListResponse::Category
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          MARKETING =
            T.let(
              :MARKETING,
              Telnyx::Models::Whatsapp::MessageTemplateListResponse::Category::TaggedSymbol
            )
          UTILITY =
            T.let(
              :UTILITY,
              Telnyx::Models::Whatsapp::MessageTemplateListResponse::Category::TaggedSymbol
            )
          AUTHENTICATION =
            T.let(
              :AUTHENTICATION,
              Telnyx::Models::Whatsapp::MessageTemplateListResponse::Category::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Models::Whatsapp::MessageTemplateListResponse::Category::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class WhatsappBusinessAccount < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::Whatsapp::MessageTemplateListResponse::WhatsappBusinessAccount,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(String)) }
          attr_reader :id

          sig { params(id: String).void }
          attr_writer :id

          sig { params(id: String).returns(T.attached_class) }
          def self.new(id: nil)
          end

          sig { override.returns({ id: String }) }
          def to_hash
          end
        end
      end
    end
  end
end
