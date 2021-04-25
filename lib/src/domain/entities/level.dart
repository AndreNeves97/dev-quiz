enum Level {
  facil,
  medio,
  dificil,
  perito,
}

Level parseLevel(String key) => {
      'facil': Level.facil,
      'medio': Level.medio,
      'dificil': Level.dificil,
      'perito': Level.perito,
    }[key]!;
