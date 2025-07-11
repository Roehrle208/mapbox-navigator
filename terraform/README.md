## 🔐 Sicherheitskonzept für Token (GitHub, API-Keys etc.)

### Aktueller Entwicklungsmodus (lokal):
Der GitHub-Token wird aktuell in der Datei `terraform.tfvars` gespeichert.

**Hinweis:**
- Diese Datei ist in `.gitignore` enthalten und wird nicht mit ins Repository übernommen.
- Niemals öffentlich hochladen oder per E-Mail weitergeben!

### Empfohlene Praxis für sensible Projekte:
- Token ausschließlich im Passwortmanager speichern
- Vor dem Ausführen lokal temporär setzen (z. B. via `export` oder PowerShell)
- Alternativ über eine sichere Secrets-Verwaltung wie Terraform Cloud (siehe unten)

---

## ☁️ Terraform Cloud (optional, für spätere Stufe)

Terraform Cloud erlaubt:

- Verwaltung von `terraform.tfstate` (Zustand) zentral und sicher
- Sichere Speicherung von Secrets (API-Keys, Tokens etc.) als Environment Variables
- Ausführung deiner Terraform-Pläne direkt über GitHub-Repos

Weitere Infos: https://developer.hashicorp.com/terraform/cloud-docs

