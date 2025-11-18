L57_1 = CF5D1E1D783821953
L58_1 = "new"

function L59_1()
  local L0_2, L1_2, L2_2
  L0_2 = _UPVALUE0_
  L1_2 = CF5D1E1D783821953
  L1_2 = L1_2.prototype
  L0_2 = L0_2(L1_2)
  L1_2 = CF5D1E1D783821953
  L1_2 = L1_2.super
  L2_2 = L0_2
  L1_2(L2_2)
  return L0_2
end

L57_1[L58_1] = L59_1
L57_1 = _ENV
L58_1 = "CF5D1E1D783821953"
L57_1 = L57_1[L58_1]
L58_1 = "super"

function L59_1(A0_2)
  local L1_2, L2_2
  L1_2 = C2D501656BC102CA2
  L1_2 = L1_2.super
  L2_2 = A0_2
  L1_2(L2_2)
end

L57_1[L58_1] = L59_1
L57_1 = "CF5D1E1D783821953"
L58_1 = _ENV
L59_1 = "CF5D1E1D783821953"
L58_1 = L58_1[L59_1]
L25_1[L57_1] = L58_1
L57_1 = _ENV
L58_1 = "CF5D1E1D783821953"
L57_1 = L57_1[L58_1]
L58_1 = "__name__"
L59_1 = true
L57_1[L58_1] = L59_1
L57_1 = _ENV
L58_1 = "CF5D1E1D783821953"
L57_1 = L57_1[L58_1]
L58_1 = "prototype"
L59_1 = L15_1
L59_1 = L59_1()
L57_1[L58_1] = L59_1
L57_1 = _ENV
L58_1 = "CF5D1E1D783821953"
L57_1 = L57_1[L58_1]
L58_1 = "prototype"
L57_1 = L57_1[L58_1]
L58_1 = "FD8D5F3745B4B5174"

function L59_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  A0_2[3] = 0
  L1_2 = CF74EC46ADA8DC783
  L1_2 = L1_2.S3567CE4CD45AC7D3
  L2_2 = _UPVALUE1_.string
  L3_2 = "script/"
  L2_2 = L2_2(L3_2)
  L3_2 = _UPVALUE1_.string
  L4_2 = "bed"
  L3_2 = L3_2(L4_2)
  L2_2 = L2_2 .. L3_2
  L1_2 = L1_2(L2_2)
  L2_2 = CF74EC46ADA8DC783
  L2_2 = L2_2.S092ACF6F9CAC2BA2
  L3_2 = L1_2
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2.F903489488FB9BA8D
  
  function L4_2()
    local L0_3, L1_3
    L0_3 = CF74EC46ADA8DC783
    L0_3 = L0_3.S8EE12659B6952775
    L1_3 = _UPVALUE1_
    return L0_3(L1_3)
  end
  
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.F59ADE74F1BA73143
  L4_2 = {}
  L5_2 = 2.27
  L6_2 = 0.02
  L7_2 = 0.07
  L4_2[1] = L5_2
  L4_2[2] = L6_2
  L4_2[3] = L7_2
  L5_2 = -90
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = CF74EC46ADA8DC783
  L2_2 = L2_2.S34645180A2F21B29
  L3_2 = L1_2
  L2_2(L3_2)
end

L57_1[L58_1] = L59_1
L57_1 = _ENV
L58_1 = "CF5D1E1D783821953"
L57_1 = L57_1[L58_1]
L58_1 = "prototype"
L57_1 = L57_1[L58_1]
L58_1 = "F59ADE74F1BA73143"

