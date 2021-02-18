# typed: true
class Book < ApplicationRecord
  extend T::Sig

  sig { returns(String) }
  def title_with_publish_date
    "#{publish_date.strftime('%Y/%-m/%-d')} #{title}"
  end
end
