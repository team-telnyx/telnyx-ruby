# frozen_string_literal: true

require_relative "../../../../test_helper"

class Telnyx::Test::Resources::Legacy::Reporting::UsageReports::NumberLookupTest < Telnyx::Test::ResourceTest
  def test_create
    skip("Prism tests are disabled")

    response = @telnyx.legacy.reporting.usage_reports.number_lookup.create

    assert_pattern do
      response => nil
    end
  end

  def test_retrieve
    skip("Prism tests are disabled")

    response = @telnyx.legacy.reporting.usage_reports.number_lookup.retrieve("id")

    assert_pattern do
      response => nil
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @telnyx.legacy.reporting.usage_reports.number_lookup.list

    assert_pattern do
      response => nil
    end
  end

  def test_delete
    skip("Prism tests are disabled")

    response = @telnyx.legacy.reporting.usage_reports.number_lookup.delete("id")

    assert_pattern do
      response => nil
    end
  end
end
