def pet_shop_name(pet_shop)
  pet_shop[:name]
end

def total_cash(pet_shop)
  pet_shop[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop, amount)
  pet_shop[:admin][:total_cash] += amount
end

def pets_sold(pet_shop)
  pet_shop[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop, pet_qty)
  pet_shop[:admin][:pets_sold] += pet_qty
end

def stock_count(pet_shop)
  pet_shop[:pets].count
end

def pets_by_breed(pet_shop, breed)
  shorthairs = []
  pets = pet_shop[:pets]
  for pet in pets
    if pet[:breed] == breed
      shorthairs << pet[:breed]
    end
  end
   shorthairs
end

def find_pet_by_name(pet_shop, name)
  pets = pet_shop[:pets]
    for pet in pets
      if pet[:name] == name
        return pet
      end
    end
    nil
end

def remove_pet_by_name(pet_shop, name)
  pets = pet_shop[:pets]
  for pet in pets
    if pet[:name] == name
      pets.delete(pet)
    end
  end
  return pet
end

def add_pet_to_stock(pet_shop, new_pet)
  pet_shop[:pets] << new_pet
end

def customer_cash(customer)
  customer[:cash]
end

def remove_customer_cash(customer, amount)
  customer[:cash] -= amount
end

def customer_pet_count(customer)
  customer[:pets].count
end

def add_pet_to_customer(customer, new_pet)
  customer[:pets] << new_pet
end

def customer_can_afford_pet(customer, new_pet)
  if customer[:cash] > new_pet[:price]
    true
  else
    false
  end
end

# I didn't really know where to go with this one, I just included the previous...
# ...methods that satified some assertions, not what you're looking for I'm sure ;)
def sell_pet_to_customer(pet_shop, pet, customer)
  customer[:pets].count
  pet_shop[:admin][:pets_sold]
  customer[:cash]
  pet_shop[:admin][:total_cash]
end
