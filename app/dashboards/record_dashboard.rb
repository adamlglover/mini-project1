require "administrate/base_dashboard"

class RecordDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    c_id: Field::Number,
    c_fn: Field::String,
    c_ln: Field::String,
    c_address: Field::String,
    c_state: Field::String,
    c_zip: Field::Number,
    p_num: Field::Number,
    p_descript: Field::Text,
    p_instock: Field::Number,
    p_date: Field::DateTime,
    p_sold: Field::Number,
    p_qoh: Field::Number,
    p_price: Field::String.with_options(searchable: false),
    a_id: Field::Number,
    a_date: Field::DateTime,
    a_paid: Field::Boolean,
    i_id: Field::Number,
    i_order_size: Field::Number,
    i_vendor_fn: Field::String,
    i_vendor_ln: Field::String,
    i_vendor_email: Field::String,
    i_order_date: Field::DateTime,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    p_name: Field::String,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :id,
    :c_id,
    :c_fn,
    :c_ln,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :id,
    :c_id,
    :c_fn,
    :c_ln,
    :c_address,
    :c_state,
    :c_zip,
    :p_num,
    :p_descript,
    :p_instock,
    :p_date,
    :p_sold,
    :p_qoh,
    :p_price,
    :a_id,
    :a_date,
    :a_paid,
    :i_id,
    :i_order_size,
    :i_vendor_fn,
    :i_vendor_ln,
    :i_vendor_email,
    :i_order_date,
    :created_at,
    :updated_at,
    :p_name,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :c_id,
    :c_fn,
    :c_ln,
    :c_address,
    :c_state,
    :c_zip,
    :p_num,
    :p_descript,
    :p_instock,
    :p_date,
    :p_sold,
    :p_qoh,
    :p_price,
    :a_id,
    :a_date,
    :a_paid,
    :i_id,
    :i_order_size,
    :i_vendor_fn,
    :i_vendor_ln,
    :i_vendor_email,
    :i_order_date,
    :p_name,
  ].freeze

  # Overwrite this method to customize how records are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(record)
  #   "Record ##{record.id}"
  # end
end
