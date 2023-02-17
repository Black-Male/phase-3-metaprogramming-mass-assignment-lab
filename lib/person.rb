class Person
  def initialize(attributes)
    #attributes is taken in as one big hash
    attributes.each do |key, value|
      # has broken down into key and value pairs as it takes each item and breaks it apart
      self.class.attr_accessor(key)
      #this allows the large number of attributes(:name, :birthday, :hair_color, :eye_color, :height,:weight, :handed, :complexion, :t_shirt_size,:wrist_size, :glove_size, :pant_length, :pant_width) to pass through/be created whenever we are creating a new class object and allows us to omit others wheen unneccessary
      self.send("#{key}=", value)
      #adds the attribute information to the attribute
    end
  end
end
