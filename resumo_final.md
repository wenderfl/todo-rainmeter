# ToDo List Minimalist Pro - Resumo & Manual

Este documento contém o resumo da arquitetura da skin Rainmeter To-Do List, englobando visual ultra-limpo, dimensionamento proporcional, suporte a negrito (bold), alinhamento óptico dos botões e painel de configurações ergonômico.

## 🌟 Arquitetura da Interface (UI/UX)

### 1. Alinhamento Óptico dos Checkboxes
- **Compensação Visual de Altura:** Ajustado o deslocamento vertical óptico do glyph FontAwesome (`+0.22 * S`), alinhando a base e o centro do quadrado com a altura das letras maiúsculas e o centro do texto da tarefa.
- **Botões Estáticos & Texto Fluido:** O checkbox e a lixeira permanecem fixos e sólidos para clique firme, perfeitamente centralizados com a linha de texto.

### 2. Barra Lateral de Ações
- **`+` Adicionar**: Abre o campo de digitação de nova tarefa.
- **`fa-refresh` Recarregar**: Sincroniza a lista.
- **`fa-trash` Limpar Concluídas**: Ícone de lata de lixo para limpar todas as tarefas marcadas com 1 clique.
- **`fa-cog` Configurações**: Abre a janela de personalização.

### 3. Painel de Configurações Moderno & Ergonômico
- **Design de Linhas Interativas:** 13 opções completas com ícones em ciano suave, legendas legíveis e valores destacados com efeito hover.
- **Opções Disponíveis:**
  - `Fonte`: Edição in-place com clique direto.
  - `Tamanho`: Dimensionamento proporcional dinâmico de toda a skin.
  - `Texto em Negrito`: Alternador rápido (*ATIVADO/DESATIVADO*) para estilo Bold.
  - `Cor do Texto`: Configuração de cor RGB/RGBA.
  - `Largura`: Ajuste da largura do card.
  - `Cor de Fundo`: Cor do painel translúcido.
  - `Opacidade Fundo`: Controle de transparência do fundo (0 a 255).
  - `Fundo Transparente`: Alternador rápido (*ON/OFF*) para fundo 100% transparente.
  - `Opacidade Botões`: Controle de transparência dos botões laterais (0 a 255).
  - `Estilo Checkbox`: Alternância entre caixas quadradas e círculos.
  - `Efeitos Sonoros`: Alternador de áudio (*LIGADO/MUDO*).
  - `Oscilar Tarefas`: Ajuste de amplitude da flutuação das tarefas.
  - `Escalar Tarefas`: Ajuste de amplitude do efeito de pulso/respiração do texto.
- **Rodapé:** Botões em destaque para *Restaurar Padrões* e *Fechar*.
