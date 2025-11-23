# Data Contract Demo

[![Data Contract Specification v1.2.1](https://img.shields.io/badge/Data%20Contract-v1.2.1-blue)](https://datacontract.com)

Questo progetto implementa un Data Contract per la gestione dei dati relativi ai personaggi delle serie animate Futurama e I Simpson. Il contratto definisce la struttura, i vincoli e le specifiche dei dati attraverso un'interfaccia PostgreSQL.

## 🎯 Caratteristiche Principali

- Definizione strutturata dei dati dei personaggi tramite Data Contract
- uv come package manager
- Taskfile per eseguire operazioni utili
- Implementazione basata su PostgreSQL
- Containerizzazione tramite Docker
- Script di inizializzazione automatica del database

## 🏗️ Struttura del Progetto

```
.
├── init-scripts/
│   ├── create-tables.sql # Script creazione tabelle
│   └── insert-data.sql   # Script inserimento dati
├── .envrc                # Variabili d'ambiente
├── datacontract.yaml     # Definizione del data contract
├── docker-compose.yaml   # Configurazione Docker
├── pyproject.toml        # Metadati del progetto
├── README.md             # Documentazione
└── Taskfile.yaml         # Task utili per il progetto
```

## 📋 Prerequisiti

- [`Docker`](https://docs.docker.com/get-started/introduction/get-docker-desktop/) e `Docker Compose`.
 - [`uv`](https://docs.astral.sh/uv/) utilizzato come package manager.
 - [`task`](https://taskfile.dev) (opzionale) per eseguire le task contenute nel `Taskfile.yaml`.

## 🚀 Installazione e Avvio

1. Clona il repository:
   ```bash
   git clone https://github.com/sja-huware/datacontract-demo.git
   cd datacontract-demo
   ```

2. Avvia il container Docker:
   ```bash
   task start
   ```

3. Verifica che il container sia in esecuzione:
   ```bash
   docker-compose ps
   ```

### Taskfile
> A fast, cross-platform build tool inspired by Make, designed for modern workflows.

Il progetto contiene anche un `Taskfile.yaml`, che include una serie di task utili.

Per eseguire queste task puoi usare il tool [`task`](https://taskfile.dev), oppure eseguire i comandi direttamente con `uv run ...`.

## 🗄️ Struttura del Database

### Tabella `futurama`

| Campo             | Tipo    | Descrizione                    | Vincoli           |
|------------------|---------|-------------------------------|-------------------|
| character_id     | integer | ID univoco del personaggio    | Primary Key      |
| name             | varchar | Nome completo                 | Not Null         |
| species          | varchar | Specie del personaggio        | Not Null         |
| occupation       | varchar | Occupazione/professione       | -                |
| age              | integer | Età (min: 0)                 | -                |
| planet_of_origin | varchar | Pianeta di origine           | -                |
| first_appearance_year | integer | Anno della prima apparizione   | -                 |
| is_main_character | boolean | Personaggio principale   | Default false                 |

### Tabella `simpsons`

| Campo               | Tipo    | Descrizione                      | Vincoli           |
|--------------------|---------|----------------------------------|-------------------|
| character_id       | integer | ID univoco del personaggio       | Primary Key       |
| name               | varchar | Nome completo                    | Not Null          |
| role               | varchar | Ruolo nel contesto della serie   | -                 |
| age                | integer | Età                              | -                 |
| occupation         | varchar | Occupazione/professione          | -                 |
| family_member      | boolean | Appartiene a una famiglia        | Default false     |
| first_appearance_year | integer | Anno della prima apparizione   | -                 |
| catchphrase        | varchar | Frase caratteristica (catchphrase) | -              |

## 🛠️ Sviluppo

### Modificare i Dati
Per modificare o aggiungere nuovi dati, aggiorna gli script nella cartella `init-scripts/`:
1. `create-tables.sql` per modificare la struttura delle tabelle
2. `insert-data.sql` per modificare i dati di esempio

### Ricostruire il Container
Dopo modifiche agli script:
```bash
docker-compose down -v
docker-compose up -d
```

## Demo

Eseguire i seguenti comandi di esempio per provare le funzionalità del progetto.

### 1. Inizializzare un Data Contract base:

```bash
uv run datacontract init base.yaml
```

### 2. Creare un Data Contract da un file SQL:

```bash
uv run datacontract import --format sql --source ./init-scripts/create-tables.sql > import.yaml
```

### 3. Linting del contratto:

```bash
uv run datacontract lint
```

### 4. Esportare schemi e modelli:

```bash
uv run datacontract export --format jsonschema --model futurama >> futurama_schema.json
uv run datacontract export --format pydantic-model
uv run datacontract export --format dbt
uv run datacontract export --format html
```

### 5. Testare il Data Contract:

```bash
uv run datacontract test
```

Aggiungere un personaggio che non rispetta le regole di data quality del contratto:
```sql
INSERT INTO cartoons.futurama (name, species, occupation, age, planet_of_origin, first_appearance_year, is_main_character)
VALUES ('Scruffy', 'Human', 'Janitor', 5000, 'Earth', 2002, false);
```

---

Sviluppato con ❤️ da Jacopo Sardellini
