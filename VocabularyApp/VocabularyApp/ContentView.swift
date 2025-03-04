import SwiftUI

struct VocabularyPair {
    let english: String
    let italian: String
}

struct ContentView: View {
    
    // Alcuni esempi di vocabolario. Aggiungi i tuoi a piacere.
    private let allPairs: [VocabularyPair] = [
        VocabularyPair( english: "Bland", italian: "Insipido" ),
           VocabularyPair( english: "StirFry", italian: "Soffritto" ),
           VocabularyPair( english: "Gone Off", italian: "Scaduto" ),
           VocabularyPair( english: "Enhance", italian: "Migliorare" ),
           VocabularyPair( english: "Arranged", italian: "Sistemato" ),
           VocabularyPair( english: "Rodents", italian: "Roditori" ),
           VocabularyPair( english: "Whether", italian: "Se" ),
           VocabularyPair( english: "Reached", italian: "Raggiunto" ),
           VocabularyPair( english: "Throw", italian: "Lanciare" ),
           VocabularyPair( english: "Powerhouses", italian: "Potenti" ),
           VocabularyPair( english: "Renowned", italian: "Rinomato" ),
           VocabularyPair( english: "Chop", italian: "Tagliare/tritare" ),
           VocabularyPair( english: "Yummy", italian: "Delizioso" ),
           VocabularyPair( english: "Pan", italian: "Padella" ),
           VocabularyPair( english: "Threat", italian: "Minaccia" ),
           VocabularyPair( english: "Grant", italian: "Borsa di studio" ),
           VocabularyPair( english: "Enroll", italian: "Iscriversi" ),
           VocabularyPair( english: "Cram", italian: "Full immersione di studio" ),
           VocabularyPair( english: "Dwell on", italian: "Riflettere/soffermarsi" ),
           VocabularyPair( english: "Worthwhile", italian: "Utile" ),
           VocabularyPair( english: "Idle", italian: "Inattivo" ),
           VocabularyPair( english: "Gig", italian: "Piccolo concerto" ),
           VocabularyPair( english: "Sewing", italian: "Cucito" ),
           VocabularyPair( english: "Hang out", italian: "Stare insieme" ),
           VocabularyPair( english: "Take Up", italian: "Iniziare" ),
           VocabularyPair( english: "DIY", italian: "Fai da te" ),
           VocabularyPair( english: "Embraced", italian: "Adottare" ),
           VocabularyPair( english: "Coping", italian: "Affrontare" ),
           VocabularyPair( english: "Suit", italian: "Adattarsi" ),
           VocabularyPair( english: "Grace", italian: "Movimenti eleganti" ),
           VocabularyPair( english: "Leisure", italian: "Tempo libero / svago" ),
           VocabularyPair( english: "Ancient", italian: "Antico" ),
           VocabularyPair( english: "Pottery", italian: "Ceramica" ),
           VocabularyPair( english: "Monks", italian: "Monaci" ),
           VocabularyPair( english: "Widely", italian: "Ampia" ),
           VocabularyPair( english: "Barrels", italian: "Barili" ),
           VocabularyPair( english: "Bounds", italian: "Limiti/confini" ),
           VocabularyPair( english: "Bond", italian: "Legame/obbligazione" ),
           VocabularyPair( english: "Charm", italian: "Fascino" ),
           VocabularyPair( english: "Willing", italian: "Disposto/pronto" ),
           VocabularyPair( english: "Strength", italian: "Forza" ),
           VocabularyPair( english: "Tough", italian: "Duro/resistente" ),
           VocabularyPair( english: "Outcome", italian: "Risultato" ),
           VocabularyPair( english: "Engrossed in", italian: "Assorbito/immerso" ),
           VocabularyPair( english: "Doggedly", italian: "Ostinato" ),
           VocabularyPair( english: "Come by", italian: "Acquisire" ),
           VocabularyPair( english: "Purpose", italian: "Intenzione" ),
           VocabularyPair( english: "In law", italian: "Parenti acquisiti" ),
           VocabularyPair( english: "Fancy sb", italian: "Avere una cotta" ),
           VocabularyPair( english: "Stand by", italian: "Supportare qualcuno" ),
           VocabularyPair( english: "Put up with", italian: "Sopportare/tollerare" ),
           VocabularyPair( english: "Tie the knot", italian: "Sposarsi" ),
           VocabularyPair( english: "Jolly", italian: "Allegro/vivace" ),
           VocabularyPair( english: "Feel blue", italian: "Cattivo umore" ),
           VocabularyPair( english: "Wrinkles", italian: "Rughe" ),
           VocabularyPair( english: "Beard", italian: "Barba" ),
           VocabularyPair( english: "Pale", italian: "Pallido" ),
           VocabularyPair( english: "Tanned", italian: "Abbronzato" ),
           VocabularyPair( english: "Take after", italian: "Assomigliare" ),
           VocabularyPair( english: "Get along with", italian: "Andare d'accordo con" ),
           VocabularyPair( english: "Chubby", italian: "Paffuto" ),
           VocabularyPair( english: "Bald", italian: "Pelato" ),
           VocabularyPair( english: "Stubborn", italian: "Testardo" ),
           VocabularyPair( english: "Outgoing", italian: "Estroverso" ),
           VocabularyPair( english: "Ruthless", italian: "Spietato/crudele" ),
           VocabularyPair( english: "Clamp down", italian: "Reprimere" ),
           VocabularyPair( english: "The bottom line", italian: "L'essenza" ),
           VocabularyPair( english: "Shape", italian: "Forma" ),
           VocabularyPair( english: "Shaping", italian: "Modellare" ),
           VocabularyPair( english: "Stand up for", italian: "Difendere" ),
           VocabularyPair( english: "Upset", italian: "Dispiaciuto/arrabbiato" ),
           VocabularyPair( english: "Scruffy", italian: "Trasandato" ),
           VocabularyPair( english: "Shy", italian: "Timido" ),
           VocabularyPair( english: "Show off", italian: "Mettersi in mostra" ),
           VocabularyPair( english: "Lack", italian: "Mancanza" ),
           VocabularyPair( english: "Dead end job", italian: "Lavoro senza prospettive" ),
           VocabularyPair( english: "Shift", italian: "Turno lavorativo" ),
           VocabularyPair( english: "Resign", italian: "Dimettersi" ),
           VocabularyPair( english: "Perk", italian: "Bonus/beneficio" ),
           VocabularyPair( english: "Intern", italian: "Stagista/tirocinante" ),
           VocabularyPair( english: "Surveys", italian: "Sondaggi/indagini" ),
           VocabularyPair( english: "Nutshell", italian: "In sintesi" ),
           VocabularyPair( english: "Overwhelming", italian: "Travolgente/opprimente" ),
           VocabularyPair( english: "Stepping stones", italian: "Passo verso il successo" ),
           VocabularyPair( english: "Savvy", italian: "Esperto" ),
           VocabularyPair( english: "Plan ahead", italian: "Pianificare in anticipo" ),
           VocabularyPair( english: "Short term", italian: "Breve termine" ),
           VocabularyPair( english: "Cutting edge", italian: "All'avanguardia" ),
           VocabularyPair( english: "Pointless", italian: "Senza senso" ),
           VocabularyPair( english: "Outbreak", italian: "Scoppio" ),
           VocabularyPair( english: "Outlook", italian: "Prospettiva" ),
           VocabularyPair( english: "Breakthrough", italian: "Svolta" ),
           VocabularyPair( english: "Gizmo", italian: "Aggeggio" ),
           VocabularyPair( english: "Out of the loop", italian: "Non essere informato" ),
           VocabularyPair( english: "Former", italian: "Ex/precedente" ),
           VocabularyPair( english: "Flatmate", italian: "Coinquilino" ),
           VocabularyPair( english: "Darling", italian: "Tesoro" ),
           VocabularyPair( english: "Stunning", italian: "Mozzafiato" ),
           VocabularyPair( english: "Captivating", italian: "Affascinante" ),
           VocabularyPair( english: "Gorgeous", italian: "Splendido" ),
           VocabularyPair( english: "Hideous", italian: "Orribile" ),
           VocabularyPair( english: "Rooted", italian: "Radicato" ),
           VocabularyPair( english: "Lit", italian: "Acceso/illuminato" ),
           VocabularyPair( english: "Seldom", italian: "Raramente" ),
           VocabularyPair( english: "Polite", italian: "Educato" ),
           VocabularyPair( english: "Fancy", italian: "Elegante" ),
           VocabularyPair( english: "Steam", italian: "Vapore" ),
           VocabularyPair( english: "Unpleasant", italian: "Spiacevole" ),
           VocabularyPair( english: "Set off", italian: "Partire" ),
           VocabularyPair( english: "Foster", italian: "Incoraggiare" ),
           VocabularyPair( english: "Bustling", italian: "Vivace" ),
           VocabularyPair( english: "Overcoming", italian: "Superare" ),
           VocabularyPair( english: "Fundraiser", italian: "Raccolta fondi" ),
           VocabularyPair( english: "Drought", italian: "Siccità" ),
           VocabularyPair( english: "Famine", italian: "Carestia" ),
           VocabularyPair( english: "Sponsor", italian: "Sostenitore" ),
           VocabularyPair( english: "Aid", italian: "Aiuto umanitario" ),
           VocabularyPair( english: "Carry out", italian: "Eseguire" ),
           VocabularyPair( english: "Carry on", italian: "Continuare" ),
           VocabularyPair( english: "Shortages", italian: "Carenza" ),
           VocabularyPair( english: "Foodbank", italian: "Banco alimentare" ),
           VocabularyPair( english: "Hunger", italian: "Fame" ),
           VocabularyPair( english: "Struggle", italian: "Lotta/sforzo" ),
           VocabularyPair( english: "Sown", italian: "Seminato" ),
           VocabularyPair( english: "Sailed", italian: "Navigato" ),
           VocabularyPair( english: "Shore", italian: "Riva/costa" ),
           VocabularyPair( english: "Offshore", italian: "Al largo" ),
           VocabularyPair( english: "Towards", italian: "Verso" ),
           VocabularyPair( english: "Along", italian: "Lungo" ),
           VocabularyPair( english: "Across", italian: "Attraverso" ),
           VocabularyPair( english: "Down", italian: "Giù" ),
           VocabularyPair( english: "Through", italian: "Attraverso" ),
           VocabularyPair( english: "Over", italian: "Oltre/sopra" ),
           VocabularyPair( english: "Below", italian: "Sotto" ),
           VocabularyPair( english: "Harmful", italian: "Dannoso" ),
           VocabularyPair( english: "Dependable", italian: "Affidabile" ),
           VocabularyPair( english: "Significant", italian: "Importante" ),
           VocabularyPair( english: "Carried", italian: "Portato" ),
           VocabularyPair( english: "Led", italian: "Guidato" ),
           VocabularyPair( english: "Clue", italian: "Indizio" ),
           VocabularyPair( english: "Still", italian: "Ancora" ),
           VocabularyPair( english: "Awareness", italian: "Consapevolezza" ),
           VocabularyPair( english: "Severity", italian: "Gravità" ),
           VocabularyPair( english: "Patterns", italian: "Modelli" ),
           VocabularyPair( english: "Widespread", italian: "Ampia diffusione" ),
           VocabularyPair( english: "Withdraw", italian: "Prelevare" ),
           VocabularyPair( english: "Bargain", italian: "Affare" ),
           VocabularyPair( english: "Mortgage", italian: "Mutuo" ),
           VocabularyPair( english: "Wealthy", italian: "Ricco" ),
           VocabularyPair( english: "Broke", italian: "Povero" ),
           VocabularyPair( english: "Rip-off", italian: "Fregatura" ),
           VocabularyPair( english: "Shopaholic", italian: "Shopping dipendente" ),
           VocabularyPair( english: "Chain store", italian: "Catena di negozi" ),
           VocabularyPair( english: "Minted", italian: "Coniato" ),
           VocabularyPair( english: "Worth", italian: "Di valore" ),
           VocabularyPair( english: "Splash out", italian: "Spendere un sacco" ),
           VocabularyPair( english: "Hedonistic", italian: "Edonistico" ),
           VocabularyPair( english: "Heritage", italian: "Patrimonio" ),
           VocabularyPair( english: "Bohemian", italian: "Stile di vita artistico" ),
           VocabularyPair( english: "Laid back", italian: "Rilassato" ),
           VocabularyPair( english: "Neatly", italian: "Precisamente" ),
           VocabularyPair( english: "Praise", italian: "Lode" ),
           VocabularyPair( english: "Backlash", italian: "Reazione negativa" ),
           VocabularyPair( english: "Dare", italian: "Sfidare" ),
           VocabularyPair( english: "Wiser", italian: "Saggio" ),
           VocabularyPair( english: "Recklessness", italian: "Imprudente" ),
           VocabularyPair( english: "Wound", italian: "Ferita" ),
           VocabularyPair( english: "Rash", italian: "Eruzione cutanea" ),
           VocabularyPair( english: "Poorly", italian: "Male" ),
           VocabularyPair( english: "Pass out", italian: "Svenire" ),
           VocabularyPair( english: "Run-down", italian: "Non sentirsi bene" ),
           VocabularyPair( english: "Bug", italian: "Virus" ),
           VocabularyPair( english: "Sprain", italian: "Storta" ),
           VocabularyPair( english: "Ankle", italian: "Caviglia" ),
           VocabularyPair( english: "Pull a muscle", italian: "Strapparsi un muscolo" ),
           VocabularyPair( english: "Stitches", italian: "Punti di sutura" ),
           VocabularyPair( english: "Scar", italian: "Cicatrice" ),
           VocabularyPair( english: "Crutches", italian: "Stampelle" ),
           VocabularyPair( english: "Painkiller", italian: "Antidolorifico" ),
           VocabularyPair( english: "Pain", italian: "Dolore" ),
           VocabularyPair( english: "Gain", italian: "Guadagno" ),
           VocabularyPair( english: "Witness", italian: "Testimone" ),
           VocabularyPair( english: "Burglar", italian: "Ladro" ),
           VocabularyPair( english: "Fraudster", italian: "Truffatore" ),
           VocabularyPair( english: "Arson", italian: "Incendio doloso" ),
           VocabularyPair( english: "Arsonist", italian: "Piromane" ),
           VocabularyPair( english: "Mugging", italian: "Rapina" ),
           VocabularyPair( english: "Trial", italian: "Processo" ),
           VocabularyPair( english: "Copycat", italian: "Copione" ),
           VocabularyPair( english: "Allegiance", italian: "Alleanza" ),
           VocabularyPair( english: "Loyalty", italian: "Lealtà" ),
           VocabularyPair( english: "Fast-forward", italian: "Mandare avanti veloce" ),
           VocabularyPair( english: "Behaviour", italian: "Comportamento" ),
           VocabularyPair( english: "Theft", italian: "Furto" ),
           VocabularyPair( english: "Guilty", italian: "Colpevole" ),
           VocabularyPair( english: "Perpetrator", italian: "Autore del reato" ),
           VocabularyPair( english: "Shoplifting", italian: "Taccheggio" ),
           VocabularyPair( english: "Set-back", italian: "Contrattempo" ),
           VocabularyPair( english: "Fulfilling", italian: "Appagante" ),
           VocabularyPair( english: "Hit rock bottom", italian: "Toccare il fondo" ),
           VocabularyPair( english: "Cool down", italian: "Raffreddarsi" ),
           VocabularyPair( english: "Referee", italian: "Arbitro" ),
           VocabularyPair( english: "Pitch", italian: "Campo/presentazione" ),
           VocabularyPair( english: "Hurdle", italian: "Ostacolo" ),
           VocabularyPair( english: "Overcome", italian: "Superare" ),
             VocabularyPair( english: "Expectation", italian: "Aspettativa" ),
             VocabularyPair( english: "Visualisation", italian: "Visualizzazione VocabularyPair(in senso di motivazione psicologica)" ),
             VocabularyPair( english: "Remarkable", italian: "Notevole / straordinario / eccezionale" ),
             VocabularyPair( english: "Triumph", italian: "Trionfo" ),
             VocabularyPair( english: "Apart", italian: "Separato / distante" ),
             VocabularyPair( english: "Woodland", italian: "Bosco" ),
             VocabularyPair( english: "Cliffs", italian: "Scogliera" ),
             VocabularyPair( english: "Lush", italian: "Rigoglioso" ),
             VocabularyPair( english: "Barren", italian: "Arido" ),
             VocabularyPair( english: "Marvel", italian: "Meraviglia" ),
             VocabularyPair( english: "Niches", italian: "Nicchie" ),
             VocabularyPair( english: "Defied", italian: "Sfidato" ),
             VocabularyPair( english: "Living things", italian: "Esseri viventi" ),
             VocabularyPair( english: "Thrive", italian: "Prosperare" ),
             VocabularyPair( english: "Platypus", italian: "Ornitorinco" ),
             VocabularyPair( english: "Venomous", italian: "Velenoso" ),
             VocabularyPair( english: "Mammals", italian: "Mammifero" ),
             VocabularyPair( english: "Spikes", italian: "Spine" ),
             VocabularyPair( english: "Biased", italian: "Parziale / di parte" ),
             VocabularyPair( english: "Unbiased", italian: "Imparziale / non di parte" ),
             VocabularyPair( english: "Upcycling", italian: "Riciclo creativo" ),
             VocabularyPair( english: "Throw away", italian: "Buttare via" ),
             VocabularyPair( english: "Phase out", italian: "Eliminare gradualmente" ),
             VocabularyPair( english: "Headlines", italian: "Titoli / prime pagine" ),
             VocabularyPair( english: "Boredom", italian: "Noia" ),
             VocabularyPair( english: "Dress up", italian: "Vestirsi elegantemente" ),
             VocabularyPair( english: "Dress down", italian: "Vestirsi in modo informale" ),
             VocabularyPair( english: "Trendsetter", italian: "Colui che lancia una tendenza" ),
             VocabularyPair( english: "Tracksuit", italian: "Tuta" ),
             VocabularyPair( english: "Trainers", italian: "Scarpe da ginnastica" ),
             VocabularyPair( english: "Garment", italian: "Indumento" ),
             VocabularyPair( english: "Suit", italian: "Abito" ),
             VocabularyPair( english: "Fade", italian: "Sbiadire" ),
             VocabularyPair( english: "Cheering", italian: "Tifo / incitamento" ),
             VocabularyPair( english: "Venue", italian: "Luogo / sede" ),
             VocabularyPair( english: "Dubbed", italian: "Doppiato" ),
             VocabularyPair( english: "Stick", italian: "Attenersi" ),
             VocabularyPair( english: "Aim", italian: "Obiettivo / scopo" ),
             VocabularyPair( english: "Catwalk", italian: "Passerella" ),
             VocabularyPair( english: "Bungalow", italian: "Casa ad un solo piano" ),
             VocabularyPair( english: "Outskirts", italian: "Periferia" ),
             VocabularyPair( english: "Cottage", italian: "Casetta / casa di campagna" ),
             VocabularyPair( english: "Cosy", italian: "Accogliente, confortevole" ),
             VocabularyPair( english: "Sprawling", italian: "Esteso / in espansione" ),
             VocabularyPair( english: "Bustling", italian: "Vivace" ),
             VocabularyPair( english: "Do up", italian: "Ristrutturare / allacciare / abbellire" ),
             VocabularyPair( english: "The suburb", italian: "Sobborgo VocabularyPair(periferia bella)" ),
             VocabularyPair( english: "Dodgy", italian: "Losco / sospetto" ),
             VocabularyPair( english: "Plenty", italian: "Abbondanza / molto" ),
             VocabularyPair( english: "Hustle and bustle", italian: "Trambusto e frenesia" ),
             VocabularyPair( english: "Boast", italian: "Vantarsi / vanto" ),
             VocabularyPair( english: "Sparrow", italian: "Passero" ),
             VocabularyPair( english: "Nevertheless", italian: "Tuttavia / nonostante ciò" ),
             VocabularyPair( english: "Silly", italian: "Sciocco / stupido" ),
             VocabularyPair( english: "Con artist", italian: "Truffatore" ),
             VocabularyPair( english: "Smuggling", italian: "Contrabbando" ),
             VocabularyPair( english: "Whereas", italian: "Mentre" ),
             VocabularyPair( english: "At least", italian: "Almeno" ),
             VocabularyPair( english: "All in all", italian: "Tutto sommato" ),
             VocabularyPair( english: "On the whole", italian: "Nel complesso" ),
             VocabularyPair( english: "As a matter of fact", italian: "In effetti" ),
             VocabularyPair( english: "Enhanced", italian: "Migliorato" ),
             VocabularyPair( english: "Appealed", italian: "Fatto ricorso" ),
             VocabularyPair( english: "Defeated", italian: "Sconfitto" ),
               VocabularyPair( english: "Moreover", italian: "Inoltre / per di più" ),
               VocabularyPair( english: "Therefore", italian: "Pertanto / quindi" ),
               VocabularyPair( english: "However", italian: "Tuttavia / però" ),
               VocabularyPair( english: "Anyway", italian: "Comunque / in ogni caso" ),
               VocabularyPair( english: "Perceiver", italian: "Percepisce / comprende" ),
               VocabularyPair( english: "Notices", italian: "Notare / si accorge" ),
               VocabularyPair( english: "Unsuited", italian: "Inadatto" ),
               VocabularyPair( english: "Disbelief", italian: "Incredulità" ),
               VocabularyPair( english: "Lean and wiry", italian: "Magro e snello VocabularyPair(ma forte)" ),
               VocabularyPair( english: "Leaping", italian: "Saltare" ),
               VocabularyPair( english: "Abseil", italian: "Calarsi" ),
               VocabularyPair( english: "Belayer", italian: "Assicurare nell’arrampicata / mettere la sicura" ),
               VocabularyPair( english: "Mutters", italian: "Borbotta" ),
               VocabularyPair( english: "Catch up with something", italian: "Recuperare qualcosa VocabularyPair(che non si ha avuto tempo di fare)" ),
               VocabularyPair( english: "Give something away", italian: "Rivelare un segreto" ),
               VocabularyPair( english: "Fall Through", italian: "Fallire o non accadere" ),
               VocabularyPair( english: "Come across something or somehow", italian: "Trovare o incontrare qualcosa o qualcuno per caso" ),
               VocabularyPair( english: "Sort something out", italian: "Risolvere" ),
               VocabularyPair( english: "Take after someone", italian: "Assomigliare ad un familiare più anziano" ),
               VocabularyPair( english: "Live up to something", italian: "Essere all’altezza delle aspettative" ),
               VocabularyPair( english: "Get away with something", italian: "Riuscire a non essere scoperti facendo qualcosa di sbagliato" )
             
    ]
    
