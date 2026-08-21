# 📝 Rainmeter To-Do List Pro

<p align="center">
  <img src="https://img.shields.io/badge/Rainmeter-Skin-blue?style=for-the-badge&logo=windows" alt="Rainmeter Skin" />
  <img src="https://img.shields.io/badge/Language-Lua%20%7C%20Rainmeter%20INI-orange?style=for-the-badge" alt="Languages" />
  <img src="https://img.shields.io/badge/Icons-FontAwesome-cyan?style=for-the-badge" alt="FontAwesome" />
  <img src="https://img.shields.io/badge/Design-Minimalist%20Glassmorphism-purple?style=for-the-badge" alt="Design" />
</p>

Uma skin moderna, ultra-minimalista e ergonômica de lista de tarefas (**To-Do List**) para o **[Rainmeter](https://www.rainmeter.net/)**. Projetada com foco em estética limpa para a área de trabalho, dimensionamento proporcional automático, animações orgânicas configuráveis, seletor de cores nativo e painel de controle completo.

---

## ✨ Principais Recursos

### 🎨 Visual & Ergonomia
- **Design Minimalista:** Interface limpa e flutuante no desktop, sem caixas pesadas ou elementos desnecessários.
- **Fundo Transparente & Vidro Escuro:** Suporte a painel translúcido elegante (*dark glassmorphism*) ou fundo 100% transparente.
- **Dimensionamento Proporcional Matemático:** Ao alterar o tamanho da fonte (`AppFontSize`), todos os elementos visuais (espaçamentos, ícones, checkboxes, botões laterais e campo de entrada) recalculam-se automaticamente em escala harmônica.
- **Alinhamento Óptico Centralizado:** O checkbox de conclusão e o texto da tarefa repousam na mesma linha de centro visual.
- **Texto em Negrito (Bold):** Alternador rápido para ativar/desativar estilo em negrito nas tarefas.

### 🌊 Animações & Fluidez
- **Mudança de Escala Orgânica (Respiração):** O texto das tarefas e os checkboxes realizam um sutil pulso em escala configurável a 60 FPS.
- **Oscilação Vertical:** Flutuação suave para cima e para baixo nas tarefas.
- **Estabilidade nos Cliques:** A barra lateral de ações e o card de fundo permanecem 100% ancorados e estáticos; os checkboxes acompanham a escala mas mantêm o eixo Y firme para cliques precisos.

### ⚙️ Painel de Configurações Completo
- **13 Opções Interativas com Efeito Hover:**
  - `Fonte`: Edição in-place com clique direto (Segoe UI, Roboto, Inter, etc.).
  - `Tamanho`: Dimensionamento dinâmico de toda a skin.
  - `Texto em Negrito`: Alternador rápido (*ATIVADO/DESATIVADO*).
  - `Cor do Texto`: Abre a **Caixa de Diálogo de Cores RGB nativa do Windows** (ou digitação manual com clique direito).
  - `Largura`: Ajuste de largura da skin.
  - `Cor de Fundo`: Abre o seletor de cores RGB para o fundo.
  - `Opacidade Fundo`: Controle de transparência de `0` a `255`.
  - `Fundo Transparente`: Alternador rápido (*ON/OFF*).
  - `Opacidade Botões`: Controle de discrição dos botões de ação laterais (`0` a `255`, com realce automático ao passar o mouse).
  - `Estilo Checkbox`: Alternância entre caixas quadradas e círculos.
  - `Efeitos Sonoros`: Alternador de áudio para conclusão e exclusão de tarefas.
  - `Oscilar Tarefas`: Ajuste de amplitude da flutuação.
  - `Escalar Tarefas`: Ajuste de amplitude do efeito de pulso/respiração.
- **Recarregamento Automático:** Sempre que o menu de configurações for fechado, a skin atualiza e recarrega instantaneamente.

---

## 🕹️ Atalhos & Controles da Barra Lateral

Ao lado direito da lista de tarefas, você encontra a coluna de ações discretas:

| Ícone | Ação | Descrição |
| :---: | :--- | :--- |
| `+` | **Adicionar** | Abre a caixa de texto para digitar e salvar uma nova tarefa (`Enter` salva, `Esc` cancela). |
| `fa-refresh` | **Recarregar** | Sincroniza a lista e recarrega os elementos visuais. |
| `fa-trash` | **Limpar Concluídas** | Remove todas as tarefas marcadas como concluídas com 1 clique. |
| `fa-cog` | **Configurações** | Abre o painel moderno de personalização da skin. |

---

## 📥 Instalação

1. Certifique-se de ter o **[Rainmeter](https://www.rainmeter.net/)** (versão 4.5 ou superior) instalado.
2. Clone ou faça o download deste repositório na pasta de skins do Rainmeter:
   ```bash
   git clone https://github.com/wenderfl/todo-rainmeter.git "%USERPROFILE%\Documents\Rainmeter\Skins\rainmeter-todo-list"
   ```
3. Abra o gerenciador do **Rainmeter**, clique em **Refresh all**.
4. Localize `rainmeter-todo-list` > `todo` > `todo.ini` e clique em **Carregar** (*Load*).

---

## 📂 Estrutura do Projeto

```text
rainmeter-todo-list/
├── @Resources/
│   ├── DynamicMeters.inc       # Medidores gerados dinamicamente
│   ├── FontAwesome.inc         # Mapeamento Unicode de glifos FontAwesome
│   ├── Variables.inc           # Configurações e variáveis ativas da skin
│   ├── MeasureDynamicTasks.lua # Backend em Lua: processamento de JSON, métricas e animações
│   ├── pick_color.ps1          # Script PowerShell para abrir a Caixa de Diálogo de Cores RGB do Windows
│   ├── json.lua                # Parser JSON rápido em Lua
│   ├── complete.wav            # Efeito sonoro de conclusão
│   └── delete.wav              # Efeito sonoro de exclusão
├── config/
│   └── config.ini              # Interface do painel de configurações
├── todo/
│   ├── tasks.json              # Arquivo de armazenamento das tarefas
│   └── todo.ini                # Widget principal da lista de tarefas
└── README.md                   # Documentação do projeto
```

---

## 👏 Créditos & Referências

- Este projeto foi inspirado e baseado no trabalho original de **[alperenozlu/rainmeter-todo](https://github.com/alperenozlu/rainmeter-todo)**.
- Agradecimentos à comunidade do **Rainmeter** e aos desenvolvedores dos pacotes de fontes **FontAwesome**.

---

## 📄 Licença

Este projeto é disponibilizado sob a licença [MIT](LICENSE).
