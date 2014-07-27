module MakeFlaggable
  class Flagging < ActiveRecord::Base
    belongs_to :flaggable, :polymorphic => true, counter_cache: true
    belongs_to :flagger, :polymorphic => true, counter_cache: true
    scope :with_flag, lambda { |flag| where(:flag => flag.to_s) }
    scope :with_flags, lambda { |*flags| where(:flag => flags.flatten.map(&:to_s)) }
    scope :with_flaggable, lambda { |flaggable| where(:flaggable_type => flaggable.class.name, :flaggable_id => flaggable.id) }
  end
end
