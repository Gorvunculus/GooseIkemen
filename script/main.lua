
setRoundTime(999 * 6)--frames
setLifeMul(1.0)
setTeam1VS2Life(1.0)
setTurnsRecoveryRate(1.0 / 300.0)

setZoom(false)
setZoomMin(0.25)
setZoomMax(1.0)
setZoomSpeed(1.0)

loadLifebar('data/BAR/fight.def')
loadDebugFont('font/mc2winsmall.fnt')
setDebugScript('script/debug.lua')

selectColumns = 10


require('script.randomtest')

function addWithRefresh(addFn, text)
  local nextRefresh = os.clock() + 0.02
  for i, c
    in ipairs(script.randomtest.strsplit('\n',
                                         text:gsub('^%s*(.-)%s*$', '%1')))
  do
    addFn(c)
    if os.clock() >= nextRefresh then
      refresh()
      nextRefresh = os.clock() + 0.02
    end
  end
end

orgAddChar = addChar
orgAddStage = addStage

function addChar(text)
  addWithRefresh(orgAddChar, text)
end

function addStage(text)
  addWithRefresh(orgAddStage, text)
end

assert(loadfile('script/select.lua'))()


math.randomseed(os.time())

------------------------------------------------------------
sysSff = sffNew('script/BLUE system.sff')
sysSnd = sndNew('script/system.snd')
jgFnt = fontNew('script/MvC.fnt')
PFnt = fontNew('script/Names.fnt')

bgm = 'sound/001.mp3'
playBGM(bgm)

------------------------------------------------------------
function setCommand(c)
  commandAdd(c, 'u', '$U')
  commandAdd(c, 'd', '$D')
  commandAdd(c, 'l', '$B')
  commandAdd(c, 'r', '$F')
  commandAdd(c, 'a', 'a')
  commandAdd(c, 'b', 'b')
  commandAdd(c, 'c', 'c')
  commandAdd(c, 'x', 'x')
  commandAdd(c, 'y', 'y')
  commandAdd(c, 'z', 'z')
  commandAdd(c, 's', 's')
  commandAdd(c, 'holds', '/s')
  commandAdd(c, 'su', '/s, U')
  commandAdd(c, 'sd', '/s, D')
end

p1Cmd = commandNew()
setCommand(p1Cmd)

p2Cmd = commandNew()
setCommand(p2Cmd)

------------------------------------------------------------
selectRows = math.floor(selectColumns * 7 / 10.0)

setRandomSpr(sysSff, 151, 0, 10.0/selectColumns, 10.0/selectColumns)
setSelColRow(selectColumns, selectRows)
setSelCellSize(20*10.0/selectColumns, 20*10.0/selectColumns)
setSelCellScale(10.0/selectColumns, 10.0/selectColumns)

function init()
  p1TeamMode = 0
  p1NumTurns  = 2
  p1SelOffset = 0
  p1SelX = 0
  p1SelY = 0
  p1Portrait = nil

  p2TeamMode = 0
  p2NumTurns  = 2
  p2SelOffset = 0
  p2SelX = 0
  p2SelY = 0
  p2Portrait = nil

  stageNo = 0
  setStage(0)
end

init()

function noTask()
end


function animPosDraw(a, x, y)
  animSetPos(a, x, y)
  animDraw(a)
end

function textImgPosDraw(ti, x, y)
  textImgSetPos(ti, x, y)
  textImgDraw(ti)
end

function createTextImg(font, bank, aline, text, x, y)
  local ti = textImgNew()
  textImgSetFont(ti, font)
  textImgSetBank(ti, bank)
  textImgSetAlign(ti, aline)
  textImgSetText(ti, text)
  textImgSetPos(ti, x, y)
  return ti
end

function btnPalNo(cmd)
  local s = 0
  if commandGetState(cmd, 'holds') then s = 6 end
  if commandGetState(cmd, 'a') then return 1 + s end
  if commandGetState(cmd, 'b') then return 2 + s end
  if commandGetState(cmd, 'c') then return 3 + s end
  if commandGetState(cmd, 'x') then return 4 + s end
  if commandGetState(cmd, 'y') then return 5 + s end
  if commandGetState(cmd, 'z') then return 6 + s end
  return 0
end

------------------------------------------------------------
p1SelTmTxt = createTextImg(PFnt, 0, 1, 'Team Mode', 20, 30)
p1SingleTxt = createTextImg(PFnt, 0, 1, 'Single', 20, 50)
p1SimulTxt = createTextImg(PFnt, 0, 1, 'Simul', 20, 65)
p1TurnsTxt = createTextImg(PFnt, 0, 1, 'Turns', 20, 80)

MCursor = animNew(sysSff, [[
160,0, 0,0, -1,,A
]])

p1TmCursor = animNew(sysSff, [[
180,0, 0,0, -1
]])

p1TmIcon = animNew(sysSff, [[
181,0, 0,0, -1
]])

function p1TmSub()
  if commandGetState(p1Cmd, 'u') then
    sndPlay(sysSnd, 100, 0)
    p1TeamMode = p1TeamMode - 1
    if p1TeamMode < 0 then p1TeamMode = 2 end
  elseif commandGetState(p1Cmd, 'd') then
    sndPlay(sysSnd, 100, 0)
    p1TeamMode = p1TeamMode + 1
    if p1TeamMode > 2 then p1TeamMode = 0 end
  elseif p1TeamMode == 2 then
    if commandGetState(p1Cmd, 'l') then
      sndPlay(sysSnd, 100, 0)
      p1NumTurns = p1NumTurns - 1
      if p1NumTurns < 1 then p1NumTurns = 1 end
    elseif commandGetState(p1Cmd, 'r') then
      sndPlay(sysSnd, 100, 0)
      p1NumTurns = p1NumTurns + 1
      if p1NumTurns > 4 then p1NumTurns = 4 end
    end
  end
  textImgDraw(p1SelTmTxt)
  textImgDraw(p1SingleTxt)
  textImgDraw(p1SimulTxt)
  textImgDraw(p1TurnsTxt)
  animUpdate(p1TmIcon)
  animPosDraw(p1TmIcon, 80, 66)
  animPosDraw(p1TmIcon, 86, 66)
  for i = 1, p1NumTurns do
    animPosDraw(p1TmIcon, 74 + i*6, 81)
  end
  animUpdate(p1TmCursor)
  animPosDraw(p1TmCursor, 10, 47 + p1TeamMode*15)
  if btnPalNo(p1Cmd) > 0 then
    sndPlay(sysSnd, 100, 1)
    setTeamMode(1, p1TeamMode, p1NumTurns)
    p1Selected = {}
    p1SelEnd = false
    p1Task = p1SelSub
  end
end


------------------------------------------------------------
p2SelTmTxt = createTextImg(PFnt, 0, -1, 'Team Mode', 300, 30)
p2SingleTxt = createTextImg(PFnt, 0, -1, 'Single', 300, 50)
p2SimulTxt = createTextImg(PFnt, 0, -1, 'Simul', 300, 65)
p2TurnsTxt = createTextImg(PFnt, 0, -1, 'Turns', 300, 80)

p2TmCursor = animNew(sysSff, [[
190,0, 0,0, -1
]])

p2TmIcon = animNew(sysSff, [[
191,0, 0,0, -1
]])

