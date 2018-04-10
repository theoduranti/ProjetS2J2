def trader_du_dimanche (array)
    benef = 0
    for i in 0 ...array.length #parcours l’array
            for j in (i+1)...array.length
                    if ((array[j] - array[i]) > benef) #si il y a benef possibile alors on ajoute les valeurs à benef
                            benef = array [j]  - array[i]
                            buyday = i
                            sellday = j
                    end
            end
    end
    puts "Acheter et revendez les jours suivants #{[buyday, sellday]} afin de réaliser un benefice de #{benef}"
end
puts trader_du_dimanche([17,3,6,9,15,6,6,1,10])
