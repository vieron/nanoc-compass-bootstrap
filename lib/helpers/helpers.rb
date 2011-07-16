def breadcrumbs(opts = {})
  opts = { :class => 'breadcrumbs', 
           :separator => ' &raquo; ', 
           :first_item_class => 'first', 
           :last_item_class => 'last', 
           :item_class => '', 
           :current_is_link => false
          }.merge(opts)
          
  html = %~<ul class="#{opts[:class]}">~ 
  bc = breadcrumbs_trail
  bc.each do |item|
    if item == bc.first
      opts[:final_item_class] = opts[:first_item_class]+' '+opts[:item_class]
    elsif item == bc.last
      opts[:final_item_class] = opts[:last_item_class]+' '+opts[:item_class]
      last = true
    else
      opts[:final_item_class] = opts[:item_class]
    end
    css_class = 'class="'+opts[:final_item_class].rstrip+'"' unless opts[:final_item_class].strip.empty?
    item_content = last && opts[:current_is_link] == false ? %~<span>#{item[:title]}</span>~ : link_to( item[:title] , relative_path_to(item), :title => item[:title] )
    item_open_tag = %~<li #{css_class}>~
    html +=  %~#{item_open_tag} #{item_content}#{opts[:separator] unless item == bc.last}</li>~
  end
  html += %~</ul>~
  html
end



def title(opts = {})
  opts = {:separator => ' &raquo; '}.merge(opts)
  bc = breadcrumbs_trail
  bc.reverse.map{ |item| item[:title]}.join(opts[:separator])
end






