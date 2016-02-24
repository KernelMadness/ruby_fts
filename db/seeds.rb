data = [{
            title: 'Harbor Seal',
            content: "Harbor seals are brown, tan, or gray, with distinctive V-shaped nostrils. An adult can attain a length of 1.85 meters (6.1 ft) and a mass of 132 kilograms (290 lb). Blubber under the seal's skin helps to maintain body temperature. Females outlive males (30–35 years versus 20–25 years). Harbor seals stick to familiar resting spots or haulout sites, generally rocky areas (although ice, sand and mud may also be used) where they are protected from adverse weather conditions and predation, near a foraging area. Males may fight over mates underwater and on land. Females bear a single pup after a nine-month gestation, which they care for alone. Pups can weigh up to 16 kg (35 lb) and are able to swim and dive within hours of birth. They develop quickly on their mothers' fat-rich milk and are weaned after four to six weeks."
        },
        {
            title: 'Grey seal',
            content: "It is a large seal, with bulls reaching 2.5–3.3 m (8.2–10.8 ft) long and weighing 170–310 kg (370–680 lb); the cows are much smaller, typically 1.6–2.0 m (5.2–6.6 ft) long and 100–190 kg (220–420 lb) in weight. Individuals from the western Atlantic are often much larger, males reaching 400 kg (880 lb) and females weighing up to 250 kg (550 lb).[5] It is distinguished from the harbor seal by its straight head profile, nostrils set well apart, and fewer spots on its body.[6][7] Gray seals lack external ear flaps and characteristically have large snouts.[8]Bull Greys have larger noses and a less curved profile than common seal bulls. Males are generally darker than females, with lighter patches and often scarring around the neck. Females are silver grey to brown with dark patches."
        },
        {
            title: 'Walrus',
            content: "The walrus (Odobenus rosmarus) is a large flippered marine mammal with a discontinuous distribution about the North Pole in the Arctic Ocean and subarctic seas of the Northern Hemisphere. The walrus is the only living species in the family Odobenidae and genus Odobenus. This species is subdivided into three subspecies:[3] the Atlantic walrus (O. r. rosmarus) which lives in the Atlantic Ocean, the Pacific walrus (O. r. divergens) which lives in the Pacific Ocean, and O. r. laptevi, which lives in the Laptev Sea of the Arctic Ocean.

            Adult walruses are easily recognized by their prominent tusks, whiskers, and bulkiness. Adult males in the Pacific can weigh more than 2,000 kg (4,400 lb)[4] and, among pinnipeds, are exceeded in size only by the two species of elephant seals.[5] Walruses live mostly in shallow waters above the continental shelves, spending significant amounts of their lives on the sea ice looking for benthic bivalve mollusks to eat. Walruses are relatively long-lived, social animals, and they are considered to be a 'keystone species' in the Arctic marine regions.

            The walrus has played a prominent role in the cultures of many indigenous Arctic peoples, who have hunted the walrus for its meat, fat, skin, tusks, and bone. During the 19th century and the early 20th century, walruses were widely hunted and killed for their blubber, walrus ivory, and meat. The population of walruses dropped rapidly all around the Arctic region. Their population has rebounded somewhat since then, though the populations of Atlantic and Laptev walruses remain fragmented and at low levels compared with the time before human interference."
        }
]

data.each do |item|
  Article.create(item)
end
