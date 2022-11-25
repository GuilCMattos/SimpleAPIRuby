namespace :dev do
  desc "Configura o ambiente de desenvolvimento"
  task setup: :environment do

    puts "Cadastrando os tipos de contato..."

    kinds = %w(Amigo Comercial Conhecido)

    kinds.each do |kind|
      Kind.create!(
        description: kind
      )
    end

    #############################################

    puts "Cadastrando os contatos..."
    100.times do |i|
      Contact.create!(
        name: Faker::Name.name ,
        email: Faker::Internet.email,
        birthdate: Faker::Date.birthday(min_age: 18, max_age: 65),
        kind: Kind.all.sample
      )
    end

    puts "Contatos cadastrados com sucesso!"

     #############################################

     puts "Cadastrando os telefones..."

      Contact.all.each do |contact|
        Random.rand(5).times do |i|
          phone = Phone.create!(number:Faker::PhoneNumber.cell_phone)
          contact.phones << phone
          contact.save!
        end
      end

      puts "Telefones cadastrados com sucesso!"

end

end


# puts "Cadastrando os tipos de contato..."

# kinds = %w(Amigo Comercial Conhecido)

# kinds.each do |kind|
#   Kind.create!(
#     description: kind
#   )
# end

# puts "Tipos Contato cadastrados com sucesso!"

# ######################

# puts "Cadastrando os contatos..."

# 100.times do |i|
#   Contact.create!(
#     name: Faker::Name.name,
#     email: Faker::Internet.email,
#     birthdate: Faker::Date.between(65.years.ago, 18.years.ago),
#     kind: Kind.all.sample
#   )
# end

# puts "Contatos cadastrados com sucesso!"

# ######################



# ######################

# puts "Cadastrando os endereços..."

# Contact.all.each do |contact|
#   Address.create(
#     street: Faker::Address.street_address,
#     city: Faker::Address.city,
#     contact: contact
#   )
# end

# puts "Endereços cadastrados com sucesso!"
# end
# end