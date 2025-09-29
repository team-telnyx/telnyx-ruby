# typed: strong

module Telnyx
  module Resources
    class Actions
      class Purchase
        # Purchases and registers the specified amount of eSIMs to the current user's
        # account.<br/><br/> If <code>sim_card_group_id</code> is provided, the eSIMs will
        # be associated with that group. Otherwise, the default group for the current user
        # will be used.<br/><br/>
        sig do
          params(
            amount: Integer,
            product: String,
            sim_card_group_id: String,
            status: Telnyx::Actions::PurchaseCreateParams::Status::OrSymbol,
            tags: T::Array[String],
            whitelabel_name: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::Actions::PurchaseCreateResponse)
        end
        def create(
          # The amount of eSIMs to be purchased.
          amount:,
          # Type of product to be purchased, specify "whitelabel" to use a custom SPN
          product: nil,
          # The group SIMCardGroup identification. This attribute can be <code>null</code>
          # when it's present in an associated resource.
          sim_card_group_id: nil,
          # Status on which the SIM cards will be set after being successfully registered.
          status: nil,
          # Searchable tags associated with the SIM cards
          tags: nil,
          # Service Provider Name (SPN) for the Whitelabel eSIM product. It will be
          # displayed as the mobile service name by operating systems of smartphones. This
          # parameter must only contain letters, numbers and whitespaces.
          whitelabel_name: nil,
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
