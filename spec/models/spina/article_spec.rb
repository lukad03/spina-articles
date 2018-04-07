require "rails_helper"

describe Spina::Article do
  it { should belong_to :photo }
end