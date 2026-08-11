# typed: strong

module Telnyx
  module Models
    module Rcs
      class CapabilitiesResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::Rcs::CapabilitiesResponse, Telnyx::Internal::AnyHash)
          end

        sig { returns(T::Boolean) }
        attr_accessor :brand_entity

        sig { returns(T::Boolean) }
        attr_accessor :brand_verification

        sig { returns(T::Boolean) }
        attr_accessor :campaigns

        sig { returns(T::Boolean) }
        attr_accessor :distinct_launch_phase

        sig { returns(T::Boolean) }
        attr_accessor :invite_test_devices

        sig { returns(T::Boolean) }
        attr_accessor :per_carrier_approval

        sig { returns(T::Boolean) }
        attr_accessor :submission_sections

        sig { returns(T::Boolean) }
        attr_accessor :templates

        sig { returns(T::Boolean) }
        attr_accessor :vendor_webhooks

        sig do
          params(
            brand_entity: T::Boolean,
            brand_verification: T::Boolean,
            campaigns: T::Boolean,
            distinct_launch_phase: T::Boolean,
            invite_test_devices: T::Boolean,
            per_carrier_approval: T::Boolean,
            submission_sections: T::Boolean,
            templates: T::Boolean,
            vendor_webhooks: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(
          brand_entity:,
          brand_verification:,
          campaigns:,
          distinct_launch_phase:,
          invite_test_devices:,
          per_carrier_approval:,
          submission_sections:,
          templates:,
          vendor_webhooks:
        )
        end

        sig do
          override.returns(
            {
              brand_entity: T::Boolean,
              brand_verification: T::Boolean,
              campaigns: T::Boolean,
              distinct_launch_phase: T::Boolean,
              invite_test_devices: T::Boolean,
              per_carrier_approval: T::Boolean,
              submission_sections: T::Boolean,
              templates: T::Boolean,
              vendor_webhooks: T::Boolean
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
