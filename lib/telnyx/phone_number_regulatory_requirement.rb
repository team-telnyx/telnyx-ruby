# frozen_string_literal: true

module Telnyx
  class PhoneNumberRegulatoryRequirement < APIResource
    extend APIOperations::List

    OBJECT_NAME = "phone_number_regulatory_requirement".freeze
    RESOURCE_PATH = "phone_numbers_regulatory_requirements".freeze
  end
end
