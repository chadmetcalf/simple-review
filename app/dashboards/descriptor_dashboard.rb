require "administrate/base_dashboard"

class DescriptorDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    creator: Field::BelongsTo.with_options(class_name: "User"),
    level: Field::BelongsTo,
    id: Field::String.with_options(searchable: false),
    active: Field::Boolean,
    description: Field::Text,
    order: Field::Number,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :creator,
    :level,
    :id,
    :active,
  ]

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = ATTRIBUTE_TYPES.keys

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :creator,
    :level,
    :active,
    :description,
    :order,
  ]

  # Overwrite this method to customize how descriptors are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(descriptor)
  #   "Descriptor ##{descriptor.id}"
  # end
end
