# typed: strong

module Telnyx
  module Models
    module SessionAnalysis
      class MetadataFieldMapping < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::SessionAnalysis::MetadataFieldMapping,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :local_field

        sig { returns(String) }
        attr_accessor :parent_field

        sig do
          params(local_field: String, parent_field: String).returns(
            T.attached_class
          )
        end
        def self.new(local_field:, parent_field:)
        end

        sig { override.returns({ local_field: String, parent_field: String }) }
        def to_hash
        end
      end
    end
  end
end
