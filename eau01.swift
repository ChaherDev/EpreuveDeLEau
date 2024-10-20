//Combinaisons de 2 nombres
//
//Créez un programme qui affiche toutes les différentes combinaisons de deux nombre entre 00 et 99 dans l’ordre croissant.
//
//Exemples d’utilisation :
//$> python exo.py
//00 01, 00 02, 00 03, 00 04, ... , 00 99, 01 02, ... , 97 99, 98 99
//$>

for i in 0...9 {
    for j in 0...9 {
        for k in 0...9 {
            for l in 0...9 {
                if i == k && j == l {
                    continue
                } else {
                    print("\(i)\(j) \(k)\(l)", terminator: ", ")
                }
            }
        }
    }
}

// il me manque le fait qu'il ne faut pas qu'il y ait 01 00 s'il y a eu 00 01

// je remarque que ij est tjrs < à kl
