class Job < ActiveRecord::Base

  after_save :test_me

  validates :title, :presence => true

  Draft   = 1
  Posted  = 2
  Expired = 3

  state_machine :status, :initial => :draft do
    state :draft,   :value => Draft
    state :posted,  :value => Posted
    state :expired, :value => Expired

    event :post do
      transition :draft => :posted
    end

    event :expire do
      transition :posted => :expired
    end

    event :repost do
      transition :expired => :posted
    end
  end

  def test_me
    puts self.id
  end
end
