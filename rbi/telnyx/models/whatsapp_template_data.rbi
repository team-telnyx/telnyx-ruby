# typed: strong

module Telnyx
  module Models
    class WhatsappTemplateData < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::WhatsappTemplateData, Telnyx::Internal::AnyHash)
        end

      sig { returns(T.nilable(String)) }
      attr_reader :id

      sig { params(id: String).void }
      attr_writer :id

      sig do
        returns(T.nilable(Telnyx::WhatsappTemplateData::Category::TaggedSymbol))
      end
      attr_reader :category

      sig do
        params(category: Telnyx::WhatsappTemplateData::Category::OrSymbol).void
      end
      attr_writer :category

      # Template components (header, body, footer, buttons) as submitted, including
      # example values.
      sig { returns(T.nilable(T::Array[T::Hash[Symbol, T.anything]])) }
      attr_reader :components

      sig { params(components: T::Array[T::Hash[Symbol, T.anything]]).void }
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

      # Current template status from Meta (e.g. PENDING, APPROVED, REJECTED, PAUSED,
      # DISABLED). Additional statuses may be returned as Meta evolves the template
      # lifecycle.
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
          T.nilable(Telnyx::WhatsappTemplateData::WhatsappBusinessAccount)
        )
      end
      attr_reader :whatsapp_business_account

      sig do
        params(
          whatsapp_business_account:
            Telnyx::WhatsappTemplateData::WhatsappBusinessAccount::OrHash
        ).void
      end
      attr_writer :whatsapp_business_account

      sig do
        params(
          id: String,
          category: Telnyx::WhatsappTemplateData::Category::OrSymbol,
          components: T::Array[T::Hash[Symbol, T.anything]],
          created_at: Time,
          language: String,
          name: String,
          record_type: String,
          rejection_reason: String,
          status: String,
          template_id: String,
          updated_at: Time,
          whatsapp_business_account:
            Telnyx::WhatsappTemplateData::WhatsappBusinessAccount::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        id: nil,
        category: nil,
        # Template components (header, body, footer, buttons) as submitted, including
        # example values.
        components: nil,
        created_at: nil,
        language: nil,
        name: nil,
        record_type: nil,
        rejection_reason: nil,
        # Current template status from Meta (e.g. PENDING, APPROVED, REJECTED, PAUSED,
        # DISABLED). Additional statuses may be returned as Meta evolves the template
        # lifecycle.
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
            category: Telnyx::WhatsappTemplateData::Category::TaggedSymbol,
            components: T::Array[T::Hash[Symbol, T.anything]],
            created_at: Time,
            language: String,
            name: String,
            record_type: String,
            rejection_reason: String,
            status: String,
            template_id: String,
            updated_at: Time,
            whatsapp_business_account:
              Telnyx::WhatsappTemplateData::WhatsappBusinessAccount
          }
        )
      end
      def to_hash
      end

      module Category
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::WhatsappTemplateData::Category) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        MARKETING =
          T.let(
            :MARKETING,
            Telnyx::WhatsappTemplateData::Category::TaggedSymbol
          )
        UTILITY =
          T.let(:UTILITY, Telnyx::WhatsappTemplateData::Category::TaggedSymbol)
        AUTHENTICATION =
          T.let(
            :AUTHENTICATION,
            Telnyx::WhatsappTemplateData::Category::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::WhatsappTemplateData::Category::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      class WhatsappBusinessAccount < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::WhatsappTemplateData::WhatsappBusinessAccount,
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
