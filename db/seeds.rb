DATA_oils = {
  :oil_keys =>
    ["name", "description", "fragrance_profile"],
  :oils => [
  ["Choose oil"],
  ["Avocado", "Avocado description", "Avocado fragrance_profile"],
  ["Basil", "Basil description", "Basil fragrance_profile"],
  ["Birch Bark", "Birch Bark description", "Birch Bark fragrance_profile"],
  ["Burdock root", "Burdock root description", "Burdock root fragrance_profile"],
  ["Catmint leaves", "Catmint leaves description", "Catmint leaves fragrance_profile"],
  ["Chamomile  flowers", "Chamomile  flowers description", "Chamomile  flowers fragrance_profile"],
  ["Cherry Bark", "Cherry Bark description", "Cherry Bark fragrance_profile"],
  ["Clover", "description", "fragrance_profile"],
  ["Comfrey ", "Clover description", "Clover fragrance_profile"],
  ["Dandilion", "Dandilion description", "Dandilion fragrance_profile"],
  ["Elderflowers", "Elderflowers description", "Elderflowers fragrance_profile"]
  ]
}

def make_oils
  DATA_oils[:oils].each do |oil|
    new_oil = Oil.new
    oil.each_with_index do |attribute, i|
      new_oil.send(DATA_oils[:oil_keys][i]+"=", attribute)
    end
    new_oil.save
  end
end

DATA_uses = {
  :use_keys =>
    ["description"],
  :uses => [
    ["Choose use"],
    ["Dark hair"],
    ["Fair hair"],
    ["Fine hair"],
    ["Normal hair"],
    ["Dry hair"],
    ["Oily hair"],
    ["Itchy scalp"],
    ["Dry scalp"],
    ["Itchy scalp"]
  ]
}

def make_uses
  DATA_uses[:uses].each do |use|
    new_use = Use.new
    use.each_with_index do |attribute, i|
      new_use.send(DATA_uses[:use_keys][i]+"=", attribute)
    end
    new_use.save
  end
end

DATA_medical_properties = {
  :medical_property_keys =>
    ["description"],
  :medical_properties => [
    ["Choose medical_property"],
    ["HairGrowth"],
    ["Scent"],
    ["Shine"],
    ["Antiseptic"],
    ["Cleanser"],
    ["Nourishing"],
    ["Lice"],
    ["Arteriosclerosis"],
    ["Hypertension"],
    ["Cancer"],
    ["Insomnia"],
    ["Complexion "],
    ["Fluid retention"],
    ["Wrinkles"]
  ]
}

def make_medical_properties
  DATA_medical_properties[:medical_properties].each do |medical_property|
    new_medical_property = MedicalProperty.new
    medical_property.each_with_index do |attribute, i|
      new_medical_property.send(DATA_medical_properties[:medical_property_keys][i]+"=", attribute)
    end
    new_medical_property.save
  end
end

DATA_oil_med_props = {
  :oil_med_prop_keys =>
    ["oil_id", "medical_property_id"],
  :oil_med_props => [
    [1, 1],
    [1, 2],
    [1, 3],
    [2, 4],
    [2, 5],
    [2, 6],
    [3, 7],
    [3, 8],
    [3, 9],
    [4, 10],
    [4, 11],
    [4, 12],
    [5, 13],
    [5, 14],
    [5, 15],
    [6, 1],
    [6, 2],
    [6, 3],
    [7, 4]
  ]
}

def make_oil_med_props
  DATA_oil_med_props[:oil_med_props].each do |oil_med_prop|
    new_oil_med_prop = OilMedProp.new
    oil_med_prop.each_with_index do |attribute, i|
      new_oil_med_prop.send(DATA_oil_med_props[:oil_med_prop_keys][i]+"=", attribute)
    end
    new_oil_med_prop.save
  end
end


DATA_oil_uses = {
  :oil_use_keys =>
    ["oil_id", "use_id"],
  :oil_uses => [
    [1, 1],
    [1, 2],
    [1, 3],
    [2, 4],
    [2, 5],
    [2, 6],
    [3, 7],
    [3, 8],
    [3, 9],
    [4, 10],
    [4, 1],
    [4, 2],
    [5, 3],
    [5, 4],
    [5, 5],
    [6, 6],
    [6, 7],
    [6, 8],
    [7, 9]
  ]
}

def make_oil_uses
  DATA_oil_uses[:oil_uses].each do |oil_use|
    new_oil_use = OilUse.new
    oil_use.each_with_index do |attribute, i|
      new_oil_use.send(DATA_oil_uses[:oil_use_keys][i]+"=", attribute)
    end
    new_oil_use.save
  end
end
  
def main
  make_oils
  make_uses
  make_medical_properties
  make_oil_med_props
  make_oil_uses
end

main
 