class Suggestion < ActiveRecord::Base
  validates :content, :presence => true, :length => {
    :minimum => 4,
    :maximum => 10,
    :tokenizer => lambda { |str| str.scan(/\w+/) },
    :too_long  => "Please limit your post to %{count} words"
  }
end
