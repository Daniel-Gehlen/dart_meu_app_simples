# Dart meu_app_simples

Aplicativo Flutter demonstrando **Clean Architecture**, **GetX** e boas práticas de desenvolvimento.

## 📋 Sobre o Projeto

Este é um aplicativo de exemplo que consome a API pública [JSONPlaceholder](https://jsonplaceholder.typicode.com) para exibir uma lista de usuários. Foi desenvolvido seguindo as melhores práticas do ecossistema Flutter, incluindo:

- ✅ **Clean Architecture** (separação em camadas)
- ✅ **GetX** para gerenciamento de estado e injeção de dependência
- ✅ **Testes unitários** implementados
- ✅ **Integração com API REST** usando Dio
- ✅ **Tratamento de erros** e verificação de conexão

## 🎯 Funcionalidades

- Listagem de usuários com ID, nome, email e telefone
- Tela de detalhes com informações completas do usuário
- Pull-to-refresh para recarregar dados
- Loading indicator durante carregamento
- Tratamento de erros de rede
- Design responsivo com Material Design 3

## 🏗️ Estrutura do Projeto

```
lib/
├── core/                    # Camada core (compartilhada)
│   ├── error/               # Classes de erro/failure
│   └── network/             # Verificação de conexão
├── data/                    # Camada de dados
│   ├── datasources/         # Fontes de dados (API)
│   ├── models/              # Modelos (DTOs)
│   └── repositories/        # Implementação dos repositórios
├── domain/                   # Camada de domínio (regras de negócio)
│   ├── entities/            # Entidades
│   ├── repositories/        # Contratos dos repositórios
│   └── usecases/            # Casos de uso
└── presentation/             # Camada de apresentação (UI)
    ├── bindings/            # Injeção de dependência com GetX
    ├── controllers/          # Controladores (GetX)
    ├── pages/               # Telas do app
    └── widgets/              # Widgets reutilizáveis

test/
├── widget_test.dart          # Testes de widget
└── ...                       # Outros testes
```

## 🚀 Como executar o projeto

### Pré-requisitos

Antes de começar, você precisa ter instalado:

- **Flutter SDK** (versão 3.11.0 ou superior)
- **Dart SDK** (versão 3.11.0 ou superior)
- **Android Studio** ou **VS Code** com extensão Flutter
- **Emulador Android** ou **dispositivo físico** (opcional, para testar em mobile)
- **Chrome** (para testar na web)

### Verificando o ambiente

```bash
flutter doctor -v
```

Todos os itens devem estar com ✅ (verde).

### Passo a passo para execução

1. **Clone o repositório**
   ```bash
   git clone https://github.com/seu-usuario/meu_app_completo.git
   cd meu_app_completo
   ```

2. **Instale as dependências**
   ```bash
   flutter pub get
   ```

3. **Execute os testes** (opcional, mas recomendado)
   ```bash
   flutter test
   ```

4. **Execute o aplicativo**

   - **No Chrome** (recomendado para desenvolvimento rápido):
     ```bash
     flutter run -d chrome
     ```

   - **No emulador Android**:
     ```bash
     # Liste os emuladores disponíveis
     emulator -list-avds

     # Inicie um emulador
     emulator -avd Nome_Do_Emulador

     # Execute o app
     flutter run
     ```

   - **Em dispositivo físico** (modo desenvolvedor ativado):
     ```bash
     flutter run
     ```

### Comandos úteis

```bash
# Limpar cache
flutter clean

# Atualizar dependências
flutter pub get

# Executar com hot-reload (já incluso no flutter run)
# Pressione 'r' no terminal para recarregar
# Pressione 'R' para reiniciar completamente

# Gerar build de produção
flutter build apk --release        # Android
flutter build web --release         # Web
flutter build ios --release         # iOS (requer macOS)

# Verificar dependências desatualizadas
flutter pub outdated
```

## 📱 Telas do Aplicativo

### Tela Principal (Home)
- Lista todos os usuários da API
- Cada item mostra: ID (círculo), nome, email e telefone
- Botão de refresh no AppBar para recarregar dados
- Loading indicator durante o carregamento

### Tela de Detalhes
- Informações completas do usuário selecionado
- Acessível ao tocar em qualquer item da lista
- Design limpo e organizado com cards

## 🧪 Testes

O projeto inclui testes unitários básicos:

```bash
# Executar todos os testes
flutter test

# Executar com cobertura de código
flutter test --coverage
```

## 🔮 Próximas Implementações Possíveis

### Funcionalidades a adicionar:

1. **Busca e Filtros**
   - Buscar usuários por nome ou email
   - Filtrar por ID ou outros critérios

2. **Persistência Local**
   - Salvar dados offline com SharedPreferences ou Hive
   - Sincronizar quando houver conexão

3. **CRUD Completo**
   - Adicionar, editar e deletar usuários
   - Validação de formulários

4. **Melhorias na UI/UX**
   - Tema escuro (dark mode)
   - Animações entre telas
   - Suporte a múltiplos idiomas (i18n)

5. **Mais Testes**
   - Testes de integração
   - Testes de widget mais completos
   - Testes de unidade para use cases

6. **Autenticação**
   - Login com email/senha
   - Autenticação com Google ou GitHub

7. **Notificações**
   - Push notifications quando dados forem atualizados
   - Alertas de erros de conexão

8. **Build para Produção**
   - Configurar ícones e splash screen
   - Gerar APK/IPA assinados
   - Publicar nas lojas (Google Play, App Store)

## 📄 Licença

Este projeto está sob a licença MIT. Veja o arquivo [LICENSE](LICENSE) para mais detalhes.

## 👨‍💻 Autor

Desenvolvido por Daniel Gehlen como projeto de demonstração de boas práticas com Flutter.

---

**Nota:** Este é um projeto educacional que consome a API pública JSONPlaceholder. Os dados exibidos são fictícios.
EOF
```
