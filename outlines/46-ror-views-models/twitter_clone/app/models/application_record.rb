class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def created_at_formatted
    self.created_at.strftime('%m/%d/%Y')
  end

  def updated_at_formatted
    self.updated_at.strftime('%m/%d/%Y')
  end
end
