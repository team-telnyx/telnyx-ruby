# typed: strong

module Telnyx
  module Models
    module Whatsapp
      class MessageTemplateListParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Whatsapp::MessageTemplateListParams,
              Telnyx::Internal::AnyHash
            )
          end

        # Filter by category
        sig do
          returns(
            T.nilable(
              Telnyx::Whatsapp::MessageTemplateListParams::FilterCategory::OrSymbol
            )
          )
        end
        attr_reader :filter_category

        sig do
          params(
            filter_category:
              Telnyx::Whatsapp::MessageTemplateListParams::FilterCategory::OrSymbol
          ).void
        end
        attr_writer :filter_category

        # Search templates by name
        sig { returns(T.nilable(String)) }
        attr_reader :filter_search

        sig { params(filter_search: String).void }
        attr_writer :filter_search

        # Filter by template status
        sig { returns(T.nilable(String)) }
        attr_reader :filter_status

        sig { params(filter_status: String).void }
        attr_writer :filter_status

        # Filter by WABA ID
        sig { returns(T.nilable(String)) }
        attr_reader :filter_waba_id

        sig { params(filter_waba_id: String).void }
        attr_writer :filter_waba_id

        sig { returns(T.nilable(Integer)) }
        attr_reader :page_number

        sig { params(page_number: Integer).void }
        attr_writer :page_number

        sig { returns(T.nilable(Integer)) }
        attr_reader :page_size

        sig { params(page_size: Integer).void }
        attr_writer :page_size

        sig do
          params(
            filter_category:
              Telnyx::Whatsapp::MessageTemplateListParams::FilterCategory::OrSymbol,
            filter_search: String,
            filter_status: String,
            filter_waba_id: String,
            page_number: Integer,
            page_size: Integer,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Filter by category
          filter_category: nil,
          # Search templates by name
          filter_search: nil,
          # Filter by template status
          filter_status: nil,
          # Filter by WABA ID
          filter_waba_id: nil,
          page_number: nil,
          page_size: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              filter_category:
                Telnyx::Whatsapp::MessageTemplateListParams::FilterCategory::OrSymbol,
              filter_search: String,
              filter_status: String,
              filter_waba_id: String,
              page_number: Integer,
              page_size: Integer,
              request_options: Telnyx::RequestOptions
            }
          )
        end
        def to_hash
        end

        # Filter by category
        module FilterCategory
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Whatsapp::MessageTemplateListParams::FilterCategory
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          MARKETING =
            T.let(
              :MARKETING,
              Telnyx::Whatsapp::MessageTemplateListParams::FilterCategory::TaggedSymbol
            )
          UTILITY =
            T.let(
              :UTILITY,
              Telnyx::Whatsapp::MessageTemplateListParams::FilterCategory::TaggedSymbol
            )
          AUTHENTICATION =
            T.let(
              :AUTHENTICATION,
              Telnyx::Whatsapp::MessageTemplateListParams::FilterCategory::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Whatsapp::MessageTemplateListParams::FilterCategory::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
