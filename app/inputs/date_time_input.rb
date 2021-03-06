##
# DateTimeInput
#
# Just renders a normal text field instead of trying to
# be a date selector. The date_time_input javascript will
# take care of filling it in.
#
class DateTimeInput < SimpleForm::Inputs::Base
  def input(wrapper_options=nil)
    @builder.text_field(attribute_name,
      input_html_options.reverse_merge(value: @builder.object.send(attribute_name)))
  end
end
