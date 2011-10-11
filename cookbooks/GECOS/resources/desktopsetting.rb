actions :set, :unset
 
attribute :name, :kind_of => String, :name_attribute => true, :required => true
attribute :value, :kind_of => String, :required => true
attribute :schema, :kind_of => String
attribute :type, :kind_of => String

