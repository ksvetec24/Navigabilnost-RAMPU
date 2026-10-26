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

<p>
    <img src="https://github.com/ksvetec24/Navigabilnost-RAMPU/blob/main/resources/Screenshot%202026-10-26%20at%2010.37.13.png" width=49%/>
    <img src="https://github.com/ksvetec24/Navigabilnost-RAMPU/blob/main/resources/Screenshot%202026-10-26%20at%2010.37.35.png" width=49%/>
</p>

Minimum XCode SDK verzija: 27.0

Rađeno za iOS SDK 27.0

Supported destinations:
 - iPhone (iOS)
 - iPad (iOS)
 - Mac (designed for iPad) (iOS)



# Objašnjenja koda

## ObservableExampleView.swift
Ova datoteka prikazuje korištenje `@Observable` anotacije za praćenje stanja objekta `AppSettings`. `SettingsView` koristi `@State` za instanciranje postavki i omogućuje promjenu boje teme putem gumba, što automatski osvježava korisničko sučelje prilikom svake promjene varijable `themeColor`.
<p align="center">
    <img src="https://github.com/ksvetec24/Navigabilnost-RAMPU/blob/main/resources/ObservableExampleView.png" width=30%/>
    <img src="https://github.com/ksvetec24/Navigabilnost-RAMPU/blob/main/resources/ObservableExampleView2.png" width=30%/>
</p>

## SheetView.swift
Ovdje je demonstriran modalni prikaz pomoću `.sheet` modifikatora. `SheetViewDemo` koristi lokalno stanje (`@State private var isSheetPresented`) za upravljanje vidljivošću modala. Kada se aktivira, prikazuje se `NekiView` koji koristi `@Environment(\.dismiss)` kako bi programski zatvorio samog sebe s ekrana.
<p align="center">
    <img src="https://github.com/ksvetec24/Navigabilnost-RAMPU/blob/main/resources/Screenshot%20iPhone%2018%20Pro%2026-10-2026%20at%2006.01.38.png" width=30%/>
    <img src="https://github.com/ksvetec24/Navigabilnost-RAMPU/blob/main/resources/Screenshot%20iPhone%2018%20Pro%2026-10-2026%20at%2006.01.54.png" width=30%/>
</p>


## SplitViewDemo.swift
Prikazuje hijerarhijsku navigaciju pomoću `NavigationSplitView`, idealnu za uređaje s većim ekranima. Podaci su strukturirani kroz ugniježđene modele `Store`, `Department` i `Employee`. Sučelje je podijeljeno u tri stupca: glavni popis trgovina, popis odjela (sadržaj) i detalje o zaposlenicima, pri čemu se svaki sljedeći stupac dinamički osvježava ovisno o odabiru u prethodnom.

### Mobilni prikaz
<p align="center">
    <img src="https://github.com/ksvetec24/Navigabilnost-RAMPU/blob/main/resources/SplitViewDemo%20-%3E%20Portrait.png" width=30%/>
    <img src="https://github.com/ksvetec24/Navigabilnost-RAMPU/blob/main/resources/SplitViewDemo%20-%3E%20Portrait2.png" width=30%/>
    <img src="https://github.com/ksvetec24/Navigabilnost-RAMPU/blob/main/resources/SplitViewDemo%20-%3E%20Portrait3.png" width=30%/>
</p>


### iPad/MacOS prikaz
<img src="https://github.com/ksvetec24/Navigabilnost-RAMPU/blob/main/resources/NavigationSplitViewMacOS.png" width=50%/>

## StackViewDemo.swift
Demonstrira korištenje `NavigationStack` za klasičnu dubinsku navigaciju. Sadrži primjere izravnog definiranja odredišnih pogleda unutar poveznice (`SimpleViewDestinationExample`) te napredniji pristup prosljeđivanja vrijednosti (`SimpleValueDestinationExample`) pomoću modifikatora `.navigationDestination(for:)`, što omogućuje čišće odvajanje navigacijske logike od samog prikaza.

### View destination primjer
<p align="center">
    <img src="https://github.com/ksvetec24/Navigabilnost-RAMPU/blob/main/resources/StackViewDemo.png" width=30%/>
    <img src="https://github.com/ksvetec24/Navigabilnost-RAMPU/blob/main/resources/StackViewDemo1.png" width=30%/>
</p>

### Value destination primjer
<p align="center">
    <img src="https://github.com/ksvetec24/Navigabilnost-RAMPU/blob/main/resources/ValueStackViewDemo.png" width=30%/>
    <img src="https://github.com/ksvetec24/Navigabilnost-RAMPU/blob/main/resources/ValueStackViewDemo2.png" width=30%/>
</p>


## TabViewDemo.swift
Objašnjava implementaciju kartične navigacije putem komponente `TabView`. Datoteka uključuje standardni donji navigacijski izbornik te prikaz stila stranice (`PageStyleTabView`) koji omogućuje vodoravno klizanje između ekrana. `SimpleTabViewDemo` dodatno prikazuje strukturiranje kartica koristeći `Tab` i `TabSection`.
<img src="https://github.com/ksvetec24/Navigabilnost-RAMPU/blob/main/resources/TabViewDemo.png" width=30%/>


## ContentView.swift
Ovo je središnji izbornik aplikacije koji koristi `NavigationStack` za usmjeravanje korisnika na različite demo ekrane. Prikazuje dinamičko generiranje popisa navigacijskih opcija te koristi `.navigationDestination`  sa  `switch` grananjem za prikaz odabranog ekrana. Također sadrži gumb za otvaranje `SplitViewDemo` prikaza preko cijelog ekrana pomoću `.fullScreenCover` modifikatora.
<img src="https://github.com/ksvetec24/Navigabilnost-RAMPU/blob/main/resources/Screenshot%20iPhone%2018%20Pro%2026-10-2026%20at%2007.14.01.png" width=30%/>

## NavigabilnostApp.swift
Glavna ulazna točka (entry point) SwiftUI aplikacije. Označena je atributom `@main` i postavlja osnovnu strukturu aplikacije inicijalizirajući `WindowGroup` s `ContentView` kao početnim ekranom.

## BindingExampleView.swift
Ova datoteka demonstrira dvosmjernu povezanost podataka pomoću `@Binding` svojstva. Glavni prikaz, `BindingExampleView`, čuva lokalno stanje prekidača (`@State private var isOn = false`) i prosljeđuje ga podređenom pogledu `CustomToggleView`. Podređeni pogled koristi `@Binding` kako bi izravno manipulirao tim stanjem unutar `Toggle` komponente, omogućujući roditeljskom pogledu da registrira sve promjene.
<p align="center">
    <img src="https://github.com/ksvetec24/Navigabilnost-RAMPU/blob/main/resources/BindingExampleView.png" width=30%/>
    <img src="https://github.com/ksvetec24/Navigabilnost-RAMPU/blob/main/resources/BindingExampleView2.png" width=30%/>
</p>
