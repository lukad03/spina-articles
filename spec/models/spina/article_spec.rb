require "rails_helper"

describe Spina::Articles::Article do
  it { should belong_to :photo }
  it { should validate_presence_of :author }
  it { should validate_presence_of :body }
  it { should validate_presence_of :publish_date }
end