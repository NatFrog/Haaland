# Haaland

A Ruby on Rails fan community for sharing Haaland photos and starting discussions.

**You get what you give.**

## Features

- **Photo gallery** — upload and browse Haaland photos (JPEG, PNG, WebP, GIF)
- **Discussions** — create posts and talk about Haaland with other fans
- **Comments** — reply to discussion threads
- **Modern UI** — Manchester City–inspired dark theme with responsive layout

## Requirements

- Ruby 3.3+
- SQLite 3

## Setup

```bash
bundle install
bin/rails db:setup
bin/rails db:seed   # optional sample discussions
```

## Run locally

```bash
bin/rails server
```

Visit [http://localhost:3000](http://localhost:3000)

## Routes

| Path | Description |
|------|-------------|
| `/` | Home page with latest photos and discussions |
| `/photos` | Photo gallery |
| `/photos/new` | Upload a photo |
| `/posts` | Discussion board |
| `/posts/new` | Start a new discussion |

## Tech stack

- Ruby on Rails 8.1
- SQLite
- Active Storage (local file uploads)
- Hotwire (Turbo + Stimulus)
- Propshaft

## Notes

- Photo uploads are stored locally in `storage/` during development.
- No authentication is included — this is a starter template you can extend with Devise or similar.
