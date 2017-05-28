namespace :dev do
  desc "Configura o ambiente de desenvolvimento"
  task setaup: :environment do
    puts "cadastrando os contatos"
    100.times do |i|
      Contact.create!(
      name: Faker::Name.name,
      email: Faker::Internet.email,
      birthdate:Faker::Date.between(65.years.ago,18.years.ago)
      )
    end
    puts "Contatos cadastrados com sucesso"
  end
end
