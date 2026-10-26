## Struktura projekta
```
├── NavigabilnostApp.swift //entry point
├── ContentView.swift //root view
├── Models
│   ├── NavigationKind.swift
│   └── NavigationType.swift
└── Views
    ├── BindingExampleView.swift
    ├── ObservableExampleView.swift
    ├── SheetViewDemo.swift
    ├── SplitViewDemo.swift
    ├── StackViewDemo.swift
    └── TabViewDemo.swift
```

## Kompajliranje i pokretanje

Nakon otvaranja projekta u XCode, pokrenite build s Cmd+R. 
Pokretanje je moguće na iPhone i iPad simulatoru te na MacOS-u kao iPad aplikaciju

Minimum XCode SDK verzija: 27.0

Rađeno za iOS SDK 27.0

Supported destinations:
 - iPhone (iOS)
 - iPad (iOS)
 - Mac (designed for iPad) (iOS)



# Objašnjenja koda

## ObservableExampleView.swift
Ova datoteka prikazuje korištenje `@Observable` anotacije za praćenje stanja objekta `AppSettings`. `SettingsView` koristi `@State` za instanciranje postavki i omogućuje promjenu boje teme putem gumba, što automatski osvježava korisničko sučelje prilikom svake promjene varijable `themeColor`.

## SheetView.swift
Ovdje je demonstriran modalni prikaz pomoću `.sheet` modifikatora. `SheetViewDemo` koristi lokalno stanje (`@State private var isSheetPresented`) za upravljanje vidljivošću modala. Kada se aktivira, prikazuje se `NekiView` koji koristi `@Environment(\.dismiss)` kako bi programski zatvorio samog sebe s ekrana.

## SplitViewDemo.swift
Prikazuje hijerarhijsku navigaciju pomoću `NavigationSplitView`, idealnu za uređaje s većim ekranima. Podaci su strukturirani kroz ugniježđene modele `Store`, `Department` i `Employee`. Sučelje je podijeljeno u tri stupca: glavni popis trgovina, popis odjela (sadržaj) i detalje o zaposlenicima, pri čemu se svaki sljedeći stupac dinamički osvježava ovisno o odabiru u prethodnom.

## StackViewDemo.swift
Demonstrira korištenje `NavigationStack` za klasičnu dubinsku navigaciju. Sadrži primjere izravnog definiranja odredišnih pogleda unutar poveznice (`SimpleViewDestinationExample`) te napredniji pristup prosljeđivanja vrijednosti (`SimpleValueDestinationExample`) pomoću modifikatora `.navigationDestination(for:)`, što omogućuje čišće odvajanje navigacijske logike od samog prikaza.

## TabViewDemo.swift
Objašnjava implementaciju kartične navigacije putem komponente `TabView`. Datoteka uključuje standardni donji navigacijski izbornik te prikaz stila stranice (`PageStyleTabView`) koji omogućuje vodoravno klizanje između ekrana. `SimpleTabViewDemo` dodatno prikazuje strukturiranje kartica koristeći `Tab` i `TabSection`.

## ContentView.swift
Ovo je središnji izbornik aplikacije koji koristi `NavigationStack` za usmjeravanje korisnika na različite demo ekrane. Prikazuje dinamičko generiranje popisa navigacijskih opcija te koristi `.navigationDestination`  sa  `switch` grananjem za prikaz odabranog ekrana. Također sadrži gumb za otvaranje `SplitViewDemo` prikaza preko cijelog ekrana pomoću `.fullScreenCover` modifikatora.

## NavigabilnostApp.swift
Glavna ulazna točka (entry point) SwiftUI aplikacije. Označena je atributom `@main` i postavlja osnovnu strukturu aplikacije inicijalizirajući `WindowGroup` s `ContentView` kao početnim ekranom.

## BindingExampleView.swift
Ova datoteka demonstrira dvosmjernu povezanost podataka pomoću `@Binding` svojstva. Glavni prikaz, `BindingExampleView`, čuva lokalno stanje prekidača (`@State private var isOn = false`) i prosljeđuje ga podređenom pogledu `CustomToggleView`. Podređeni pogled koristi `@Binding` kako bi izravno manipulirao tim stanjem unutar `Toggle` komponente, omogućujući roditeljskom pogledu da registrira sve promjene.
