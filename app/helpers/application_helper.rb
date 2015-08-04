module ApplicationHelper
  # Returns the full title on a per-page basis
  def full_title(page_title)
    base_title = "Frontier"
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end #full_title

  def link_to_add_fields(name, f, association)
    new_object = f.object.send(association).klass.new
    id = new_object.object_id
    fields = f.fields_for(association, new_object, child_index: id) do |builder|
      render(association.to_s.singularize + "_fields", f: builder)
    end
    link_to(name, '#', class: "add_fields", data: {id: id, fields: fields.gsub("\n", "")})
  end

  # def user_count()
  #   if user_signed_in?
  #     return text + " #{}"
  #   else
  #     return text
  # end
  def collection_count
    unless current_user.blank?
      return current_user.collections.count
    else
      return 0
    end
  end 

  def format_date(date)
    if date == Date.today.strftime('%B %d %A')
      return "Today's Picks"
    elsif date == Date.yesterday.strftime('%B %d %A')
      return "Yesterday"
    else
      return date.rpartition(' ').last
    end
  end

  def signed_in_user
    unless signed_in?
      redirect_to new_user_session_path
    end
  end

end

