import Testing

@testable import EasyFlag

/*
 ✅ Objetivo

 Permitir que funcionalidades do app sejam ativadas ou desativadas dinamicamente — para testes A/B, rollouts graduais, ou ativações específicas por ambiente (dev/stage/prod).

 ⸻

 🧱 Requisitos Funcionais (O que ela precisa ter)

 1. Tipos de Flags
     •    Booleanas (true ou false)
     •    Multivalor (enum, string, int)
     •    Dinâmicas por contexto (usuário, país, versão do app etc.)

 2. Fontes de Configuração
     •    Local: arquivo JSON local
     •    Remote: API que retorna o estado das flags
     •    Defaults: fallback padrão

 3. Fallbacks
     •    Valor padrão se a flag não existir ou estiver indisponível

 4. Atualização em Tempo de Execução (Hot Reload)
     •    Sincronização com servidor via polling, WebSocket ou em eventos do app (ex: applicationDidBecomeActive)

 5. Override Manual (debug)
     •    Para testes locais sem precisar alterar o backend
 */
