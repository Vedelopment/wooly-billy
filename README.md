# README

This site is a great way to tediously grow hair on Wooly-Billy. It's like watching paint dry but where you have to fill out a DMV form at the same time.

* Please seed the database before creating hairs!
* Run on localhost:5000
* Navigate to http://localhost:5000/areas/1/hairs/new

This was built in Rails with "Area" and "Hair" models. The Hair class has a polymorphic database relationship to the Area class through the association of "Growable". A Hair can belong to any three of the seeded Area instances, but it can only belong to one of them.

The front end uses embedded ruby to style each created hair using absolute position in a relative container. It uses the x, y and rotate values from each hair instance to set the positioning.

Most of the HTML content is generated from database content. There is a handy list of hairs you've created at the bottom to help you decide where to place your next hair.

Enjoy!

## Some coding highlights:

### Polymorphic Relationships
```
class Area < ApplicationRecord
  has_many :hairs, as: :growable
end
```
```
class Hair < ApplicationRecord
  belongs_to :growable, polymorphic: true
end
```
### Conditional
This adds the growable parameter to each hair depending on dropdown menu selection before saving the hair.
```
def create
  @hair = Hair.new(hair_params)
  if hair_params[:area] == "Head"
    @hair.growable = Area.find_by(title: "Head")
  elsif hair_params[:area] == "Brow"
    @hair.growable = Area.find_by(title: "Brow Bone")
  elsif hair_params[:area] == "Face"
    @hair.growable = Area.find_by(title: "Face")
  end

  if @hair.save
    redirect_to new_area_hair_path
  else
    flash[:error] = "Failed to save new hair."
    redirect_to new_area_hair_path
  end
end
```

### View
This shows the embedded ruby in the Head Area of the view and sets the inline style based on the database values
```
<div class="wrap-head-hairs">
  <% @headHairs.each do |h| %>
  <%= content_tag(:img, "", :src => "/assets/images/hair.png", :class => "hair", :style => "top: #{h.x}px; left: #{h.x}px; transform: rotate(0.#{h.rotate.to_i}turn);") %>
  <% end %>
</div>
```