function L59_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  L3_2 = c56DE81E7
  L3_2 = L3_2.f3500DC3A
  L3_2 = L3_2()
  if L3_2 then
    L4_2 = C0C062DE5AED06885
    L4_2 = L4_2.SDF93F6D53E9597E3
    L5_2 = 2
    L6_2 = "msg_bed_cannot_01"
    L7_2 = "bed"
    L4_2(L5_2, L6_2, L7_2)
    L4_2 = C0C062DE5AED06885
    L4_2 = L4_2.S9E4A033ECCF49BB0
    L4_2()
    L4_2 = false
    return L4_2
  end
  L4_2 = C0C062DE5AED06885
  L4_2 = L4_2.SDF93F6D53E9597E3
  L5_2 = 2
  L6_2 = "msg_bed_01"
  L7_2 = "bed"
  L4_2(L5_2, L6_2, L7_2)
  L4_2 = c5090F7B8
  L4_2 = L4_2.fB628218B
  L4_2()
  L4_2 = "msg_select_bed_01"
  L5_2 = C0C062DE5AED06885
  L5_2 = L5_2.S945A889425CEA31C
  L6_2 = 4
  L7_2 = 19
  L5_2 = L5_2(L6_2, L7_2)
  if L5_2 then
    L4_2 = "msg_select_bed_01"
  else
    L4_2 = "msg_select_bed_02"
  end
  L5_2 = C0C062DE5AED06885
  L5_2 = L5_2.S6C934555A2CE2AD0
  L6_2 = _hx_tab_array
  L7_2 = {}
  L7_2.length = 0
  L7_2[0] = L4_2
  L8_2 = "msg_select_bed_06"
  L7_2[1] = L8_2
  L8_2 = 2
  L6_2 = L6_2(L7_2, L8_2)
  L7_2 = 0
  L8_2 = true
  L9_2 = false
  L10_2 = nil
  L11_2 = nil
  L12_2 = "bed"
  L5_2 = L5_2(L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2)
  L6_2 = C0C062DE5AED06885
  L6_2 = L6_2.S9E4A033ECCF49BB0
  L6_2()
  if 0 == L5_2 then
    L6_2 = C8B9E8071BDDC08BB
    L6_2 = L6_2.SC12ED186C14D0473
    L7_2 = "EV_CMN_FADE_OUT_1_5S"
    L6_2(L7_2)
    L6_2 = C8B9E8071BDDC08BB
    L6_2 = L6_2.SC12ED186C14D0473
    L7_2 = "SYS_SE_BLOCK_ALL"
    L6_2(L7_2)
    L6_2 = C0C062DE5AED06885
    L6_2 = L6_2.S8C1B899474466628
    L7_2 = "transition_fade_inout"
    L8_2 = 2.0
    L6_2(L7_2, L8_2)
    L6_2 = C0C062DE5AED06885
    L6_2 = L6_2.SD4E81F2D160710AC
    L7_2 = 1.0
    L6_2(L7_2)
    L6_2 = C0C062DE5AED06885
    L6_2 = L6_2.SB52FCFA328DF8D10
    L7_2 = ""
    L8_2 = "PLAY_ME_IK_M_KAIFUKU_BED"
    L6_2(L7_2, L8_2)
    L6_2 = C0C062DE5AED06885
    L6_2 = L6_2.S069762B6130DAA3B
    L6_2()
    L7_2 = A0_2
    L6_2 = A0_2.FA43D30278CBAEF88
    L8_2 = A1_2
    L9_2 = A2_2
    L6_2(L7_2, L8_2, L9_2)
    if not L3_2 then
      L6_2 = C0C062DE5AED06885
      L6_2 = L6_2.S945A889425CEA31C
      L7_2 = 4
      L8_2 = 19
      L6_2 = L6_2(L7_2, L8_2)
      if L6_2 then
        L6_2 = c5090F7B8
        L6_2 = L6_2.f92941AC0
        L7_2 = "flag_Bed_Time"
        L8_2 = true
        L6_2(L7_2, L8_2)
        L6_2 = c56DE81E7
        L6_2 = L6_2.fB773E582
        L7_2 = 20
        L8_2 = 0
        L9_2 = 0
        L6_2(L7_2, L8_2, L9_2)
        L6_2 = C0C062DE5AED06885
        L6_2 = L6_2.S0BE47D0E1D3B6EE3
        L6_2()
        L6_2 = C8B9E8071BDDC08BB
        L6_2 = L6_2.SC12ED186C14D0473
        L7_2 = "EV_CMN_STAY_RESET_BED"
        L6_2(L7_2)
        L6_2 = C8B9E8071BDDC08BB
        L6_2 = L6_2.SC12ED186C14D0473
        L7_2 = "EV_STOP_LYER_EVENT_0S"
        L6_2(L7_2)
        L6_2 = C8B9E8071BDDC08BB
        L6_2 = L6_2.SC12ED186C14D0473
        L7_2 = "SYS_SE_BLOCK_RESET"
        L6_2(L7_2)
        L6_2 = C0C062DE5AED06885
        L6_2 = L6_2.S97C2B01459BEA9DB
        L7_2 = "transition_fade_inout"
        L8_2 = 1.0
        L6_2(L7_2, L8_2)
        L6_2 = C0C062DE5AED06885
        L6_2 = L6_2.S069762B6130DAA3B
        L6_2()
      else
        L6_2 = c56DE81E7
        L6_2 = L6_2.fB773E582
        L7_2 = 4
        L8_2 = 0
        L9_2 = 0
        L6_2(L7_2, L8_2, L9_2)
        A0_2[3] = 2
        L6_2 = C0C062DE5AED06885
        L6_2 = L6_2.S0BE47D0E1D3B6EE3
        L6_2()
        L6_2 = C8B9E8071BDDC08BB
        L6_2 = L6_2.SC12ED186C14D0473
        L7_2 = "EV_CMN_STAY_RESET_BED"
        L6_2(L7_2)
        L6_2 = C8B9E8071BDDC08BB
        L6_2 = L6_2.SC12ED186C14D0473
        L7_2 = "SYS_SE_BLOCK_FORCE_ON"
        L6_2(L7_2)
      end
    end
  end
  L6_2 = 0 == L5_2
  return L6_2
