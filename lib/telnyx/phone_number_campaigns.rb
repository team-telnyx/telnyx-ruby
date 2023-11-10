# frozen_string_literal: true

module Telnyx
  class PhoneNumberCampaign < APIResource
    extend APIOperations::List
    extend APIOperations::Create
    include APIOperations::Delete
    include APIOperations::Save

    OBJECT_NAME = "10dlc/phoneNumberCampaign".freeze
  end
end
