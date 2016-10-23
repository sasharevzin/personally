class User < ActiveRecord::Base
  SKILLS = ['MySQL', 'Ruby on Rails', 'HTML', 'CSS']
  TEMPLATES = {
    1 => 'Templlate with left side',
    2 => 'template2',
    3 => 'template3'
  }

  serialize :skills

  has_secure_password

  has_attached_file :photo

  do_not_validate_attachment_file_type :photo

  def full_name
    "#{first_name} #{last_name}"
  end
end
