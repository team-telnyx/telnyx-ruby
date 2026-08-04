# typed: strong

module Telnyx
  module Models
    class EmailTemplateRenderResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::EmailTemplateRenderResponse,
            Telnyx::Internal::AnyHash
          )
        end

      # Template object with `subject`, `html_body`, and `text_body` replaced by their
      # Liquid-rendered values. All other template fields (id, name, variables, etc.)
      # remain unchanged.
      sig { returns(Telnyx::Models::EmailTemplateRenderResponse::Data) }
      attr_reader :data

      sig do
        params(
          data: Telnyx::Models::EmailTemplateRenderResponse::Data::OrHash
        ).void
      end
      attr_writer :data

      sig do
        params(
          data: Telnyx::Models::EmailTemplateRenderResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Template object with `subject`, `html_body`, and `text_body` replaced by their
        # Liquid-rendered values. All other template fields (id, name, variables, etc.)
        # remain unchanged.
        data:
      )
      end

      sig do
        override.returns(
          { data: Telnyx::Models::EmailTemplateRenderResponse::Data }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Models::EmailTemplate
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::EmailTemplateRenderResponse::Data,
              Telnyx::Internal::AnyHash
            )
          end

        # Template object with `subject`, `html_body`, and `text_body` replaced by their
        # Liquid-rendered values. All other template fields (id, name, variables, etc.)
        # remain unchanged.
        sig { returns(T.attached_class) }
        def self.new
        end

        sig { override.returns({}) }
        def to_hash
        end
      end
    end
  end
end
