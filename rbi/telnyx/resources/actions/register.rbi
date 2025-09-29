# typed: strong

module Telnyx
  module Resources
    class Actions
      class Register
        # Register the SIM cards associated with the provided registration codes to the
        # current user's account.<br/><br/> If <code>sim_card_group_id</code> is provided,
        # the SIM cards will be associated with that group. Otherwise, the default group
        # for the current user will be used.<br/><br/>
        sig do
          params(
            registration_codes: T::Array[String],
            sim_card_group_id: String,
            status: Telnyx::Actions::RegisterCreateParams::Status::OrSymbol,
            tags: T::Array[String],
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::Actions::RegisterCreateResponse)
        end
        def create(
          registration_codes:,
          # The group SIMCardGroup identification. This attribute can be <code>null</code>
          # when it's present in an associated resource.
          sim_card_group_id: nil,
          # Status on which the SIM card will be set after being successful registered.
          status: nil,
          # Searchable tags associated with the SIM card
          tags: nil,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: Telnyx::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