    @State private var pairs: [VocabularyPair] = []
    @State private var currentIndex: Int = 0
    
    init() {
        // Mescoliamo l'array all’avvio
        self._pairs = State(initialValue: allPairs.shuffled())
    }
    
    var body: some View {
        ZStack {
            // Sfondo dell’app
            Color(uiColor: .systemGroupedBackground)
                .ignoresSafeArea()
            
            // Card + contenuto
            ZStack {
                // 1. Sfondo "card" con dimensioni fisse
                RoundedRectangle(cornerRadius: 16)
                    .fill(Color.white)
                    .frame(width: 300, height: 300)
                    .shadow(color: .black.opacity(0.1), radius: 6, x: 0, y: 4)
                
                // 2. Contenuto, centrato verticalmente e orizzontalmente
                VStack {
                    Spacer() // spazio prima
                    VStack(spacing: 16) {
                        
                        Text(pairs[currentIndex].english)
                            .font(.system(size: 24, weight: .bold))
                            .foregroundColor(.black)
                            // Evita che il testo faccia "uscire" i bordi
                            .lineLimit(2)
                            .multilineTextAlignment(.center)
                            .truncationMode(.tail)
                            // .minimumScaleFactor(0.8)   // se vuoi che si riduca un po'
                        
                        Rectangle()
                            .frame(width: 80, height: 2)
                            .foregroundColor(.blue)
                        
                        Text(pairs[currentIndex].italian)
                            .font(.system(size: 20))
                            .foregroundColor(.gray)
                            .lineLimit(2)
                            .multilineTextAlignment(.center)
                            .truncationMode(.tail)
                            // .minimumScaleFactor(0.8)
                        
                        // Un piccolo spazio extra prima della "hint"
                        Spacer().frame(height: 8)
                        
                        Text("Tap to see next word")
                            .font(.footnote)
                            .foregroundColor(.gray)
                    }
                    Spacer() // spazio dopo
                }
                .frame(width: 300, height: 300, alignment: .center)
            }
            .onTapGesture {
                nextWord()
            }
        }
    }
    
    private func nextWord() {
        currentIndex = (currentIndex + 1) % pairs.count
    }
}
