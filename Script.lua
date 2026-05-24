--━━━━━━━━━━━━━━━━━━━━━━━━━━━━
--        ULTRA MOD MENU
--━━━━━━━━━━━━━━━━━━━━━━━━━━━━

gg.setVisible(false)

local SCRIPT = "⚡ ULTRA MOD MENU"
local VERSAO = "v5.0"

--━━━━━━━━━━━━━━━━━━━━━━━━━━━━
-- LOADING
--━━━━━━━━━━━━━━━━━━━━━━━━━━━━

gg.toast("⚡ Inicializando...")
gg.sleep(700)

gg.toast("🔥 Carregando sistema...")
gg.sleep(700)

gg.toast("✅ Script carregado!")
gg.sleep(500)

--━━━━━━━━━━━━━━━━━━━━━━━━━━━━
-- MENU PRINCIPAL
--━━━━━━━━━━━━━━━━━━━━━━━━━━━━

function MENU()

local escolha = gg.choice({
"💰 Mod de Valor",
"🔍 Pesquisa Refinada",
"⚡ Boost",
"🎮 Roblox Menu",
"🥚 Pou Menu",
"🧹 Limpar Resultados",
"📊 Status",
"ℹ️ Informações",
"❌ Sair"
}, nil,

"╔══════════════════╗\n"..
" "..SCRIPT.."\n"..
" "..VERSAO.."\n"..
"╚══════════════════╝\n\n"..

"━━━━━━━━━━━━━━━━━━\n"..
"🔥 Interface Premium\n"..
"⚙️ Sistema Moderno\n"..
"🎮 Uso Offline/Teste\n"..
"━━━━━━━━━━━━━━━━━━"
)

if escolha == 1 then MOD() end
if escolha == 2 then REFINE() end
if escolha == 3 then BOOST() end
if escolha == 4 then ROBLOX() end
if escolha == 5 then POU() end
if escolha == 6 then LIMPAR() end
if escolha == 7 then STATUS() end
if escolha == 8 then INFO() end
if escolha == 9 then SAIR() end

end

--━━━━━━━━━━━━━━━━━━━━━━━━━━━━
-- MOD DE VALOR
--━━━━━━━━━━━━━━━━━━━━━━━━━━━━

function MOD()

local valor = gg.prompt(
{"Digite um valor para pesquisar:"},
{100},
{"number"}
)

if valor == nil then
return
end

gg.clearResults()

gg.toast("🔎 Procurando valor...")

gg.searchNumber(valor[1], gg.TYPE_DWORD)

gg.sleep(1500)

local r = gg.getResults(100)

if #r == 0 then
gg.alert("❌ Nenhum resultado encontrado!")
return
end

gg.toast("⚡ Alterando resultados...")

gg.editAll("9999", gg.TYPE_DWORD)

gg.toast("✅ Alteração concluída!")

end

--━━━━━━━━━━━━━━━━━━━━━━━━━━━━
-- REFINE
--━━━━━━━━━━━━━━━━━━━━━━━━━━━━

function REFINE()

local ref = gg.prompt(
{"Digite o novo valor para refinar:"},
{9999},
{"number"}
)

if ref == nil then
return
end

gg.toast("🔍 Refinando pesquisa...")

gg.refineNumber(ref[1], gg.TYPE_DWORD)

local r = gg.getResults(100)

if #r == 0 then
gg.alert("❌ Refinamento falhou!")
else
gg.toast("✅ Refinamento concluído!")
end

end

--━━━━━━━━━━━━━━━━━━━━━━━━━━━━
-- BOOST FAKE
--━━━━━━━━━━━━━━━━━━━━━━━━━━━━

function BOOST()

gg.toast("⚡ Ativando Boost...")
gg.sleep(1000)

gg.toast("🚀 Sistema otimizado!")
gg.sleep(700)

gg.toast("🔥 Boost concluído!")

end

--━━━━━━━━━━━━━━━━━━━━━━━━━━━━
-- MENU ROBLOX
--━━━━━━━━━━━━━━━━━━━━━━━━━━━━

function ROBLOX()

local rb = gg.choice({
"🦘 Infinite Jump",
"👻 Atravessar Parede",
"⬅️ Voltar"
}, nil,

"🎮 ROBLOX MENU\n\n"..
"Escolha uma função:"
)

if rb == 1 then
INFINITEJUMP()
end

if rb == 2 then
NOCLIP()
end

if rb == 3 then
MENU()
end

end

--━━━━━━━━━━━━━━━━━━━━━━━━━━━━
-- INFINITE JUMP
--━━━━━━━━━━━━━━━━━━━━━━━━━━━━

function INFINITEJUMP()

gg.clearResults()

gg.toast("🦘 Ativando Infinite Jump...")

gg.searchNumber("1", gg.TYPE_FLOAT)

gg.sleep(1000)

gg.refineNumber("1", gg.TYPE_FLOAT)

local r = gg.getResults(50)

if #r == 0 then
gg.alert("❌ Nenhum resultado encontrado!")
return
end

gg.editAll("999", gg.TYPE_FLOAT)

gg.toast("✅ Infinite Jump ativado!")

end

--━━━━━━━━━━━━━━━━━━━━━━━━━━━━
-- NOCLIP
--━━━━━━━━━━━━━━━━━━━━━━━━━━━━

function NOCLIP()

gg.clearResults()

