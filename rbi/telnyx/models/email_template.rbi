# typed: strong

module Telnyx
  module Models
    class EmailTemplate < Telnyx::Models::EmailTemplateCommon
      OrHash =
        T.type_alias { T.any(Telnyx::EmailTemplate, Telnyx::Internal::AnyHash) }

      sig { returns(T.nilable(String)) }
      attr_accessor :subject

      sig { params(subject: T.nilable(String)).returns(T.attached_class) }
      def self.new(subject:)
      end

      sig { override.returns({ subject: T.nilable(String) }) }
      def to_hash
      end
    end
  end
end