function p2TmSub()
  if commandGetState(p2Cmd, 'u') then
    sndPlay(sysSnd, 100, 0)
    p2TeamMode = p2TeamMode - 1
    if p2TeamMode < 0 then p2TeamMode = 2 end
  elseif commandGetState(p2Cmd, 'd') then
    sndPlay(sysSnd, 100, 0)
    p2TeamMode = p2TeamMode + 1
    if p2TeamMode > 2 then p2TeamMode = 0 end
  elseif p2TeamMode == 2 then
    if commandGetState(p2Cmd, 'r') then
      sndPlay(sysSnd, 100, 0)
      p2NumTurns = p2NumTurns - 1
      if p2NumTurns < 1 then p2NumTurns = 1 end
    elseif commandGetState(p2Cmd, 'l') then
      sndPlay(sysSnd, 100, 0)
      p2NumTurns = p2NumTurns + 1
      if p2NumTurns > 4 then p2NumTurns = 4 end
    end
  end
  textImgDraw(p2SelTmTxt)
  textImgDraw(p2SingleTxt)
  textImgDraw(p2SimulTxt)
  textImgDraw(p2TurnsTxt)
  animUpdate(p2TmIcon)
  animPosDraw(p2TmIcon, 240, 66)
  animPosDraw(p2TmIcon, 234, 66)
  for i = 1, p2NumTurns do
    animPosDraw(p2TmIcon, 246 - i*6, 81)
  end
  animUpdate(p2TmCursor)
  animPosDraw(p2TmCursor, 310, 47 + p2TeamMode*15)
  if btnPalNo(p2Cmd) > 0 then
    sndPlay(sysSnd, 100, 1)
    setTeamMode(2, p2TeamMode, p2NumTurns)
    p2Selected = {}
    p2SelEnd = false
    p2Task = p2SelSub
  end
end


------------------------------------------------------------
p1Cursor = animNew(sysSff, [[
150,0, 0,0, 40
150,1, 0,0, 6
150,2, 0,0, 6
150,3, 0,0, 6
150,4, 0,0, 6
150,5, 0,0, 6
150,6, 0,0, 6
150,7, 0,0, 6
150,8, 0,0, 6
150,9, 0,0, 6
150,10, 0,0, 6
150,11, 0,0, 6
150,12, 0,0, 6
150,13, 0,0, 6
150,14, 0,0, 6
150,15, 0,0, 6
150,16, 0,0, 6
150,17, 0,0, 6
150,18, 0,0, 6
]])
animSetScale(p1Cursor, 10.0/selectColumns, 10.0/selectColumns)

p1NameTxt = createTextImg(PFnt, 0, 1, '', 0, 0)
textImgSetScale(p1NameTxt, 0.5, 0.5)

function p1DrawSelectName()
  local y = 85
  for i = 1, #p1Selected do
    textImgSetText(p1NameTxt, getCharName(p1Selected[i]))
    textImgPosDraw(p1NameTxt, 10, y)
    y = y + 7
  end
  return y
end