end

L57_1[L58_1] = L59_1
L57_1 = _ENV
L58_1 = "CF5D1E1D783821953"
L57_1 = L57_1[L58_1]
L58_1 = "prototype"
L57_1 = L57_1[L58_1]
L58_1 = "FA43D30278CBAEF88"

function L59_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L3_2 = C0C062DE5AED06885
  L3_2 = L3_2.S0958C602F426FF59
  L4_2 = C0C062DE5AED06885
  L4_2 = L4_2.S96D48505638D0B7B
  L5_2 = "Player"
  L6_2 = A1_2[1]
  L7_2 = A1_2[2]
  L8_2 = A1_2[3]
  L9_2 = A2_2
  L4_2, L5_2, L6_2, L7_2, L8_2, L9_2 = L4_2(L5_2, L6_2, L7_2, L8_2, L9_2)
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
end

L57_1[L58_1] = L59_1
L57_1 = _ENV
L58_1 = "CF5D1E1D783821953"
L57_1 = L57_1[L58_1]
L58_1 = "prototype"
L57_1 = L57_1[L58_1]
L58_1 = "__class__"
L59_1 = _ENV
L60_1 = "CF5D1E1D783821953"
L59_1 = L59_1[L60_1]
L57_1[L58_1] = L59_1
L57_1 = _ENV
L58_1 = "CF5D1E1D783821953"
L57_1 = L57_1[L58_1]
L58_1 = "__super__"
L59_1 = _ENV
L60_1 = "C2D501656BC102CA2"
L59_1 = L59_1[L60_1]
L57_1[L58_1] = L59_1
L57_1 = _ENV
L58_1 = "setmetatable"
L57_1 = L57_1[L58_1]
L58_1 = _ENV
L59_1 = "CF5D1E1D783821953"
L58_1 = L58_1[L59_1]
L59_1 = "prototype"
L58_1 = L58_1[L59_1]
L59_1 = {}
L60_1 = "__index"
L61_1 = _ENV
L62_1 = "C2D501656BC102CA2"
L61_1 = L61_1[L62_1]
L62_1 = "prototype"
L61_1 = L61_1[L62_1]
L59_1[L60_1] = L61_1
L57_1(L58_1, L59_1)