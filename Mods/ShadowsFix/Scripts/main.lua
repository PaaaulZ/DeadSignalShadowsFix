local UEHelpers = require("UEHelpers")

local EPlayerPawns = {"NOT_SET", "MAIN", "DESK", "COMPUTER", "KEY_PAD", "ELEVATOR", "SAT", "HIDE", "ELEVATOR_PANEL", "DOOR_BRACE"}

local MIN_SHADOWS_QUALITY = "0" -- "0" => Low, "1" => Medium, "2" => High, "3" => Ultra
local MAX_SHADOWS_QUALITY = "3" -- "0" => Low, "1" => Medium, "2" => High, "3" => Ultra

function Hook_PlayerChangedPawn()
    RegisterHook("/Script/DeadSignal.MainPlayerState:SetPlayersPawn", function(self, NewPawn) end, function(self, NewPawn)

        local CurrentPawn = self:get():GetActivePawn()
        if (CurrentPawn < 0 or CurrentPawn >= #EPlayerPawns) then
            print("[ShadowsFix] Invalid CurrentPawn")
            return
        end

        if (EPlayerPawns[CurrentPawn+1] == "COMPUTER") then
            ChangeShadowQuality(MIN_SHADOWS_QUALITY)
        elseif (EPlayerPawns[CurrentPawn+1] == "DESK") then
            ChangeShadowQuality(MAX_SHADOWS_QUALITY)
        end

    end)
    print("[ShadowsFix] Hooked PlayerChangedPawn")
end

function ChangeShadowQuality(Quality)

    local KismetSystemLibrary = StaticFindObject("/Script/Engine.Default__KismetSystemLibrary")
    if KismetSystemLibrary:IsValid() then
        KismetSystemLibrary:ExecuteConsoleCommand(UEHelpers.GetWorld(), "r.ShadowQuality " .. Quality, nil)
    else
        print("[ShadowsFix] Cannot find KismetSystemLibrary")
        return
    end

end

Hook_PlayerChangedPawn()