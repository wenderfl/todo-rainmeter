# ToDo List Minimalist Pro - Resumo & Manual

Este documento contém o resumo da arquitetura da skin Rainmeter To-Do List, englobando visual ultra-limpo, dimensionamento proporcional, suporte a negrito (bold), recarregamento automático no fechamento de configurações, caixa de diálogo de cores RGB e painel de configurações ergonômico.

## 🌟 Arquitetura da Interface (UI/UX)

### 1. Recarregamento Automático ao Fechar Configurações
- **Sincronização Imediata:** Configurado o hook nativo `OnUnloadAction` na janela de configurações. Sempre que o menu de configurações for fechado (pelo botão `X` no topo, pelo botão `Fechar` no rodapé, pelo ícone de engrenagem na barra lateral ou pelo menu de contexto do Rainmeter), a skin da lista To-Do é recalculada e recarregada instantaneamente.

### 2. Caixa de Diálogo de Cores RGB Nativa
- **Seletor Visual de Cores do Windows:** Ao clicar em **`Cor do Texto`** (ou `Cor de Fundo`) no painel de configurações, é aberta a **Caixa de Diálogo de Cores (Color Picker)** nativa do Windows com paleta completa, gradiente visual e ajuste fino de matiz/luminosidade.
- **Amostra de Cor em Tempo Real (Swatch):** Cada linha de cor exibe uma amostra visual retangular com a cor ativa.
- **Digitação Manual:** O clique com o botão direito continua disponível caso queira digitar o código RGB manualmente (ex: `255,255,255`).

### 3. Controle de Opacidade dos Botões
- **Formatação RGBA Válida:** O mecanismo processa rigorosamente 4 canais de cor (`R,G,B,Opacidade`), permitindo que qualquer valor de `0` a `255` em `Opacidade Botões` seja aplicado instantaneamente aos botões da barra lateral e ao botão de lixeira.
- **Efeito Hover:** Ao passar o mouse sobre qualquer botão lateral, ele se ilumina imediatamente.

### 4. Sincronização e Alinhamento Total das Tarefas
- **Checkbox com Escala Dinâmica & Y Fixo:** O checkbox acompanha a escala (`[MeasureScale]`) do texto das tarefas sem oscilar no eixo Y, garantindo estabilidade no clique e alinhamento visual de centro.
- **Botões Laterais & Fundo Estáticos:** A barra lateral de ações e o card de fundo continuam 100% ancorados no desktop.

### 5. Painel de Configurações Moderno & Ergonômico
- **Design de Linhas Interativas:** 13 opções completas com ícones em ciano suave, legendas legíveis e valores destacados com efeito hover.
- **Opções Disponíveis:**
  - `Fonte`: Edição in-place com clique direto.
  - `Tamanho`: Dimensionamento proporcional dinâmico de toda a skin.
  - `Texto em Negrito`: Alternador rápido (*ATIVADO/DESATIVADO*) para estilo Bold.
  - `Cor do Texto`: Abre a Caixa de Diálogo de Cores RGB do Windows (ou digitação manual com clique direito).
  - `Largura`: Ajuste da largura do card.
  - `Cor de Fundo`: Abre a Caixa de Diálogo de Cores RGB do Windows.
  - `Opacidade Fundo`: Controle de transparência do fundo (0 a 255).
  - `Fundo Transparente`: Alternador rápido (*ON/OFF*) para fundo 100% transparente.
  - `Opacidade Botões`: Controle de transparência dos botões laterais (0 a 255).
  - `Estilo Checkbox`: Alternância entre caixas quadradas e círculos.
  - `Efeitos Sonoros`: Alternador de áudio (*LIGADO/MUDO*).
  - `Oscilar Tarefas`: Ajuste de amplitude da flutuação das tarefas.
  - `Escalar Tarefas`: Ajuste de amplitude do efeito de pulso/respiração do texto.
- **Rodapé:** Botões em destaque para *Restaurar Padrões* e *Fechar*.
