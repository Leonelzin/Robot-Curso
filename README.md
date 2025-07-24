# 🚀 Projeto Robot-Curso — Automação com Robot Framework

Este projeto contém testes automatizados utilizando **Robot Framework** e **Browser Library**. A estrutura está organizada para demonstrar boas práticas com arquivos de recursos reutilizáveis, múltiplos testes e geração de evidências (screenshots, relatórios).

---

## ✅ Pré-requisitos

- Python 3.12 ou superior  
- VS Code recomendado (+ extensão [Robot Framework Language Server](https://marketplace.visualstudio.com/items?itemName=robocorp.robotframework-lsp))  
- Git (opcional, para clonar o projeto)

---

## 📂 Estrutura do projeto

```
.venv/                        # Ambiente virtual isolado
browser/                      # Evidências: screenshots e traces
common/                       # Recursos e keywords reutilizáveis
  └─ amazon_resources.robot
tests/                       # Casos de teste
  ├─ amazon_test.robot
  └─ amazon_test_bdd.robot
README.md                    # Este guia
```

---

## ⚡ Como rodar

### 1️⃣ Clonar o projeto

```bash
git clone https://github.com/seu-usuario/Robot-Curso.git
cd Robot-Curso
```

### 2️⃣ Criar e ativar ambiente virtual

```bash
python -m venv .venv
```

⚠️ **No PowerShell**:

```powershell
& ".venv\Scripts\Activate.ps1"
```

### 3️⃣ Instalar dependências e inicializar Browser Library

```bash
pip install robotframework
pip install robotframework-browser
rfbrowser init
```

---

## ▶️ Executar testes

Lembre-se de ativar o ambiente virtual antes:

```powershell
& ".venv\Scripts\Activate.ps1"
```

- Rodar teste específico:

```bash
robot tests\amazon_test.robot
```

- Rodar teste BDD:

```bash
robot tests\amazon_test_bdd.robot
```

- Rodar todos os testes na pasta `tests`:

```bash
robot tests
```

*Observação:* Os testes já importam automaticamente o recurso `common/amazon_resources.robot`.

---

## 📊 Relatórios e evidências

Após a execução, os arquivos abaixo são gerados:

- `log.html` — Detalhes da execução  
- `report.html` — Relatório geral resumido  
- `output.xml` — Resultado para integração  
- Screenshots em `browser/screenshot` (quando há falhas)

Abra `report.html` no navegador para visualizar os resultados.

---

## ❌ Erros comuns

### `'robot' não é reconhecido como comando`

> Certifique-se de ativar o ambiente virtual antes, usando:

```powershell
& ".venv\Scripts\Activate.ps1"
```
