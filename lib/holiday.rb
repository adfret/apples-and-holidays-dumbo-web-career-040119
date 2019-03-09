require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
holiday_hash[:summer][:fourth_of_july][1]

end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
holiday_hash[:winter][:christmas] << supply
holiday_hash[:winter][:new_years] << supply
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[:season] = holiday_name
  holiday_hash[:season][:holiday_name]<< supply_array
holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  arr = []
  holiday_supplies[:winter].each do |i,v|
  arr << v
  end
  arr.flatten
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  arr = []
holiday_hash.each do |i,v|
arr << i
end

#get how winter months needs to appear
arrd =[]
arr.each do |i|
arrd << i.capitalize.to_s
end

art = []
holiday_hash.each do |i,v|
art << v
end

ark,arb = [], []
holiday_hash.each do |i,v|
v.each do |j,k|
ark << j
arb << k
end
end

arb = arb.flatten
"#{arrd[0]}:
    #{ark[0].capitalize}: #{arb[0]}, #{arb[1]}
    #{ark[1].capitalize}: #{arb[2]}
  #{arrd[1]}:
    #{ark[2].capitalize}: #{arb[3]}, #{arb[4]}
  #{arrd[2]}:
    #{ark[3].capitalize}: #{arb[5]}
  #{arrd[3]}:
    #{ark[4].capitalize}: #{arb[6]}"


end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  art = []
  holiday_hash.each do |i,v|
  v.each do |i,v|
  if v.include?"BBQ"
  art << i
  end
  end
  end

art
end
