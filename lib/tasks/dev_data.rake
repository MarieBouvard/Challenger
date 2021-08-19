# encoding: utf-8

namespace :dev_data do 
    desc "Fill database sample data"
    task create: :environment do
        
        Challenge.delete_all

        cloche_pied = Challenge.create!(
            title: "Cloche-pied",
            description: "Faites 200 m à cloche-pied !",
            points: 10,
            expires_at: Time.now + 1.week
        )

        cloche_pied.participations.create!(
            user_name: "John",
            message: "J'ai réussi, j'ai mal aux pieds"
        )


        Challenge.create!(
            title: "Pêche aux canards",
            description: "Aller à la fête foraine et gagner un lot en jouant à la pêche aux canards",
            points: 80,
            expires_at: Time.now + 10.days
        )


        Challenge.create!(
            title: "Bain gelé",
            description: "Prendre un bain de mer en décembre",
            points: 120,
            expires_at: Time.parse('31/12/2013')
        )



        puts "Sample data have been created in DB"
    end
end