gg.toast("👻 Ativando No Clip...")

gg.searchNumber("0.5", gg.TYPE_FLOAT)

gg.sleep(1000)

gg.refineNumber("0.5", gg.TYPE_FLOAT)

local r = gg.getResults(50)

if #r == 0 then
gg.alert("❌ Nenhum resultado encontrado!")
return
end

gg.editAll("0", gg.TYPE_FLOAT)

gg.toast("✅ Atravessar parede ativado!")

end

--━━━━━━━━━━━━━━━━━━━━━━━━━━━━
-- MENU POU
--━━━━━━━━━━━━━━━━━━━━━━━━━━━━

function POU()

local pp = gg.choice({
"😴 Nunca Dormir",
"😨 Sem Medo",
"🍔 Fome Infinita",
"❤️ Vida Máxima",
"💰 Moedas Fake",
"⬅️ Voltar"
}, nil,

"🥚 POU MENU\n\n"..
"Funções roubadas:"
)

if pp == 1 then NUNCADORMIR() end
if pp == 2 then SEMMEDO() end
if pp == 3 then FOME() end
if pp == 4 then VIDA() end
if pp == 5 then MOEDAS() end
if pp == 6 then MENU() end

end

--━━━━━━━━━━━━━━━━━━━━━━━━━━━━
-- NUNCA DORMIR
--━━━━━━━━━━━━━━━━━━━━━━━━━━━━

function NUNCADORMIR()

gg.clearResults()

gg.toast("😴 Removendo sono...")

gg.searchNumber("50", gg.TYPE_DWORD)

gg.sleep(1000)

gg.editAll("100", gg.TYPE_DWORD)

gg.toast("✅ Pou nunca dorme!")

end

--━━━━━━━━━━━━━━━━━━━━━━━━━━━━
-- SEM MEDO
--━━━━━━━━━━━━━━━━━━━━━━━━━━━━

function SEMMEDO()

gg.clearResults()

gg.toast("😨 Removendo medo...")

gg.searchNumber("1", gg.TYPE_DWORD)

gg.sleep(1000)

gg.editAll("0", gg.TYPE_DWORD)

gg.toast("✅ Pou sem medo!")

end

--━━━━━━━━━━━━━━━━━━━━━━━━━━━━
-- FOME INFINITA
--━━━━━━━━━━━━━━━━━━━━━━━━━━━━

function FOME()

gg.clearResults()

gg.toast("🍔 Ativando fome infinita...")

gg.searchNumber("75", gg.TYPE_DWORD)

gg.sleep(1000)

gg.editAll("999", gg.TYPE_DWORD)

gg.toast("✅ Fome infinita ativada!")

end

--━━━━━━━━━━━━━━━━━━━━━━━━━━━━
-- VIDA MÁXIMA
--━━━━━━━━━━━━━━━━━━━━━━━━━━━━

function VIDA()

gg.clearResults()

gg.toast("❤️ Colocando vida máxima...")

gg.searchNumber("100", gg.TYPE_DWORD)

gg.sleep(1000)

gg.editAll("9999", gg.TYPE_DWORD)

gg.toast("✅ Vida máxima ativada!")

end

--━━━━━━━━━━━━━━━━━━━━━━━━━━━━
-- MOEDAS
--━━━━━━━━━━━━━━━━━━━━━━━━━━━━

function MOEDAS()

gg.clearResults()

gg.toast("💰 Procurando moedas...")

gg.searchNumber("500", gg.TYPE_DWORD)

gg.sleep(1000)

gg.editAll("999999", gg.TYPE_DWORD)

gg.toast("✅ Moedas alteradas!")

end

--━━━━━━━━━━━━━━━━━━━━━━━━━━━━
-- LIMPAR
--━━━━━━━━━━━━━━━━━━━━━━━━━━━━

function LIMPAR()

gg.clearResults()

gg.toast("🧹 Resultados limpos!")

end

--━━━━━━━━━━━━━━━━━━━━━━━━━━━━
-- STATUS
--━━━━━━━━━━━━━━━━━━━━━━━━━━━━

function STATUS()

local resultados = gg.getResultsCount()

gg.alert(
"📊 STATUS DO SCRIPT\n\n"..

"⚡ Nome: "..SCRIPT.."\n"..
"📌 Versão: "..VERSAO.."\n"..
"🔍 Resultados Ativos: "..resultados
)

end

--━━━━━━━━━━━━━━━━━━━━━━━━━━━━
-- INFO
--━━━━━━━━━━━━━━━━━━━━━━━━━━━━

function INFO()

gg.alert(
"⚡ ULTRA MOD MENU\n\n"..

"👨‍💻 Script em Lua\n"..
"🔥 Interface moderna\n"..
"⚙️ Sistema automático\n"..
"🎮 Compatível com Game Guardian\n"..
"📌 Feito para estudo/testes offline"
)

end

--━━━━━━━━━━━━━━━━━━━━━━━━━━━━
-- SAIR
--━━━━━━━━━━━━━━━━━━━━━━━━━━━━

function SAIR()

gg.toast("👋 Fechando script...")
os.exit()

end

--━━━━━━━━━━━━━━━━━━━━━━━━━━━━
-- LOOP
--━━━━━━━━━━━━━━━━━━━━━━━━━━━━

while true do

if gg.isVisible(true) then
gg.setVisible(false)
MENU()
end

gg.sleep(100)

end
