music_library = {
    artists: [
        {
            name:"The Beatles",
            hometown: "Liverpool, United Kingdom",
            top_songs:[
                "Come Together",
                "With A Little Help From My Friends",
                "Lucy In The Sky With Diamonds"
            ]
        },
        {
            name:"Pantera",
            hometown:"Arlington, Texas",
            top_songs:[
                "Walk",
                "Cemetery Gates",
                "This Love"
            ]
        }
    ]
}

music_library[:artists].each {|a| puts a[:name]}

music_library[:artists].each do |artist|
    puts "#{artist[:name]} from #{artist[:hometown]}"
    artist[:top_songs].each {|song| puts "\t#{song}"}
end

puts music_library[:artists][1][:top_songs][2]