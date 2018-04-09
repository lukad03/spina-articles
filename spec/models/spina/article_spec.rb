require "rails_helper"

describe Spina::Articles::Article do
  it { should belong_to :photo }
end