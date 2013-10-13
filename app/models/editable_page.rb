class EditablePage < ActiveRecord::Base
  attr_accessible :content, :navbar_index, :navbar_title, :window_title
end
