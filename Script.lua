--━━━━━━━━━━━━━━━━━━━━━━━━━━━━
--        ULTRA MOD MENU
--━━━━━━━━━━━━━━━━━━━━━━━━━━━━

gg.setVisible(false)

local SCRIPT = "⚡ ULTRA MOD MENU"
local VERSAO = "v3.5"

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
"⚡ Boost Fake",
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
if escolha == 4 then LIMPAR() end
if escolha == 5 then STATUS() end
if escolha == 6 then INFO() end
if escolha == 7 then SAIR() end

end

--━━━━━━━━━━━━━━━━━━━━━━━━━━━━
-- MOD DE VALOR (EXEMPLO)
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