function p1SelSub()
  local n = p1SelOffset + p1SelX + selectColumns*p1SelY
  p1Portrait = n
  local y = p1DrawSelectName()
  if not p1SelEnd then
    if commandGetState(p1Cmd, 'su') then
      sndPlay(sysSnd, 100, 0)

    elseif commandGetState(p1Cmd, 'sd') then
      sndPlay(sysSnd, 100, 0)
      p1SelY = p1SelY +2
    elseif commandGetState(p1Cmd, 'u') then
      sndPlay(sysSnd, 100, 0)
      p1SelY = p1SelY - 1
    elseif commandGetState(p1Cmd, 'd') then
      sndPlay(sysSnd, 100, 0)
      p1SelY = p1SelY + 1
    elseif commandGetState(p1Cmd, 'l') then
      sndPlay(sysSnd, 100, 0)
      p1SelX = p1SelX - 1
    elseif commandGetState(p1Cmd, 'r') then
      sndPlay(sysSnd, 100, 0)
      p1SelX = p1SelX + 1
    end
    if p1SelY < 0 then
      p1SelY = 0
    elseif p1SelY >= selectRows then
      p1SelOffset = p1SelOffset + selectColumns*(p1SelY - (selectRows - 7))
      p1SelY = selectRows - 1
    end
    if p1SelX < 0 then
      p1SelX = selectColumns - 1
    elseif p1SelX >= selectColumns then
      p1SelX = 0
    end
    animUpdate(p1Cursor)
    animPosDraw(
      p1Cursor, 60 + 20*p1SelX*10.0/selectColumns,
      90 + 20*p1SelY*10.0/selectColumns)
    textImgSetText(p1NameTxt, getCharName(n))
    textImgPosDraw(p1NameTxt, 10, y)
    local selval = selectChar(1, n, btnPalNo(p1Cmd))
    if selval > 0 then
      sndPlay(sysSnd, 100, 1)
      p1Selected[#p1Selected+1] = n
    end
    if selval == 2 then
      p1SelEnd = true
      if p2In == 1 then
        p2Task = p2TmSub
        commandBufReset(p2Cmd, p2In)
      end
    end
  end
end


------------------------------------------------------------
p2Cursor = animNew(sysSff, [[
150,0, 0,0, 40
150,1, 0,0, 6
150,2, 0,0, 6
150,3, 0,0, 6
150,4, 0,0, 6
150,5, 0,0, 6
150,6, 0,0, 6
150,7, 0,0, 6
150,8, 0,0, 6
150,9, 0,0, 6
150,10, 0,0, 6
150,11, 0,0, 6
150,12, 0,0, 6
150,13, 0,0, 6
150,14, 0,0, 6
150,15, 0,0, 6
150,16, 0,0, 6
150,17, 0,0, 6
150,18, 0,0, 6
72
264
]])
animSetScale(p2Cursor, 10.0/selectColumns, 10.0/selectColumns)

p2NameTxt = createTextImg(PFnt, 0, -1, '', 0, 0)
textImgSetScale(p2NameTxt, 0.5, 0.5)

function p2DrawSelectName()
  local y = 85
  for i = 1, #p2Selected do
    textImgSetText(p2NameTxt, getCharName(p2Selected[i]))
    textImgPosDraw(p2NameTxt, 310, y)
    y = y + 7
  end
  return y
end

function p2SelSub()
  local n = p2SelOffset + p2SelX + selectColumns*p2SelY
  p2Portrait = n
  local y = p2DrawSelectName()
  if not p2SelEnd then
    if commandGetState(p2Cmd, 'su') then
      sndPlay(sysSnd, 100, 0)

    elseif commandGetState(p2Cmd, 'sd') then
      sndPlay(sysSnd, 100, 0)
      p2SelY = p2SelY + 2
    elseif commandGetState(p2Cmd, 'u') then
      sndPlay(sysSnd, 100, 0)
      p2SelY = p2SelY - 1
    elseif commandGetState(p2Cmd, 'd') then
      sndPlay(sysSnd, 100, 0)
      p2SelY = p2SelY + 1
    elseif commandGetState(p2Cmd, 'l') then
      sndPlay(sysSnd, 100, 0)
      p2SelX = p2SelX - 1
    elseif commandGetState(p2Cmd, 'r') then
      sndPlay(sysSnd, 100, 0)
      p2SelX = p2SelX + 1
    end
    if p2SelY < 0 then
      p2SelY = 0
    elseif p2SelY >= selectRows then
      p2SelOffset = p2SelOffset + selectColumns*(p2SelY - (selectRows - 7))
      p2SelY = selectRows - 1
    end
    if p2SelX < 0 then
      p2SelX = selectColumns - 1
    elseif p2SelX >= selectColumns then
      p2SelX = 0
    end
    animUpdate(p2Cursor)
    animPosDraw(
      p2Cursor, 60 + 20*p2SelX*10.0/selectColumns,
      90 + 20*p2SelY*10.0/selectColumns)
    textImgSetText(p2NameTxt, getCharName(n))
    textImgPosDraw(p2NameTxt, 310, y)
    local selval = selectChar(2, n, btnPalNo(p2Cmd))
    if selval > 0 then
      sndPlay(sysSnd, 100, 1)
      p2Selected[#p2Selected+1] = n
    end
    if selval == 2 then
      p2SelEnd = true
      if p1In == 2 then
        p1Task = p1TmSub
        commandBufReset(p1Cmd, p1In)
      end
    end
  end
end


------------------------------------------------------------
selStageTxt = createTextImg(PFnt, 0, 0, '', 160, 10)
textImgSetScale(selStageTxt, 0.5, 0.5)

function selStageSub()
  if commandGetState(p1Cmd, 'l') then
    sndPlay(sysSnd, 100, 0)
    stageNo = setStage(stageNo - 1)
  elseif commandGetState(p1Cmd, 'r') then
    sndPlay(sysSnd, 100, 0)
    stageNo = setStage(stageNo + 1)
  elseif commandGetState(p1Cmd, 'u') then
    sndPlay(sysSnd, 100, 0)
    stageNo = setStage(stageNo - 10)
  elseif commandGetState(p1Cmd, 'd') then
    sndPlay(sysSnd, 100, 0)
    stageNo = setStage(stageNo + 10)
  end
  textImgSetText(
    selStageTxt, 'Stage ' .. stageNo .. ': ' .. getStageName(stageNo))
  textImgDraw(selStageTxt)
  if btnPalNo(p1Cmd) > 0 then
    selectStage(stageNo)
    selMode = false
  end
end


------------------------------------------------------------
mBG = animNew(sysSff, [[
25,0, 0,0, 1,, A
25,1, 0,0, 1,, A
25,2, 0,0, 1,, A
25,3, 0,0, 1,, A
25,4, 0,0, 1,, A
25,5, 0,0, 1,, A
25,6, 0,0, 1,, A
25,7, 0,0, 1,, A
25,8, 0,0, 1,, A
25,9, 0,0, 1,, A
25,10, 0,0, 1,, A
25,11, 0,0, 1,, A
25,12, 0,0, 1,, A
25,13, 0,0, 1,, A
25,14, 0,0, 1,, A
25,15, 0,0, 1,, A
25,16, 0,0, 1,, A
25,17, 0,0, 1,, A
25,18, 0,0, 1,, A
25,19, 0,0, 1,, A
25,20, 0,0, 1,, A
25,21, 0,0, 1,, A
25,22, 0,0, 1,, A
25,23, 0,0, 1,, A
25,24, 0,0, 1,, A
25,25, 0,0, 1,, A
25,26, 0,0, 1,, A
25,27, 0,0, 1,, A
25,28, 0,0, 1,, A
25,29, 0,0, 1,, A
25,30, 0,0, 1,, A
25,31, 0,0, 1,, A
25,32, 0,0, 1,, A
25,33, 0,0, 1,, A
25,34, 0,0, 1,, A
25,35, 0,0, 1,, A
25,36, 0,0, 1,, A
25,37, 0,0, 1,, A
25,38, 0,0, 1,, A
25,39, 0,0, 1,, A
25,40, 0,0, 1,, A
25,41, 0,0, 1,, A
25,42, 0,0, 1,, A
25,43, 0,0, 1,, A
25,44, 0,0, 1,, A
25,45, 0,0, 1,, A
25,46, 0,0, 1,, A
25,47, 0,0, 1,, A
25,48, 0,0, 1,, A
25,49, 0,0, 1,, A
25,50, 0,0, 1,, A
25,51, 0,0, 1,, A
25,52, 0,0, 1,, A
25,53, 0,0, 1,, A
25,54, 0,0, 1,, A
25,55, 0,0, 1,, A
25,56, 0,0, 1,, A
25,57, 0,0, 1,, A
25,58, 0,0, 1,, A
25,59, 0,0, 1,, A
25,60, 0,0, 1,, A
25,61, 0,0, 1,, A
25,62, 0,0, 1,, A
25,63, 0,0, 1,, A
25,64, 0,0, 1,, A
25,65, 0,0, 1,, A
25,66, 0,0, 1,, A
25,67, 0,0, 1,, A
25,68, 0,0, 1,, A
25,69, 0,0, 1,, A
25,70, 0,0, 1,, A
25,71, 0,0, 1,, A
25,72, 0,0, 1,, A
25,73, 0,0, 1,, A
25,74, 0,0, 1,, A
25,75, 0,0, 1,, A
25,76, 0,0, 1,, A
25,77, 0,0, 1,, A
25,78, 0,0, 1,, A
25,79, 0,0, 1,, A
25,80, 0,0, 1,, A
25,81, 0,0, 1,, A
25,82, 0,0, 1,, A
25,83, 0,0, 1,, A
25,84, 0,0, 1,, A
25,85, 0,0, 1,, A
25,86, 0,0, 1,, A
25,87, 0,0, 1,, A
25,88, 0,0, 1,, A
25,89, 0,0, 1,, A
25,90, 0,0, 1,, A
25,91, 0,0, 1,, A
25,92, 0,0, 1,, A
25,93, 0,0, 1,, A
25,94, 0,0, 1,, A
25,95, 0,0, 1,, A
25,96, 0,0, 1,, A
25,97, 0,0, 1,, A
25,98, 0,0, 1,, A
25,99, 0,0, 1,, A
25,100, 0,0, 1,, A
]])
animSetTile(mBG, 1, 1)
animSetColorKey(mBG, -1)
animSetScale(mBG, 0.5, 0.5)

selBG = animNew(sysSff, [[
125,0, 0,0, 3,, A
125,1, 0,0, 3,, A
125,2, 0,0, 3,, A
125,3, 0,0, 3,, A
125,4, 0,0, 3,, A
125,5, 0,0, 3,, A
125,6, 0,0, 3,, A
125,7, 0,0, 3,, A
125,8, 0,0, 3,, A
125,9, 0,0, 3,, A
125,10, 0,0, 3,, A
125,11, 0,0, 3,, A
125,12, 0,0, 3,, A
125,13, 0,0, 3,, A
125,14, 0,0, 3,, A
125,15, 0,0, 3,, A
125,16, 0,0, 3,, A
125,17, 0,0, 3,, A
125,18, 0,0, 3,, A
125,19, 0,0, 3,, A
125,20, 0,0, 3,, A
125,21, 0,0, 3,, A
125,22, 0,0, 3,, A
125,23, 0,0, 3,, A
125,24, 0,0, 3,, A
125,25, 0,0, 3,, A
125,26, 0,0, 3,, A
125,27, 0,0, 3,, A
125,28, 0,0, 3,, A
125,29, 0,0, 3,, A
125,30, 0,0, 3,, A
125,31, 0,0, 3,, A
125,32, 0,0, 3,, A
125,33, 0,0, 3,, A
125,34, 0,0, 3,, A
125,35, 0,0, 3,, A
125,36, 0,0, 3,, A
125,37, 0,0, 3,, A
125,38, 0,0, 3,, A
125,39, 0,0, 3,, A
125,40, 0,0, 3,, A
125,41, 0,0, 3,, A
125,42, 0,0, 3,, A
125,43, 0,0, 3,, A
125,44, 0,0, 3,, A
125,45, 0,0, 3,, A
125,46, 0,0, 3,, A
125,47, 0,0, 3,, A
125,48, 0,0, 3,, A
125,49, 0,0, 3,, A
125,50, 0,0, 3,, A
125,51, 0,0, 3,, A
125,52, 0,0, 3,, A
125,53, 0,0, 3,, A
125,54, 0,0, 3,, A
125,55, 0,0, 3,, A
125,56, 0,0, 3,, A
125,57, 0,0, 3,, A
125,58, 0,0, 3,, A
125,59, 0,0, 3,, A
125,60, 0,0, 3,, A
125,61, 0,0, 3,, A
125,62, 0,0, 3,, A
125,63, 0,0, 3,, A
125,64, 0,0, 3,, A
125,65, 0,0, 3,, A
125,66, 0,0, 3,, A
125,67, 0,0, 3,, A
125,68, 0,0, 3,, A
125,69, 0,0, 3,, A
125,70, 0,0, 3,, A
125,71, 0,0, 3,, A
125,72, 0,0, 3,, A
125,73, 0,0, 3,, A
125,74, 0,0, 3,, A
125,75, 0,0, 3,, A
125,76, 0,0, 3,, A
125,77, 0,0, 3,, A
125,78, 0,0, 3,, A
125,79, 0,0, 3,, A
125,80, 0,0, 3,, A
125,81, 0,0, 3,, A
125,82, 0,0, 3,, A
125,83, 0,0, 3,, A
125,84, 0,0, 3,, A
125,85, 0,0, 3,, A
125,86, 0,0, 3,, A
125,87, 0,0, 3,, A
125,88, 0,0, 3,, A
125,89, 0,0, 3,, A
125,90, 0,0, 3,, A
125,91, 0,0, 3,, A
125,92, 0,0, 3,, A
125,93, 0,0, 3,, A
125,94, 0,0, 3,, A
125,95, 0,0, 3,, A
]])
animSetTile(selBG, 0, 0)
animSetColorKey(selBG, -1)
animSetScale(selBG, 0.5, 0.5)

Globe = animNew(sysSff, [[
0,0, 0,0, -1
]])
animSetTile(Globe, 0, 0)
animSetColorKey(Globe, 0)
animSetScale(Globe, 0.5, 0.5)

Arrows = animNew(sysSff, [[
130,0, 0,0, 3,, A
130,1, 0,0, 3,, A
130,2, 0,0, 3,, A
130,3, 0,0, 3,, A
130,4, 0,0, 3,, A
130,5, 0,0, 3,, A
130,6, 0,0, 3,, A
130,7, 0,0, 3,, A
130,8, 0,0, 3,, A
130,9, 0,0, 3,, A
130,10, 0,0, 3,, A
130,11, 0,0, 3,, A
130,12, 0,0, 3,, A
130,13, 0,0, 3,, A
130,14, 0,0, 3,, A
130,15, 0,0, 3,, A
130,16, 0,0, 3,, A
130,17, 0,0, 3,, A
130,18, 0,0, 3,, A
130,19, 0,0, 3,, A
130,20, 0,0, 3,, A
130,21, 0,0, 3,, A
130,22, 0,0, 3,, A
130,23, 0,0, 3,, A
130,24, 0,0, 3,, A
130,25, 0,0, 3,, A
130,26, 0,0, 3,, A
130,27, 0,0, 3,, A
130,28, 0,0, 3,, A
130,29, 0,0, 3,, A
130,30, 0,0, 3,, A
130,31, 0,0, 3,, A
130,32, 0,0, 3,, A
130,33, 0,0, 3,, A
130,34, 0,0, 3,, A
130,35, 0,0, 3,, A
130,36, 0,0, 3,, A
130,37, 0,0, 3,, A
130,38, 0,0, 3,, A
130,39, 0,0, 3,, A
130,40, 0,0, 3,, A
130,41, 0,0, 3,, A
130,42, 0,0, 3,, A
130,43, 0,0, 3,, A
130,44, 0,0, 3,, A
130,45, 0,0, 3,, A
130,46, 0,0, 3,, A
130,47, 0,0, 3,, A
130,48, 0,0, 3,, A
130,49, 0,0, 3,, A
130,50, 0,0, 3,, A
130,51, 0,0, 3,, A
130,52, 0,0, 3,, A
130,53, 0,0, 3,, A
130,54, 0,0, 3,, A
130,55, 0,0, 3,, A
130,56, 0,0, 3,, A
130,57, 0,0, 3,, A
130,58, 0,0, 3,, A
130,59, 0,0, 3,, A
130,60, 0,0, 3,, A
130,61, 0,0, 3,, A
130,62, 0,0, 3,, A
130,63, 0,0, 3,, A
130,64, 0,0, 3,, A
130,65, 0,0, 3,, A
130,66, 0,0, 3,, A
130,67, 0,0, 3,, A
130,68, 0,0, 3,, A
130,69, 0,0, 3,, A
130,70, 0,0, 3,, A
130,71, 0,0, 3,, A
130,72, 0,0, 3,, A
130,73, 0,0, 3,, A
130,74, 0,0, 3,, A
130,75, 0,0, 3,, A
130,76, 0,0, 3,, A
130,77, 0,0, 3,, A
130,78, 0,0, 3,, A
130,79, 0,0, 3,, A
130,80, 0,0, 3,, A
130,81, 0,0, 3,, A
130,82, 0,0, 3,, A
130,83, 0,0, 3,, A
130,84, 0,0, 3,, A
130,85, 0,0, 3,, A
130,86, 0,0, 3,, A
130,87, 0,0, 3,, A
130,88, 0,0, 3,, A
130,89, 0,0, 3,, A
130,90, 0,0, 3,, A
130,91, 0,0, 3,, A
]])
animSetTile(Arrows, 0, 0)
animSetColorKey(Arrows, 0)
animSetScale(Arrows, 0.5, 0.5)

Gradient = animNew(sysSff, [[
5,0, 0,0, -1,, A
]])
animSetTile(Gradient, 1, 0)
animSetColorKey(Gradient, 0)
animSetScale(Gradient, 0.5, 0.5)

TName = animNew(sysSff, [[
2,1, 0,0, -1
]])
animSetTile(TName, 1, 0)
animSetColorKey(TName, 0)
animSetScale(TName, 0.5, 0.5)

IMT = animNew(sysSff, [[
20,0, 0,0, -1
]])
animSetTile(IMT, 0, 0)
animSetColorKey(IMT, 0)
animSetScale(IMT, 0.5, 0.5)

TIME = animNew(sysSff, [[
-1,-1,0,0,30
40,0, 0,0, 1,, A
40,1, 0,0, 1,, A
40,2, 0,0, 1,, A
40,3, 0,0, 1,, A
40,4, 0,0, 1,, A
40,5, 0,0, 1,, A
40,6, 0,0, 1,, A
40,7, 0,0, 1,, A
40,8, 0,0, 1,, A
40,9, 0,0, 1,, A
40,10, 0,0, 1,, A
40,11, 0,0, 1,, A
40,12, 0,0, 1,, A
40,13, 0,0, 1,, A
40,14, 0,0, 1,, A
40,15, 0,0, 1,, A
40,16, 0,0, 1,, A
40,17, 0,0, 1,, A
40,18, 0,0, 1,, A
40,19, 0,0, 1,, A
40,20, 0,0, 1,, A
40,21, 0,0, 1,, A
40,22, 0,0, 1,, A
40,23, 0,0, 1,, A
40,24, 0,0, 1,, A
40,25, 0,0, 1,, A
40,26, 0,0, 1,, A
40,27, 0,0, 1,, A
40,28, 0,0, 1,, A
40,29, 0,0, 1,, A
40,30, 0,0, 1,, A
40,31, 0,0, 1,, A
40,32, 0,0, 1,, A
40,33, 0,0, 1,, A
40,34, 0,0, 1,, A
40,35, 0,0, 1,, A
40,36, 0,0, 1,, A
40,37, 0,0, 1,, A
40,38, 0,0, 1,, A
40,39, 0,0, 1,, A
40,40, 0,0, 1,, A
40,41, 0,0, 1,, A
40,42, 0,0, 1,, A
40,43, 0,0, 1,, A
40,44, 0,0, 1,, A
40,45, 0,0, 1,, A
40,46, 0,0, 1,, A
40,47, 0,0, 1,, A
40,48, 0,0, 1,, A
40,49, 0,0, 1,, A
40,50, 0,0, 1,, A
40,51, 0,0, 1,, A
40,52, 0,0, 1,, A
40,53, 0,0, 1,, A
40,54, 0,0, 1,, A
40,55, 0,0, 1,, A
40,56, 0,0, 1,, A
40,57, 0,0, 1,, A
40,58, 0,0, 1,, A
40,59, 0,0, 1,, A
40,60, 0,0, 1,, A
40,61, 0,0, 1,, A
40,62, 0,0, 1,, A
40,63, 0,0, 1,, A
40,64, 0,0, 1,, A
40,65, 0,0, 1,, A
40,66, 0,0, 1,, A
40,67, 0,0, 1,, A
40,68, 0,0, 1,, A
40,69, 0,0, 1,, A
40,70, 0,0, 1,, A
40,71, 0,0, 1,, A
40,72, 0,0, 1,, A
40,73, 0,0, 1,, A
40,74, 0,0, 1,, A
40,75, 0,0, 1,, A
40,76, 0,0, 1,, A
40,77, 0,0, 1,, A
40,78, 0,0, 1,, A
40,79, 0,0, 1,, A
40,80, 0,0, 1,, A
40,81, 0,0, 1,, A
40,82, 0,0, 1,, A
40,83, 0,0, 1,, A
40,84, 0,0, 1,, A
40,85, 0,0, 1,, A
40,86, 0,0, 1,, A
40,87, 0,0, 1,, A
40,88, 0,0, 1,, A
40,89, 0,0, 1,, A
40,90, 0,0, 1,, A
40,91, 0,0, 1,, A
40,92, 0,0, 1,, A
40,93, 0,0, 1,, A
40,94, 0,0, 1,, A
40,95, 0,0, 1,, A
40,96, 0,0, 1,, A
40,97, 0,0, 1,, A
40,98, 0,0, 1,, A
40,99, 0,0, 1,, A
40,100, 0,0, 2,, A
40,101, 0,0, 2,, A
40,102, 0,0, 2,, A
40,103, 0,0, 2,, A
40,104, 0,0, 2,, A
40,105, 0,0, 2,, A
40,106, 0,0, 2,, A
40,107, 0,0, 2,, A
40,108, 0,0, 2,, A
40,109, 0,0, 2,, A
40,110, 0,0, 2,, A
40,111, 0,0, 2,, A
40,112, 0,0, 2,, A
40,113, 0,0, 2,, A
40,114, 0,0, 2,, A
40,115, 0,0, 2,, A
40,116, 0,0, 2,, A
40,117, 0,0, 2,, A
40,118, 0,0, 2,, A
40,119, 0,0, 2,, A
40,120, 0,0, 2,, A
40,121, 0,0, 2,, A
40,122, 0,0, 2,, A
40,123, 0,0, 2,, A
40,124, 0,0, 2,, A
40,125, 0,0, 2,, A
40,126, 0,0, 2,, A
40,127, 0,0, 2,, A
40,128, 0,0, 2,, A
40,129, 0,0, 2,, A
40,130, 0,0, 2,, A
40,131, 0,0, 2,, A
40,132, 0,0, 2,, A
40,133, 0,0, 2,, A
40,134, 0,0, 2,, A
40,135, 0,0, 2,, A
40,136, 0,0, 2,, A
40,137, 0,0, 2,, A
40,138, 0,0, 2,, A
40,139, 0,0, 2,, A
40,140, 0,0, 2,, A
40,141, 0,0, 2,, A
40,142, 0,0, 2,, A
40,143, 0,0, 2,, A
40,144, 0,0, 2,, A
40,145, 0,0, 2,, A
40,146, 0,0, 2,, A
40,147, 0,0, 2,, A
40,148, 0,0, 2,, A
40,149, 0,0, 2,, A
40,150, 0,0, 2,, A
40,151, 0,0, 2,, A
40,152, 0,0, 2,, A
40,153, 0,0, 2,, A
40,154, 0,0, 2,, A
40,155, 0,0, 2,, A
40,156, 0,0, 2,, A
40,157, 0,0, 2,, A
40,158, 0,0, 2,, A
40,159, 0,0, 2,, A
40,160, 0,0, 2,, A
40,161, 0,0, 2,, A
40,162, 0,0, 2,, A
40,163, 0,0, 2,, A
40,164, 0,0, 2,, A
40,165, 0,0, 2,, A
40,166, 0,0, 2,, A
40,167, 0,0, 2,, A
40,168, 0,0, 2,, A
40,169, 0,0, 2,, A
-1,-1, 0,0, -1,, A
]])
animSetTile(TIME, 0, 0)
animSetColorKey(TIME, 0)
animSetScale(TIME, 0.5, 0.5)

RING = animNew(sysSff, [[
35,0,  -190,70, 3,, A
35,1,  -190,70, 3,, A
35,2,  -190,70, 3,, A
35,3,  -190,70, 3,, A
35,4,  -190,70, 3,, A
35,5,  -190,70, 3,, A
35,6,  -190,70, 3,, A
35,7,  -190,70, 3,, A
35,8,  -190,70, 3,, A
35,9,  -190,70, 3,, A
35,10, -190,70, 3,, A
35,11, -190,70, 3,, A
35,12, -190,70, 3,, A
35,13, -190,70, 3,, A
35,14, -190,70, 3,, A
35,15, -190,70, 3,, A
35,16, -190,70, 3,, A
35,17, -190,70, 3,, A
35,18, -190,70, 3,, A
35,19, -190,70, 3,, A
35,20, -190,70, 3,, A
35,21, -190,70, 3,, A
35,22, -190,70, 3,, A
35,23, -190,70, 3,, A
35,24, -190,70, 3,, A
35,25, -190,70, 3,, A
35,26, -190,70, 3,, A
35,27, -190,70, 3,, A
35,28, -190,70, 3,, A
35,29, -190,70, 3,, A
35,30, -190,70, 3,, A
35,31, -190,70, 3,, A
35,32, -190,70, 3,, A
35,33, -190,70, 3,, A
35,34, -190,70, 3,, A
35,35, -190,70, 3,, A
35,36, -190,70, 3,, A
35,37, -190,70, 3,, A
35,38, -190,70, 3,, A
35,39, -190,70, 3,, A
35,40, -190,70, 75,, A
]])
animSetTile(RING, 0, 0)
animSetColorKey(RING, 0)
animSetScale(RING, 0.5, 0.5)

selBox = animNew(sysSff, [[
100,1, 0,0, -1
]])
animSetTile(selBox, 1, 0)
animSetColorKey(selBox, -1)
animSetAlpha(selBox, 1, 255)
animSetPos(selBox, 0, 166)
animSetWindow(selBox, 5, 0, 151, 240)

selBox2 = animNew(sysSff, [[
100,1, 0,0, -1
]])
animSetTile(selBox2, 1, 0)
animSetColorKey(selBox2, -1)
animSetAlpha(selBox2, 1, 255)
animSetPos(selBox2, 0, 166)
animSetWindow(selBox2, 164, 0, 151, 240)

Circles = animNew(sysSff, [[
135,0, -215, -175, 4,, A
135,1, -215, -175, 4,, A
135,2, -215, -175, 4,, A
135,3, -215, -175, 4,, A
135,4, -215, -175, 4,, A
135,5, -215, -175, 4,, A
135,6, -215, -175, 4,, A
135,7, -215, -175, 4,, A
135,8, -215, -175, 4,, A
135,9, -215, -175, 4,, A
135,10, -215, -175, 4,, A
135,11, -215, -175, 4,, A
135,12, -215, -175, 4,, A
135,13, -215, -175, 4,, A
135,14, -215, -175, 4,, A
135,15, -215, -175, 4,, A
135,16, -215, -175, 4,, A
135,17, -215, -175, 4,, A
135,18, -215, -175, 4,, A
135,19, -215, -175, 4,, A
135,20, -215, -175, 4,, A
135,21, -215, -175, 4,, A
135,22, -215, -175, 4,, A
135,23, -215, -175, 4,, A
135,24, -215, -175, 4,, A
135,25, -215, -175, 4,, A
135,26, -215, -175, 4,, A
135,27, -215, -175, 4,, A
135,28, -215, -175, 4,, A
135,29, -215, -175, 4,, A
135,30, -215, -175, 4,, A
135,31, -215, -175, 4,, A
135,32, -215, -175, 4,, A
135,33, -215, -175, 4,, A
135,34, -215, -175, 4,, A
135,35, -215, -175, 4,, A
135,36, -215, -175, 4,, A
135,37, -215, -175, 4,, A
135,38, -215, -175, 4,, A
135,39, -215, -175, 4,, A
135,40, -215, -175, 4,, A
135,41, -215, -175, 4,, A
135,42, -215, -175, 4,, A
135,43, -215, -175, 4,, A
135,44, -215, -175, 4,, A
135,45, -215, -175, 4,, A
135,46, -215, -175, 4,, A
135,47, -215, -175, 4,, A
135,48, -215, -175, 4,, A
135,49, -215, -175, 4,, A
135,50, -215, -175, 4,, A
135,51, -215, -175, 4,, A
135,52, -215, -175, 4,, A
135,53, -215, -175, 4,, A
135,54, -215, -175, 4,, A
135,55, -215, -175, 4,, A
135,56, -215, -175, 4,, A
135,57, -215, -175, 4,, A
135,58, -215, -175, 4,, A
135,59, -215, -175, 4,, A
135,60, -215, -175, 4,, A
135,61, -215, -175, 4,, A
135,62, -215, -175, 4,, A
135,63, -215, -175, 4,, A
135,64, -215, -175, 4,, A
135,65, -215, -175, 4,, A
135,66, -215, -175, 4,, A
135,67, -215, -175, 4,, A
135,68, -215, -175, 4,, A
135,69, -215, -175, 4,, A
135,70, -215, -175, 4,, A
135,71, -215, -175, 4,, A
135,72, -215, -175, 4,, A
135,73, -215, -175, 4,, A
135,74, -215, -175, 4,, A
135,75, -215, -175, 4,, A
135,76, -215, -175, 4,, A
135,77, -215, -175, 4,, A
135,78, -215, -175, 4,, A
135,79, -215, -175, 4,, A
135,80, -215, -175, 4,, A
135,81, -215, -175, 4,, A
135,82, -215, -175, 4,, A
135,83, -215, -175, 4,, A
135,84, -215, -175, 4,, A
135,85, -215, -175, 4,, A
135,86, -215, -175, 4,, A
135,87, -215, -175, 4,, A
135,88, -215, -175, 4,, A
135,89, -215, -175, 4,, A
135,90, -215, -175, 4,, A
135,91, -215, -175, 4,, A
135,92, -215, -175, 4,, A
135,93, -215, -175, 4,, A
135,94, -215, -175, 4,, A
135,95, -215, -175, 4,, A
135,96, -215, -175, 4,, A
135,97, -215, -175, 4,, A
135,98, -215, -175, 4,, A
135,99, -215, -175, 4,, A
135,100, -215, -175, 4,, A
135,101, -215, -175, 4,, A
135,102, -215, -175, 4,, A
135,103, -215, -175, 4,, A
135,104, -215, -175, 4,, A
135,105, -215, -175, 4,, A
135,106, -215, -175, 4,, A
135,107, -215, -175, 4,, A
135,108, -215, -175, 4,, A
135,109, -215, -175, 4,, A
135,110, -215, -175, 4,, A
135,111, -215, -175, 4,, A
135,112, -215, -175, 4,, A
135,113, -215, -175, 4,, A
135,114, -215, -175, 4,, A
135,115, -215, -175, 4,, A
135,116, -215, -175, 4,, A
135,117, -215, -175, 4,, A
135,118, -215, -175, 4,, A
135,119, -215, -175, 4,, A
135,120, -215, -175, 4,, A
135,121, -215, -175, 4,, A
135,122, -215, -175, 4,, A
135,123, -215, -175, 4,, A
135,124, -215, -175, 4,, A
135,125, -215, -175, 4,, A
135,126, -215, -175, 4,, A
135,127, -215, -175, 4,, A
135,128, -215, -175, 4,, A
135,129, -215, -175, 4,, A
135,130, -215, -175, 4,, A
135,131, -215, -175, 4,, A
135,132, -215, -175, 4,, A
135,133, -215, -175, 4,, A
135,134, -215, -175, 4,, A
135,135, -215, -175, 4,, A
135,136, -215, -175, 4,, A
135,137, -215, -175, 4,, A
135,138, -215, -175, 4,, A
135,139, -215, -175, 4,, A
135,140, -215, -175, 4,, A
135,141, -215, -175, 4,, A
]])
animSetTile(Circles, 0, 0)
animSetColorKey(Circles, 0)
animSetScale(Circles, 0.5, 0.5)

Circles2 = animNew(sysSff, [[
135,0, 245, -175, 4,, A
135,1, 245, -175, 4,, A
135,2, 245, -175, 4,, A
135,3, 245, -175, 4,, A
135,4, 245, -175, 4,, A
135,5, 245, -175, 4,, A
135,6, 245, -175, 4,, A
135,7, 245, -175, 4,, A
135,8, 245, -175, 4,, A
135,9, 245, -175, 4,, A
135,10, 245, -175, 4,, A
135,11, 245, -175, 4,, A
135,12, 245, -175, 4,, A
135,13, 245, -175, 4,, A
135,14, 245, -175, 4,, A
135,15, 245, -175, 4,, A
135,16, 245, -175, 4,, A
135,17, 245, -175, 4,, A
135,18, 245, -175, 4,, A
135,19, 245, -175, 4,, A
135,20, 245, -175, 4,, A
135,21, 245, -175, 4,, A
135,22, 245, -175, 4,, A
135,23, 245, -175, 4,, A
135,24, 245, -175, 4,, A
135,25, 245, -175, 4,, A
135,26, 245, -175, 4,, A
135,27, 245, -175, 4,, A
135,28, 245, -175, 4,, A
135,29, 245, -175, 4,, A
135,30, 245, -175, 4,, A
135,31, 245, -175, 4,, A
135,32, 245, -175, 4,, A
135,33, 245, -175, 4,, A
135,34, 245, -175, 4,, A
135,35, 245, -175, 4,, A
135,36, 245, -175, 4,, A
135,37, 245, -175, 4,, A
135,38, 245, -175, 4,, A
135,39, 245, -175, 4,, A
135,40, 245, -175, 4,, A
135,41, 245, -175, 4,, A
135,42, 245, -175, 4,, A
135,43, 245, -175, 4,, A
135,44, 245, -175, 4,, A
135,45, 245, -175, 4,, A
135,46, 245, -175, 4,, A
135,47, 245, -175, 4,, A
135,48, 245, -175, 4,, A
135,49, 245, -175, 4,, A
135,50, 245, -175, 4,, A
135,51, 245, -175, 4,, A
135,52, 245, -175, 4,, A
135,53, 245, -175, 4,, A
135,54, 245, -175, 4,, A
135,55, 245, -175, 4,, A
135,56, 245, -175, 4,, A
135,57, 245, -175, 4,, A
135,58, 245, -175, 4,, A
135,59, 245, -175, 4,, A
135,60, 245, -175, 4,, A
135,61, 245, -175, 4,, A
135,62, 245, -175, 4,, A
135,63, 245, -175, 4,, A
135,64, 245, -175, 4,, A
135,65, 245, -175, 4,, A
135,66, 245, -175, 4,, A
135,67, 245, -175, 4,, A
135,68, 245, -175, 4,, A
135,69, 245, -175, 4,, A
135,70, 245, -175, 4,, A
135,71, 245, -175, 4,, A
135,72, 245, -175, 4,, A
135,73, 245, -175, 4,, A
135,74, 245, -175, 4,, A
135,75, 245, -175, 4,, A
135,76, 245, -175, 4,, A
135,77, 245, -175, 4,, A
135,78, 245, -175, 4,, A
135,79, 245, -175, 4,, A
135,80, 245, -175, 4,, A
135,81, 245, -175, 4,, A
135,82, 245, -175, 4,, A
135,83, 245, -175, 4,, A
135,84, 245, -175, 4,, A
135,85, 245, -175, 4,, A
135,86, 245, -175, 4,, A
135,87, 245, -175, 4,, A
135,88, 245, -175, 4,, A
135,89, 245, -175, 4,, A
135,90, 245, -175, 4,, A
135,91, 245, -175, 4,, A
135,92, 245, -175, 4,, A
135,93, 245, -175, 4,, A
135,94, 245, -175, 4,, A
135,95, 245, -175, 4,, A
135,96, 245, -175, 4,, A
135,97, 245, -175, 4,, A
135,98, 245, -175, 4,, A
135,99, 245, -175, 4,, A
135,100, 245, -175, 4,, A
135,101, 245, -175, 4,, A
135,102, 245, -175, 4,, A
135,103, 245, -175, 4,, A
135,104, 245, -175, 4,, A
135,105, 245, -175, 4,, A
135,106, 245, -175, 4,, A
135,107, 245, -175, 4,, A
135,108, 245, -175, 4,, A
135,109, 245, -175, 4,, A
135,110, 245, -175, 4,, A
135,111, 245, -175, 4,, A
135,112, 245, -175, 4,, A
135,113, 245, -175, 4,, A
135,114, 245, -175, 4,, A
135,115, 245, -175, 4,, A
135,116, 245, -175, 4,, A
135,117, 245, -175, 4,, A
135,118, 245, -175, 4,, A
135,119, 245, -175, 4,, A
135,120, 245, -175, 4,, A
135,121, 245, -175, 4,, A
135,122, 245, -175, 4,, A
135,123, 245, -175, 4,, A
135,124, 245, -175, 4,, A
135,125, 245, -175, 4,, A
135,126, 245, -175, 4,, A
135,127, 245, -175, 4,, A
135,128, 245, -175, 4,, A
135,129, 245, -175, 4,, A
135,130, 245, -175, 4,, A
135,131, 245, -175, 4,, A
135,132, 245, -175, 4,, A
135,133, 245, -175, 4,, A
135,134, 245, -175, 4,, A
135,135, 245, -175, 4,, A
135,136, 245, -175, 4,, A
135,137, 245, -175, 4,, A
135,138, 245, -175, 4,, A
135,139, 245, -175, 4,, A
135,140, 245, -175, 4,, A
135,141, 245, -175, 4,, A
]])
animSetTile(Circles2, 0, 0)
animSetColorKey(Circles2, 0)
animSetScale(Circles2, 0.5, 0.5)

p1Head = animNew(sysSff, [[
120,0, 0,0, -1
]])
animSetTile(p1Head, 0, 0)
animSetColorKey(p1Head, 0)
animSetScale(p1Head, 0.5, 0.5)

p2Head = animNew(sysSff, [[
122,0, 474,0, -1
]])
animSetTile(p2Head, 0, 0)
animSetColorKey(p2Head, 0)
animSetScale(p2Head, 0.5, 0.5)

VS = animNew(sysSff, [[
210,0, 330,200, -1,, A
]])
animSetTile(VS, 0, 0)
animSetColorKey(VS, 0)
animSetScale(VS, 0.5, 0.5)



function bgSub()
  animAddPos(selBG, 0, 0)
  animUpdate(selBG)
  animDraw(selBG)
  animAddPos(Arrows, 0, 0)
  animUpdate(Arrows)
  animDraw(Arrows)
  animAddPos(Gradient, 0, 0)
  animUpdate(Gradient)
  animDraw(Gradient)
  animAddPos(Circles, 0, 0)
  animUpdate(Circles)
  animDraw(Circles)
  animAddPos(Circles2, 0, 0)
  animUpdate(Circles2)
  animDraw(Circles2)
  animAddPos(p1Head, 0, 0)
  animUpdate(p1Head)
  animDraw(p1Head)
  animAddPos(p2Head, 0, 0)
  animUpdate(p2Head)
  animDraw(p2Head)
end


------------------------------------------------------------
watchMode = createTextImg(jgFnt, 0, 1, 'Watch Mode', 180, 80)
p1VsComTxt = createTextImg(jgFnt, 0, 1, '1P vs. Com', 195, 105)
p1VsP2 = createTextImg(jgFnt, 0, 1, '1P vs. 2P', 214, 130)
netplay = createTextImg(jgFnt, 0, 1, 'Netplay', 234, 155)
portChange = createTextImg(jgFnt, 0, 1, '', 117, 180)
replay = createTextImg(jgFnt, 0, 1, 'Replay', 247, 205)
comVsP1 = createTextImg(jgFnt, 0, 1, 'Com vs. 1P', 195, 230)


connecting = createTextImg(jgFnt, 0, 1, '', 10, 140)
loading = createTextImg(jgFnt, 0, 1, 'Loading...', 100, 210)

inputdia = inputDialogNew()

function cmdInput()
  commandInput(p1Cmd, p1In)
  commandInput(p2Cmd, p2In)
end

function main()
  while true do
    p1Selected = {}
    p1SelEnd = false
    p1Portrait = nil

    p2Selected = {}
    p2SelEnd = false
    p2Portrait = nil

    if gameMode == 6 then
      p1Task = noTask
      p2Task = p2TmSub
    else
      p1Task = p1TmSub
      p2Task = noTask
      if gameMode > 1 then p2Task = p2TmSub end
    end

    refresh()

    commandBufReset(p1Cmd, p1In)
    commandBufReset(p2Cmd, p2In)

    selMode = true
    selectStart()

    ------------------------------------------------------------
    --メインループ
    ------------------------------------------------------------
    while selMode do
      if esc() then return end
      bgSub()
      if p1Portrait then drawPortrait(p1Portrait, 18, 0, 0.5, 0.5) end
      if p2Portrait then drawPortrait(p2Portrait, 308, 0, -0.5, 0.5) end
      drawFace(60, 90, p1SelOffset)
      drawFace(999, 999, p2SelOffset)
      if p1SelEnd and p2SelEnd then selStageSub() end
      p2Task()
      p1Task()
      cmdInput()
      refresh()
    end
    for i = 1, 20 do
      local k = 0
      for j = 1, #p1Selected do
        local scl = 10000.0 / (10000.0 - k*i)
        local tmp = i*k / 20
      end
      k = 0
      for j = 1, #p2Selected do
        local scl = 10000.0 / (10000.0 - k*i)
        local tmp = i*k / 20
      end
      animAddPos(VS, 0, 0)
      animUpdate(VS)
      animDraw(VS)
      textImgDraw(loading)
      refresh()
    end
    while true do
      local winner = game()
      if true or winner < 0 or gameMode ~= 0 then break end
      randSel(1, winner)
      randSel(2, winner)
      loadStart()
    end
    bgm = 'sound/002.mp3'
    playBGM(bgm)
  end
end

function modeSel()
  while true do
    exitNetPlay()
    exitReplay()

    gameMode = 0
    p1In = 1
    p2In = 1

    for i = 1, 8 do
      setCom(i, 8)
    end
    setAutoLevel(false)
    setMatchNo(1)
    setHomeTeam(1)
    resetRemapInput()

    textImgSetText(portChange, 'Port Change(' .. getListenPort() .. ')')

    refresh()
    commandBufReset(p1Cmd, 1)

    while btnPalNo(p1Cmd) <= 0 do
      if commandGetState(p1Cmd, 'u') then
        sndPlay(sysSnd, 100, 0)
        gameMode = gameMode - 1
      elseif commandGetState(p1Cmd, 'd') then
        sndPlay(sysSnd, 100, 0)
        gameMode = gameMode + 1
      end
      if gameMode < 0 then
        gameMode = 6
      elseif gameMode > 6 then
        gameMode = 0
      end
      animAddPos(mBG, 0, 0)
      animUpdate(mBG)
      animDraw(mBG)
      animAddPos(Globe, 0, 0)
      animUpdate(Globe)
      animDraw(Globe)
      animAddPos(RING, 0, 0)
      animUpdate(RING)
      animDraw(RING)
      animAddPos(TIME, 0, 0)
      animUpdate(TIME)
      animDraw(TIME)
      animAddPos(Gradient, 0, 0)
      animUpdate(Gradient)
      animDraw(Gradient)
      animAddPos(IMT, 0, 0)
      animUpdate(IMT)
      animDraw(IMT)
      animAddPos(TName, 0, 0)
      animUpdate(TName)
      animDraw(TName)
      textImgDraw(watchMode)
      textImgDraw(p1VsComTxt)
      textImgDraw(p1VsP2)
      textImgDraw(netplay)
      textImgDraw(portChange)
      textImgDraw(replay)
      textImgDraw(comVsP1)
      animUpdate(MCursor)
      animPosDraw(MCursor, 100, 53 + 25*gameMode)
      cmdInput()
      refresh()
    end
    sndPlay(sysSnd, 100, 1)

    local cancel = false

    if gameMode == 0 then
    bgm = 'sound/002.mp3'
    playBGM(bgm)
    elseif gameMode == 1 then
      setCom(1, 0)
    bgm = 'sound/002.mp3'
    playBGM(bgm)
    elseif gameMode == 2 then
      p2In = 2
      setCom(1, 0)
      setCom(2, 0)
    bgm = 'sound/002.mp3'
    playBGM(bgm)
    elseif gameMode == 3 then
      p2In = 2
      setCom(1, 0)
      setCom(2, 0)
      inputDialogPopup(inputdia, 'Input Server')
      while not inputDialogIsDone(inputdia) do
        refresh()
      end
      textImgSetText(
        connecting,
        'Now connecting.. ' .. inputDialogGetStr(inputdia)
        .. ' ' .. getListenPort())
    bgm = 'sound/003.mp3'
    playBGM(bgm)
      enterNetPlay(inputDialogGetStr(inputdia))
      while not connected() do
        if esc() then
          cancel = true
          break
        end
        textImgDraw(connecting)
        animAddPos(selBG, 0, 0)
        animUpdate(selBG)
        animDraw(selBG)
        animAddPos(mBG, 0, 0)
        animUpdate(mBG)
        animDraw(mBG)
        refresh()
      end
      if not cancel then
        init()
        synchronize()
        math.randomseed(sszRandom())
      end
    elseif gameMode == 4 then
      inputDialogPopup(inputdia, 'Input Port')
      while not inputDialogIsDone(inputdia) do
        refresh()
      end
      setListenPort(inputDialogGetStr(inputdia))
      cancel = true
    elseif gameMode == 5 then
      p2In = 2
      setCom(1, 0)
      setCom(2, 0)
    bgm = 'sound/003.mp3'
    playBGM(bgm)
      enterReplay('replay/netplay.replay')
      init()
      synchronize()
      math.randomseed(sszRandom())
    elseif gameMode == 6 then
      remapInput(1, 2)
      remapInput(2, 1)
      p1In = 2
      p2In = 2
      setCom(2, 0)
    bgm = 'sound/002.mp3'
    playBGM(bgm)
    elseif gameMode == 7 then
      script.randomtest.run()
      cancel = true
    end
    if not cancel then
      main()
    bgm = 'sound/001.mp3'
    playBGM(bgm)
    end
  end
end

modeSel()

