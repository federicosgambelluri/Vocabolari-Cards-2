import WidgetKit
import SwiftUI

// MARK: - 1. Modello di dati per il widget
struct VocabularyEntry: TimelineEntry {
    let date: Date
    let englishWord: String
    let italianWord: String
}

// MARK: - 2. Provider (TimelineProvider) per generare i dati
struct VocabularyProvider: TimelineProvider {
    
    // Qui puoi copiare il tuo lunghissimo array di vocabularyPairs.
    // L'ho messo a scopo di esempio. Copia tutto dal tuo HTML, se vuoi.
    let vocabularyPairs: [(english: String, italian: String)] = [
        ( english: "Bland", italian: "Insipido" ),
           ( english: "StirFry", italian: "Soffritto" ),
           ( english: "Gone Off", italian: "Scaduto" ),
           ( english: "Enhance", italian: "Migliorare" ),
           ( english: "Arranged", italian: "Sistemato" ),
           ( english: "Rodents", italian: "Roditori" ),
           ( english: "Whether", italian: "Se" ),
           ( english: "Reached", italian: "Raggiunto" ),
           ( english: "Throw", italian: "Lanciare" ),
           ( english: "Powerhouses", italian: "Potenti" ),
           ( english: "Renowned", italian: "Rinomato" ),
           ( english: "Chop", italian: "Tagliare/tritare" ),
           ( english: "Yummy", italian: "Delizioso" ),
           ( english: "Pan", italian: "Padella" ),
           ( english: "Threat", italian: "Minaccia" ),
           ( english: "Grant", italian: "Borsa di studio" ),
           ( english: "Enroll", italian: "Iscriversi" ),
           ( english: "Cram", italian: "Full immersione di studio" ),
           ( english: "Dwell on", italian: "Riflettere/soffermarsi" ),
           ( english: "Worthwhile", italian: "Utile" ),
           ( english: "Idle", italian: "Inattivo" ),
           ( english: "Gig", italian: "Piccolo concerto" ),
           ( english: "Sewing", italian: "Cucito" ),
           ( english: "Hang out", italian: "Stare insieme" ),
           ( english: "Take Up", italian: "Iniziare" ),
           ( english: "DIY", italian: "Fai da te" ),
           ( english: "Embraced", italian: "Adottare" ),
           ( english: "Coping", italian: "Affrontare" ),
           ( english: "Suit", italian: "Adattarsi" ),
           ( english: "Grace", italian: "Movimenti eleganti" ),
           ( english: "Leisure", italian: "Tempo libero / svago" ),
           ( english: "Ancient", italian: "Antico" ),
           ( english: "Pottery", italian: "Ceramica" ),
           ( english: "Monks", italian: "Monaci" ),
           ( english: "Widely", italian: "Ampia" ),
           ( english: "Barrels", italian: "Barili" ),
           ( english: "Bounds", italian: "Limiti/confini" ),
           ( english: "Bond", italian: "Legame/obbligazione" ),
           ( english: "Charm", italian: "Fascino" ),
           ( english: "Willing", italian: "Disposto/pronto" ),
           ( english: "Strength", italian: "Forza" ),
           ( english: "Tough", italian: "Duro/resistente" ),
           ( english: "Outcome", italian: "Risultato" ),
           ( english: "Engrossed in", italian: "Assorbito/immerso" ),
           ( english: "Doggedly", italian: "Ostinato" ),
           ( english: "Come by", italian: "Acquisire" ),
           ( english: "Purpose", italian: "Intenzione" ),
           ( english: "In law", italian: "Parenti acquisiti" ),
           ( english: "Fancy sb", italian: "Avere una cotta" ),
           ( english: "Stand by", italian: "Supportare qualcuno" ),
           ( english: "Put up with", italian: "Sopportare/tollerare" ),
           ( english: "Tie the knot", italian: "Sposarsi" ),
           ( english: "Jolly", italian: "Allegro/vivace" ),
           ( english: "Feel blue", italian: "Cattivo umore" ),
           ( english: "Wrinkles", italian: "Rughe" ),
           ( english: "Beard", italian: "Barba" ),
           ( english: "Pale", italian: "Pallido" ),
           ( english: "Tanned", italian: "Abbronzato" ),
           ( english: "Take after", italian: "Assomigliare" ),
           ( english: "Get along with", italian: "Andare d'accordo con" ),
           ( english: "Chubby", italian: "Paffuto" ),
           ( english: "Bald", italian: "Pelato" ),
           ( english: "Stubborn", italian: "Testardo" ),
           ( english: "Outgoing", italian: "Estroverso" ),
           ( english: "Ruthless", italian: "Spietato/crudele" ),
           ( english: "Clamp down", italian: "Reprimere" ),
           ( english: "The bottom line", italian: "L'essenza" ),
           ( english: "Shape", italian: "Forma" ),
           ( english: "Shaping", italian: "Modellare" ),
           ( english: "Stand up for", italian: "Difendere" ),
           ( english: "Upset", italian: "Dispiaciuto/arrabbiato" ),
           ( english: "Scruffy", italian: "Trasandato" ),
           ( english: "Shy", italian: "Timido" ),
           ( english: "Show off", italian: "Mettersi in mostra" ),
           ( english: "Lack", italian: "Mancanza" ),
           ( english: "Dead end job", italian: "Lavoro senza prospettive" ),
           ( english: "Shift", italian: "Turno lavorativo" ),
           ( english: "Resign", italian: "Dimettersi" ),
           ( english: "Perk", italian: "Bonus/beneficio" ),
           ( english: "Intern", italian: "Stagista/tirocinante" ),
           ( english: "Surveys", italian: "Sondaggi/indagini" ),
           ( english: "Nutshell", italian: "In sintesi" ),
           ( english: "Overwhelming", italian: "Travolgente/opprimente" ),
           ( english: "Stepping stones", italian: "Passo verso il successo" ),
           ( english: "Savvy", italian: "Esperto" ),
           ( english: "Plan ahead", italian: "Pianificare in anticipo" ),
           ( english: "Short term", italian: "Breve termine" ),
           ( english: "Cutting edge", italian: "All'avanguardia" ),
           ( english: "Pointless", italian: "Senza senso" ),
           ( english: "Outbreak", italian: "Scoppio" ),
           ( english: "Outlook", italian: "Prospettiva" ),
           ( english: "Breakthrough", italian: "Svolta" ),
           ( english: "Gizmo", italian: "Aggeggio" ),
           ( english: "Out of the loop", italian: "Non essere informato" ),
           ( english: "Former", italian: "Ex/precedente" ),
           ( english: "Flatmate", italian: "Coinquilino" ),
           ( english: "Darling", italian: "Tesoro" ),
           ( english: "Stunning", italian: "Mozzafiato" ),
           ( english: "Captivating", italian: "Affascinante" ),
           ( english: "Gorgeous", italian: "Splendido" ),
           ( english: "Hideous", italian: "Orribile" ),
           ( english: "Rooted", italian: "Radicato" ),
           ( english: "Lit", italian: "Acceso/illuminato" ),
           ( english: "Seldom", italian: "Raramente" ),
           ( english: "Polite", italian: "Educato" ),
           ( english: "Fancy", italian: "Elegante" ),
           ( english: "Steam", italian: "Vapore" ),
           ( english: "Unpleasant", italian: "Spiacevole" ),
           ( english: "Set off", italian: "Partire" ),
           ( english: "Foster", italian: "Incoraggiare" ),
           ( english: "Bustling", italian: "Vivace" ),
           ( english: "Overcoming", italian: "Superare" ),
           ( english: "Fundraiser", italian: "Raccolta fondi" ),
           ( english: "Drought", italian: "Siccità" ),
           ( english: "Famine", italian: "Carestia" ),
           ( english: "Sponsor", italian: "Sostenitore" ),
           ( english: "Aid", italian: "Aiuto umanitario" ),
           ( english: "Carry out", italian: "Eseguire" ),
           ( english: "Carry on", italian: "Continuare" ),
           ( english: "Shortages", italian: "Carenza" ),
           ( english: "Foodbank", italian: "Banco alimentare" ),
           ( english: "Hunger", italian: "Fame" ),
           ( english: "Struggle", italian: "Lotta/sforzo" ),
           ( english: "Sown", italian: "Seminato" ),
           ( english: "Sailed", italian: "Navigato" ),
           ( english: "Shore", italian: "Riva/costa" ),
           ( english: "Offshore", italian: "Al largo" ),
           ( english: "Towards", italian: "Verso" ),
           ( english: "Along", italian: "Lungo" ),
           ( english: "Across", italian: "Attraverso" ),
           ( english: "Down", italian: "Giù" ),
           ( english: "Through", italian: "Attraverso" ),
           ( english: "Over", italian: "Oltre/sopra" ),
           ( english: "Below", italian: "Sotto" ),
           ( english: "Harmful", italian: "Dannoso" ),
           ( english: "Dependable", italian: "Affidabile" ),
           ( english: "Significant", italian: "Importante" ),
           ( english: "Carried", italian: "Portato" ),
           ( english: "Led", italian: "Guidato" ),
           ( english: "Clue", italian: "Indizio" ),
           ( english: "Still", italian: "Ancora" ),
           ( english: "Awareness", italian: "Consapevolezza" ),
           ( english: "Severity", italian: "Gravità" ),
           ( english: "Patterns", italian: "Modelli" ),
           ( english: "Widespread", italian: "Ampia diffusione" ),
           ( english: "Withdraw", italian: "Prelevare" ),
           ( english: "Bargain", italian: "Affare" ),
           ( english: "Mortgage", italian: "Mutuo" ),
           ( english: "Wealthy", italian: "Ricco" ),
           ( english: "Broke", italian: "Povero" ),
           ( english: "Rip-off", italian: "Fregatura" ),
           ( english: "Shopaholic", italian: "Shopping dipendente" ),
           ( english: "Chain store", italian: "Catena di negozi" ),
           ( english: "Minted", italian: "Coniato" ),
           ( english: "Worth", italian: "Di valore" ),
           ( english: "Splash out", italian: "Spendere un sacco" ),
           ( english: "Hedonistic", italian: "Edonistico" ),
           ( english: "Heritage", italian: "Patrimonio" ),
           ( english: "Bohemian", italian: "Stile di vita artistico" ),
           ( english: "Laid back", italian: "Rilassato" ),
           ( english: "Neatly", italian: "Precisamente" ),
           ( english: "Praise", italian: "Lode" ),
           ( english: "Backlash", italian: "Reazione negativa" ),
           ( english: "Dare", italian: "Sfidare" ),
           ( english: "Wiser", italian: "Saggio" ),
           ( english: "Recklessness", italian: "Imprudente" ),
           ( english: "Wound", italian: "Ferita" ),
           ( english: "Rash", italian: "Eruzione cutanea" ),
           ( english: "Poorly", italian: "Male" ),
           ( english: "Pass out", italian: "Svenire" ),
           ( english: "Run-down", italian: "Non sentirsi bene" ),
           ( english: "Bug", italian: "Virus" ),
           ( english: "Sprain", italian: "Storta" ),
           ( english: "Ankle", italian: "Caviglia" ),
           ( english: "Pull a muscle", italian: "Strapparsi un muscolo" ),
           ( english: "Stitches", italian: "Punti di sutura" ),
           ( english: "Scar", italian: "Cicatrice" ),
           ( english: "Crutches", italian: "Stampelle" ),
           ( english: "Painkiller", italian: "Antidolorifico" ),
           ( english: "Pain", italian: "Dolore" ),
           ( english: "Gain", italian: "Guadagno" ),
           ( english: "Witness", italian: "Testimone" ),
           ( english: "Burglar", italian: "Ladro" ),
           ( english: "Fraudster", italian: "Truffatore" ),
           ( english: "Arson", italian: "Incendio doloso" ),
           ( english: "Arsonist", italian: "Piromane" ),
           ( english: "Mugging", italian: "Rapina" ),
           ( english: "Trial", italian: "Processo" ),
           ( english: "Copycat", italian: "Copione" ),
           ( english: "Allegiance", italian: "Alleanza" ),
           ( english: "Loyalty", italian: "Lealtà" ),
           ( english: "Fast-forward", italian: "Mandare avanti veloce" ),
           ( english: "Behaviour", italian: "Comportamento" ),
           ( english: "Theft", italian: "Furto" ),
           ( english: "Guilty", italian: "Colpevole" ),
           ( english: "Perpetrator", italian: "Autore del reato" ),
           ( english: "Shoplifting", italian: "Taccheggio" ),
           ( english: "Set-back", italian: "Contrattempo" ),
           ( english: "Fulfilling", italian: "Appagante" ),
           ( english: "Hit rock bottom", italian: "Toccare il fondo" ),
           ( english: "Cool down", italian: "Raffreddarsi" ),
           ( english: "Referee", italian: "Arbitro" ),
           ( english: "Pitch", italian: "Campo/presentazione" ),
           ( english: "Hurdle", italian: "Ostacolo" ),
           ( english: "Overcome", italian: "Superare" ),
             ( english: "Expectation", italian: "Aspettativa" ),
             ( english: "Visualisation", italian: "Visualizzazione (in senso di motivazione psicologica)" ),
             ( english: "Remarkable", italian: "Notevole / straordinario / eccezionale" ),
             ( english: "Triumph", italian: "Trionfo" ),
             ( english: "Apart", italian: "Separato / distante" ),
             ( english: "Woodland", italian: "Bosco" ),
             ( english: "Cliffs", italian: "Scogliera" ),
             ( english: "Lush", italian: "Rigoglioso" ),
             ( english: "Barren", italian: "Arido" ),
             ( english: "Marvel", italian: "Meraviglia" ),
             ( english: "Niches", italian: "Nicchie" ),
             ( english: "Defied", italian: "Sfidato" ),
             ( english: "Living things", italian: "Esseri viventi" ),
             ( english: "Thrive", italian: "Prosperare" ),
             ( english: "Platypus", italian: "Ornitorinco" ),
             ( english: "Venomous", italian: "Velenoso" ),
             ( english: "Mammals", italian: "Mammifero" ),
             ( english: "Spikes", italian: "Spine" ),
             ( english: "Biased", italian: "Parziale / di parte" ),
             ( english: "Unbiased", italian: "Imparziale / non di parte" ),
             ( english: "Upcycling", italian: "Riciclo creativo" ),
             ( english: "Throw away", italian: "Buttare via" ),
             ( english: "Phase out", italian: "Eliminare gradualmente" ),
             ( english: "Headlines", italian: "Titoli / prime pagine" ),
             ( english: "Boredom", italian: "Noia" ),
             ( english: "Dress up", italian: "Vestirsi elegantemente" ),
             ( english: "Dress down", italian: "Vestirsi in modo informale" ),
             ( english: "Trendsetter", italian: "Colui che lancia una tendenza" ),
             ( english: "Tracksuit", italian: "Tuta" ),
             ( english: "Trainers", italian: "Scarpe da ginnastica" ),
             ( english: "Garment", italian: "Indumento" ),
             ( english: "Suit", italian: "Abito" ),
             ( english: "Fade", italian: "Sbiadire" ),
             ( english: "Cheering", italian: "Tifo / incitamento" ),
             ( english: "Venue", italian: "Luogo / sede" ),
             ( english: "Dubbed", italian: "Doppiato" ),
             ( english: "Stick", italian: "Attenersi" ),
             ( english: "Aim", italian: "Obiettivo / scopo" ),
             ( english: "Catwalk", italian: "Passerella" ),
             ( english: "Bungalow", italian: "Casa ad un solo piano" ),
             ( english: "Outskirts", italian: "Periferia" ),
             ( english: "Cottage", italian: "Casetta / casa di campagna" ),
             ( english: "Cosy", italian: "Accogliente, confortevole" ),
             ( english: "Sprawling", italian: "Esteso / in espansione" ),
             ( english: "Bustling", italian: "Vivace" ),
             ( english: "Do up", italian: "Ristrutturare / allacciare / abbellire" ),
             ( english: "The suburb", italian: "Sobborgo (periferia bella)" ),
             ( english: "Dodgy", italian: "Losco / sospetto" ),
             ( english: "Plenty", italian: "Abbondanza / molto" ),
             ( english: "Hustle and bustle", italian: "Trambusto e frenesia" ),
             ( english: "Boast", italian: "Vantarsi / vanto" ),
             ( english: "Sparrow", italian: "Passero" ),
             ( english: "Nevertheless", italian: "Tuttavia / nonostante ciò" ),
             ( english: "Silly", italian: "Sciocco / stupido" ),
             ( english: "Con artist", italian: "Truffatore" ),
             ( english: "Smuggling", italian: "Contrabbando" ),
             ( english: "Whereas", italian: "Mentre" ),
             ( english: "At least", italian: "Almeno" ),
             ( english: "All in all", italian: "Tutto sommato" ),
             ( english: "On the whole", italian: "Nel complesso" ),
             ( english: "As a matter of fact", italian: "In effetti" ),
             ( english: "Enhanced", italian: "Migliorato" ),
             ( english: "Appealed", italian: "Fatto ricorso" ),
             ( english: "Defeated", italian: "Sconfitto" ),
               ( english: "Moreover", italian: "Inoltre / per di più" ),
               ( english: "Therefore", italian: "Pertanto / quindi" ),
               ( english: "However", italian: "Tuttavia / però" ),
               ( english: "Anyway", italian: "Comunque / in ogni caso" ),
               ( english: "Perceiver", italian: "Percepisce / comprende" ),
               ( english: "Notices", italian: "Notare / si accorge" ),
               ( english: "Unsuited", italian: "Inadatto" ),
               ( english: "Disbelief", italian: "Incredulità" ),
               ( english: "Lean and wiry", italian: "Magro e snello (ma forte)" ),
               ( english: "Leaping", italian: "Saltare" ),
               ( english: "Abseil", italian: "Calarsi" ),
               ( english: "Belayer", italian: "Assicurare nell’arrampicata / mettere la sicura" ),
               ( english: "Mutters", italian: "Borbotta" ),
               ( english: "Catch up with something", italian: "Recuperare qualcosa (che non si ha avuto tempo di fare)" ),
               ( english: "Give something away", italian: "Rivelare un segreto" ),
               ( english: "Fall Through", italian: "Fallire o non accadere" ),
               ( english: "Come across something or somehow", italian: "Trovare o incontrare qualcosa o qualcuno per caso" ),
               ( english: "Sort something out", italian: "Risolvere" ),
               ( english: "Take after someone", italian: "Assomigliare ad un familiare più anziano" ),
               ( english: "Live up to something", italian: "Essere all’altezza delle aspettative" ),
               ( english: "Get away with something", italian: "Riuscire a non essere scoperti facendo qualcosa di sbagliato" )
             
    ]
    
