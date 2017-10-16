class Car
  
  def read_Car_Makes
    carMakes = File.readlines("car-makes.txt").map(&:chomp)
  end
  
  def read_Car_Models
    car_Models_and_keys_Arr = File.readlines("car-models.txt").map(&:chomp)
  end

  def create_Car_Make_and_Model_Hash
    makes_and_models = []

    for makes in read_Car_Makes
      modelArr =[]
      read_Car_Models.each { |key|
                            if makes[0] == key[0]
                              modelArr.push(key[2..-1])
                            end
                            }
      makes_and_models.push({makes => modelArr})
    end

    puts makes_and_models
  end

end

carList = Car.new()
carList.create_Car_Make_and_Model_Hash