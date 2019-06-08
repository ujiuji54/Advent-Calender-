class BlogSerializer < ActiveModel::Serializer
  attributes :title, :content, :date, :user

  def date
    object.start_time.strftime('%d')
  end

  def user
    { name: object.user.user_name }
  end
end