    // Mescola l'array (Fisher-Yates)
    func shuffleArray<T>(_ array: [T]) -> [T] {
        var arr = array
        for i in stride(from: arr.count - 1, through: 1, by: -1) {
            let j = Int.random(in: 0...i)
            arr.swapAt(i, j)
        }
        return arr
    }
    
    // SEZIONE WIDGETKIT OBBLIGATORIA
    
    // 2.1 - placeholder: contenuto fittizio da mostrare quando il widget è in caricamento
    func placeholder(in context: Context) -> VocabularyEntry {
        VocabularyEntry(date: Date(),
                        englishWord: "Loading...",
                        italianWord: "Caricamento...")
    }
    
    // 2.2 - getSnapshot: fornisce uno snapshot rapido (per anteprima)
    func getSnapshot(in context: Context, completion: @escaping (VocabularyEntry) -> Void) {
        let entry = VocabularyEntry(date: Date(),
                                   englishWord: "Bland",
                                   italianWord: "Insipido")
        completion(entry)
    }
    
    // 2.3 - getTimeline: qui crei la "timeline" con i dati che il widget deve mostrare nel tempo
    func getTimeline(in context: Context, completion: @escaping (Timeline<VocabularyEntry>) -> Void) {
        
        // Mescoliamo le coppie prima di creare le entry
        let shuffledPairs = shuffleArray(vocabularyPairs)
        
        // Creiamo un array di "entries"
        var entries: [VocabularyEntry] = []
        var currentDate = Date()
        
        // Intervallo di aggiornamento: 1 ora (3600 secondi).
        // Cambialo come preferisci (ad es. ogni 30 minuti, o 24 ore)
        let updateInterval: TimeInterval = 60 * 15
        
        // Per ogni coppia di vocaboli, creiamo una entry
        for pair in shuffledPairs {
            let entry = VocabularyEntry(
                date: currentDate,
                englishWord: pair.english,
                italianWord: pair.italian
            )
            entries.append(entry)
            
            // Aumentiamo la data di "updateInterval"
            // così la prossima entry apparirà dopo un'ora
            currentDate += updateInterval
        }
        
        // Creiamo la timeline
        let timeline = Timeline(entries: entries, policy: .atEnd)
        completion(timeline)
    }
}

// MARK: - 3. Vista SwiftUI del widget (come disegnare ogni entry)
struct VocabularyWidgetEntryView: View {
    var entry: VocabularyEntry

    var body: some View {
        VStack(alignment: .center, spacing: 8) {
            Text(entry.englishWord)
                .font(.system(size: 18, weight: .bold))
                .foregroundColor(.primary)

            Divider()
                .frame(width: 80)

            Text(entry.italianWord)
                .font(.system(size: 16))
                .foregroundColor(.secondary)
        }
        .padding()
        // Nuovo sfondo raccomandato per i widget iOS 17
        .containerBackground(.fill.tertiary, for: .widget)
    }
}

// MARK: - 4. Definizione del widget

struct VocabularyWidget: Widget {
    let kind: String = "VocabularyWidget"

    var body: some WidgetConfiguration {
        StaticConfiguration(kind: kind,
                            provider: VocabularyProvider()) { entry in
            VocabularyWidgetEntryView(entry: entry)
        }
        // Seleziona quali dimensioni di widget vuoi supportare
        .configurationDisplayName("Vocabulary Card")
        .description("Mostra vocaboli in inglese e la loro traduzione italiana.")
        .supportedFamilies([.systemSmall, .systemMedium, .systemLarge])
    }
}
