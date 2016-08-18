class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end

  def change_status
    self.active = !self.active
    self.save
  end

  def activate
    if self.active
      "This student is currently active."
    else
      "This student is currently inactive."
    end
  end

end
