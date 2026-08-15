<p align="center">
  <img src="./assets/header.svg" alt="CineFlow — native iOS application plan" width="94%" />
</p>

<p align="center">
  <a href="./README.md">Русский</a> · <strong>English</strong> · <a href="https://github.com/mrjakeball/portfolio">All projects</a>
</p>

# CineFlow iOS

A future native catalogue app bringing film collections, search, details, favourites, and legal trailer playback into one calm iOS interface.

> [!IMPORTANT]
> Development has not started yet. This is an honest project plan, not a finished-app demo; the visual below describes the intended flow rather than real screens.

| Project snapshot | Decision |
|---|---|
| Platform | iPhone · native iOS development |
| Current phase | Scoping, architecture, and milestone planning |
| Planned stack | `Swift` `UIKit` `URLSession` `AVPlayer` `MVVM` |
| Content | Catalogue metadata + trailers / public-domain video |
| Source | Will be created with the Xcode project |

<p align="center">
  <a href="./assets/concept-map.svg"><img src="./assets/concept-map.svg" alt="Planned CineFlow user journey" width="86%" /></a>
</p>

## One clear journey

The first version is not trying to become “another Netflix.” Its job is to complete one coherent path: open a collection, find a title, inspect its details, and play a trailer.

### 01 · Foundation

- tab navigation: Home, Catalogue, Favourites, and Profile;
- poster collections and a detailed title screen;
- API-driven catalogue with deliberate loading and error states.

### 02 · Personal space

- search and filters;
- favourites and viewing history;
- on-device trailer position restoration.

### 03 · Quality

- MVVM with a separate service layer;
- image caching and cancellation of obsolete requests;
- unit tests for core logic, polished empty states, and VoiceOver checks.

## Definition of ready

The showcase will change status only after a real Xcode build, iPhone Simulator verification, original screenshots, and reproducible tests exist. Until then, CineFlow remains a transparent roadmap project.

<p align="center">
  <a href="https://github.com/mrjakeball/portfolio">← Back to all projects</a>
</p>
