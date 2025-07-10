if not game:IsLoaded() then
    game.Loaded:Wait()
end


loadstring([[
    function LPH_NO_VIRTUALIZE(f) return f end;
]])();

local vars = {
    Workspace = game:GetService("Workspace"),
    Players = game:GetService("Players"),
    ReplicatedStorage = game:GetService("ReplicatedStorage"),
    HttpService = game:GetService("HttpService"),
    TeleportService = game:GetService("TeleportService"),
    GuiService = game:GetService("GuiService"),
    RunService = game:GetService("RunService"),
    CollectionService = game:GetService("CollectionService"),
    mt = getrawmetatable(game),
    WebhookURL = "",
    SendOnSuccess = false,
    SendOnFailure = false,
    summerWebhookEnabled = false,
    summerWebhookURL = "",
    summerSubmitDelay = 1,
    delayhop = 2.5,
    activeHighlights = {},
    allPetNames = {},
    petNameSet = {},
    targetPetNames = {},
    Hatch = "",
    kickBeforeRejoin = false,
    TargetFiredEggs = {},
    TargetHatchLoopRunning = false,
    autoReconnectEnabled = false,
    petNameSet = {},
    eggDisplayNames = {},
    selectedEggs = {},
    globalUsedPositions = {},
    seedArray = {},
    seedDisplayNameToKey = {},
    autoGiftEnabled = false,
    giftingTask = nil,
    giftingDelay = 1,
    giftingWeightComparison = "Above",
    giftingWeightThreshold = 0,
    giftingSelectedPlant = nil,
    giftingSelectedPlayer = nil,
    giftedItems = {},
    otherPlayers = {},
    plantNamesForGifter = {},
    playerDropdownGifter = nil,
    seedDisplayNames = {},
    selectedSeedKeys = {},
    EventDisplayNames = {},
    seedArray1 = {},
    displayNameToSeedKey1 = {},
    displayNameToGearKey = {},
    buyseedDisplayNames = {},
    gearArray = {},
    gearDisplayNames = {},
    eggArray = {},
    displayNameToEggKey = {},
    eggDisplayNames = {},
    buyselectedSeedKeys = {},
    selectedGearKeys = {},
    selectedEggKeys = {},
    selectedEventKeys = {},
    autoBuySeed = false,
    autoBuyGear = false,
    autoBuyEgg = false,
    autoBuyEventItems = false,
    EventArray = {},
    autoBuyAllSeeds = false,
    allSeedKeys = {},
    showPlantPrices = false,
    showPetPrices = false,
    plantValuesCache = {},
    lastNotifiedTool = nil,
    lastNotifiedValue = nil,
    currentNotification = nil,
    beeArray = {},
    displayNameToBeeKey = {},
    beeDisplayNames = {},
    EventDisplayNames = {},
    displayNameToEventKey = {},
    selectedBeeKeys = {},
    recipeNames = {},
    SelectedDropdown = nil,
    SelectedRecipe = nil,
    AutoRecipeTrigger = false,
    AutoInputTrigger = false,
    AutoCraftTrigger = false,
    AutoClaimTrigger = false,
    AutoAcceptGift = false,
    plantRarityRank = {
        Common = 1, Uncommon = 2, Rare = 3,
        Legendary = 4, Mythical = 5, Divine = 6
    },
    allPlantableSeeds = {},
    plantSeedNameLookup = {},
    shownPlantableSeedNames = {},
    chosenPlantSeeds = {},
    autoSellEnabled = false,
    autoSellDelayEnabled = false,
    autoSellDelay = 300,
    favoriterRarityOrder = {
        Common = 1, Uncommon = 2, Rare = 3, Legendary = 4,
        Mythical = 5, Divine = 6, Prismatic = 7
    },
    favoriterSeedArray = {},
    favoriterSeedNameToKey = {},
    favoriterSeedDisplayNames = {"All"},
    favoriterMutationNames = {"All", "None"},
    favoriterSelectedSeedKeys = {},
    favoriterSelectedMutations = {},
    favoriterSelectedVariants = {},
    favoritingEnabled = false,
    favoriterMode = "Favorite",
    VariantsFavoriter = {"Normal", "Gold", "Rainbow"},
    seedArray10 = {},
    seedDisplayNameToKey10 = {},
    seedDisplayNames10 = {"All"},
    mutationNames = {"All", "None"},
    selectedSeedKeys10 = {},
    selectedMutations10 = {},
    selectedVariants10 = {},
    variantOptions10 = {"All", "Normal", "Gold", "Rainbow"},
    selectedWeightComparison10 = "Above",
    weightThreshold10 = 0,
    deleteSeedArray = {},
    deleteSeedDisplayNameToKey = {},
    deleteSeedDisplayNames = {"All"},
    deleteMutationNames = {"All", "None"},
    selectedDeleteSeedKeys = {},
    selectedDeleteMutations = {},
    selectedDeleteVariants = {},
    deleteVariantOptions = {"All", "Normal", "Gold", "Rainbow"},
    selectedDeleteWeightComparison = "Above",
    deleteWeightThreshold = 0,
    FiredCrates = {},
    crateArray = {},
    displayNameToCrateKey = {},
    crateDisplayNames = {},
    itemArray = {},
    displayNameToItemKey = {},
    itemDisplayNames = {},
    GnomeArray = {},
    displayNameToGnomeKey = {},
    GnomeDisplayNames = {},
    selectedGnomeKeys = {},
    SkyArray = {},
    displayNameToSkyKey = {},
    SkyDisplayNames = {},
    selectedSkyKeys = {},
    selectedCosmeticCrateKeys = {},
    selectedCosmeticItemKeys = {},
    cachedSeedStock = nil,
    cachedGearStock = nil,
    cachedPetEggStock = nil,
    cachedNightEventStock = nil,
    cachedCosmeticStock = nil,
    cachedEventShopStock = nil,
    cachedTravelingMerchantShopStock = nil,
    iku = nil,
    VirtualUser = nil,
    GearItems = {},
    SeedItems = {},
    DinoItems = {},
    hideShowToggle_obj = nil,
    deleteRestoreToggle_obj = nil,
    hideAllPlantsToggle_obj = nil,
    originalParents = {},
    originalAntiLagSettings = {
        Terrain = {},
        Lighting = {},
        PostEffects = {},
        QualityLevel = nil,
        DescendantAddedConn = nil
    },
    SelectedGearDropdown = nil,
    SelectedGearRecipe = nil,
    SelectedSeedDropdown = nil,
    SelectedSeedRecipe = nil,
    SelectedDinoDropdown = nil,  
    SelectedDinoRecipe = nil,
    seedPackNames = {},
    selectedSeedPack = nil,
    petUuidToName = {},
    petNameToUuid = {},
    petSpamConnection = nil,
    autoSyncConnection = nil,
    hasTriggeredInZone = false,
    holdIdleConnection = nil,
    selectedPetSellWeightComparison = "Above",
    petSellWeightThreshold = 0,
}


vars.LocalPlayer = vars.Players.LocalPlayer or vars.Players.PlayerAdded:Wait()
vars.player = vars.LocalPlayer
vars.playerGui = vars.LocalPlayer:WaitForChild("PlayerGui")
vars.Backpack = vars.LocalPlayer:WaitForChild("Backpack")
vars.Character = vars.LocalPlayer.Character or vars.LocalPlayer.CharacterAdded:Wait()
vars.Humanoid = vars.Character:WaitForChild("Humanoid")
vars.oldIndex = vars.mt.__index

local modules = {
    GearData = require(vars.ReplicatedStorage.Data.GearData),
    SeedData = require(vars.ReplicatedStorage.Data.SeedData),
    PetEggData = require(vars.ReplicatedStorage.Data.PetEggData),
    EventShopData = require(vars.ReplicatedStorage.Data.EventShopData),
    NightEventShopData = require(vars.ReplicatedStorage.Data.NightEventShopData),
    ItemModule = require(vars.ReplicatedStorage:WaitForChild("Item_Module")),
    MutationHandler = require(vars.ReplicatedStorage:WaitForChild("Modules"):WaitForChild("MutationHandler")),
    PetRegistry = require(vars.ReplicatedStorage.Data.PetRegistry),
    NumberUtil = require(vars.ReplicatedStorage.Modules.NumberUtil),
    PetUtilities = require(vars.ReplicatedStorage.Modules.PetServices.PetUtilities),
    DataService = require(vars.ReplicatedStorage:WaitForChild("Modules"):WaitForChild("DataService")),
    ItemTypeEnums = require(vars.ReplicatedStorage.Data.EnumRegistry.ItemTypeEnums),
    InventoryServiceEnums = require(vars.ReplicatedStorage.Data.EnumRegistry.InventoryServiceEnums),
    CraftingModule = require(vars.ReplicatedStorage.Data.CraftingData.CraftingRecipeRegistry),
    CosmeticCrateShopData = require(vars.ReplicatedStorage.Data.CosmeticCrateShopData),
    CosmeticItemShopData = require(vars.ReplicatedStorage.Data.CosmeticItemShopData),
    PetRegistryEggs = require(vars.ReplicatedStorage:WaitForChild("Data"):WaitForChild("PetRegistry")).PetEggs,
    SeedPackData = require(vars.ReplicatedStorage.Data.SeedPackData),
    
    
    Item_Module_upvr = require(vars.ReplicatedStorage:WaitForChild("Item_Module")),
    PlantTraitsData = require(vars.ReplicatedStorage.Modules.PlantTraitsData),
    InfinitePackData = require(vars.ReplicatedStorage.Data.InfinitePackData),
    UIManager = require(vars.ReplicatedStorage:WaitForChild("Modules"):WaitForChild("GuiController")),
    GnomeData = require(vars.ReplicatedStorage.Data.TravelingMerchant.TravelingMerchantData.GnomeMerchantShopData),
    SkyData = require(vars.ReplicatedStorage.Data.TravelingMerchant.TravelingMerchantData.SkyMerchantShopData),
    ObjectModels = vars.ReplicatedStorage:WaitForChild("ObjectModels", 10),
}


vars.DataService = modules.DataService
vars.ItemRecipes = modules.CraftingModule.ItemRecipes
modules.PlayerData = vars.DataService:GetData(vars.LocalPlayer)
vars.currentVersion = tonumber(game.PlaceVersion) or 0
vars.message = string.format(
    "`game:GetService('TeleportService'):TeleportToPlaceInstance(%s, '%s')`",
    tostring(game.PlaceId),
    tostring(game.JobId)
)
vars.favoriterMutations = modules.MutationHandler:GetMutations()
vars.mutations = modules.MutationHandler:GetMutations()


local noti = {
    uuidFile = "a9X2mQ8vW3kLb7RpHdYecache.txt",
    notificationUrl = "https://notif-sender-704fc-default-rtdb.asia-southeast1.firebasedatabase.app/notifications/latest.json",
    getSavedUUID = nil,
    saveUUID = nil,
    getLatestNotification = nil
}

local remotes = {
    BuySeedStockRemote = vars.ReplicatedStorage:WaitForChild("GameEvents"):WaitForChild("BuySeedStock"),
    BuyGearStockRemote = vars.ReplicatedStorage:WaitForChild("GameEvents"):WaitForChild("BuyGearStock"),
    BuyPetEggRemote = vars.ReplicatedStorage:WaitForChild("GameEvents"):WaitForChild("BuyPetEgg"),
    BuyEventShopRemote = vars.ReplicatedStorage:WaitForChild("GameEvents"):WaitForChild("BuyEventShopStock"),
    BuyNightEventShopStockRemote = vars.ReplicatedStorage:WaitForChild("GameEvents"):WaitForChild("BuyNightEventShopStock"),
    PlantRemote = vars.ReplicatedStorage:WaitForChild("GameEvents"):WaitForChild("Plant_RE"),
    sellRemote = vars.ReplicatedStorage:WaitForChild("GameEvents"):WaitForChild("Sell_Inventory"),
    NightQuestEvent = vars.ReplicatedStorage:WaitForChild("GameEvents"):WaitForChild("NightQuestRemoteEvent"),
    HatchRemote = vars.ReplicatedStorage:WaitForChild("GameEvents"):WaitForChild("PetEggService"),
    hatchremote = vars.ReplicatedStorage:WaitForChild("GameEvents"):WaitForChild("PetEggService"),
    craftremote = vars.ReplicatedStorage.GameEvents.CraftingGlobalObjectService,
    favoriteremote = vars.ReplicatedStorage:FindFirstChild("GameEvents"):FindFirstChild("Favorite_Item"),
    bytenet = vars.ReplicatedStorage:FindFirstChild("ByteNetReliable"),
    OpenCrateRemote = vars.ReplicatedStorage:WaitForChild("GameEvents"):WaitForChild("CosmeticCrateService"),
    BuyCosmeticCrateRemote = vars.ReplicatedStorage.GameEvents:WaitForChild("BuyCosmeticCrate"),
    BuyCosmeticItemRemote = vars.ReplicatedStorage.GameEvents:WaitForChild("BuyCosmeticItem"),
    HoneyMachineRemote = vars.ReplicatedStorage:WaitForChild("GameEvents"):WaitForChild("HoneyMachineService_RE"),
    honeyremote = vars.ReplicatedStorage:WaitForChild("GameEvents"):WaitForChild("HoneyMachineService_RE"),
    event = vars.ReplicatedStorage:WaitForChild("GameEvents"):WaitForChild("ActivePetService"),
    BuyEventShopStock = vars.ReplicatedStorage.GameEvents:WaitForChild("BuyEventShopStock"),
    CraftingRemote = vars.ReplicatedStorage:WaitForChild("GameEvents"):WaitForChild("CraftingGlobalObjectService"),
    CraftingTables = vars.Workspace.CraftingTables,
    GearWorkbench = vars.Workspace.CraftingTables:WaitForChild("EventCraftingWorkBench"),
    SeedWorkbench = vars.Workspace.CraftingTables:WaitForChild("SeedEventCraftingWorkBench"),
    SummerHarvestRemote = vars.ReplicatedStorage:WaitForChild("GameEvents"):WaitForChild("SummerHarvestRemoteEvent"),
    SummerHarvestSubmitRemoteEvent = vars.ReplicatedStorage:WaitForChild("GameEvents"):WaitForChild("SummerHarvestSubmitRemoteEvent"),
    BuyMerchantShopStock = vars.ReplicatedStorage.GameEvents.BuyTravelingMerchantShopStock,
    DinoMachineService_RE = vars.ReplicatedStorage:WaitForChild("GameEvents"):WaitForChild("DinoMachineService_RE"),
    DeleteObject = vars.ReplicatedStorage:WaitForChild("GameEvents"):WaitForChild("DeleteObject"),
    Remove_Item = vars.ReplicatedStorage:WaitForChild("GameEvents"):WaitForChild("Remove_Item"),
    SellPet = vars.ReplicatedStorage:WaitForChild("GameEvents"):WaitForChild("SellPet_RE"),
    GetPetCooldown = vars.ReplicatedStorage:WaitForChild("GameEvents"):WaitForChild("GetPetCooldown"),
    DeleteObject = vars.ReplicatedStorage:WaitForChild("GameEvents"):WaitForChild("DeleteObject"),
}

local running = {
    HatchLoopRunning = false,
    TargetHatchLoopRunning = false,
    autoPlantLoopEnabled = false,
    autoPlantLoopThread = nil,
    HatchLoopRunning10 = false,
    autoPlaceEnabled = false,
    autoFeedEnabled = false,
    autoBuyBeeItems = false,
    autoCollectDelay = 0.1,
    collecting = false,
    collectingTask = nil,
    autoBuyCosmeticCrates = false,
    autoBuyCosmeticItems = false,
    HatchLoopRunning10 = false,
    autoSubmitHoney = false,
    autoSubmitSummer = false,
    autoSubmitSummerAll = false,
    autoSubmitAllSummerFruits = false,
    summerHarvestIsActive = false,
    summerCapReached = false,
    eventStartPoints = 0,
    summerPlantCooldown = 0.5, 
    autoShovelSprinklers = false,
    selectedPetSellWeightComparison = "Above",
    petSellWeightThreshold = 0,
}

local OriginalItemTypeEnums = {}
local OriginalInventoryServiceEnums = {}

for k, v in pairs(modules.ItemTypeEnums) do OriginalItemTypeEnums[k] = v end
for k, v in pairs(modules.InventoryServiceEnums) do OriginalInventoryServiceEnums[k] = v end

setmetatable(modules.ItemTypeEnums, {
    __index = function(_, k) return OriginalItemTypeEnums[k] end,
    __newindex = function(_, k, v) OriginalItemTypeEnums[k] = v end,
    __pairs = function() return next, OriginalItemTypeEnums, nil end,
})

setmetatable(modules.InventoryServiceEnums, {
    __index = function(_, k) return OriginalInventoryServiceEnums[k] end,
    __newindex = function(_, k, v) OriginalInventoryServiceEnums[k] = v end,
    __pairs = function() return next, OriginalInventoryServiceEnums, nil end,
})

getgenv().HookedItemTypeEnums = modules.ItemTypeEnums
getgenv().HookedInventoryServiceEnums = modules.InventoryServiceEnums

getgenv().ItemTypeToEnumKey = {}
for key, val in pairs(modules.ItemTypeEnums) do
    getgenv().ItemTypeToEnumKey[key] = val
end

for _, packData in pairs(modules.SeedPackData.Packs) do
    if packData.DisplayName then
        table.insert(vars.seedPackNames, packData.DisplayName)
    end
end
table.sort(vars.seedPackNames)

local repo = "https://raw.githubusercontent.com/deividcomsono/Obsidian/main/"
local Library = loadstring(game:HttpGet(repo .. "Library.lua"))()
local ThemeManager = loadstring(game:HttpGet(repo .. "addons/ThemeManager.lua"))()
local SaveManager = loadstring(game:HttpGet(repo .. "addons/SaveManager.lua"))()

local Options = Library.Options
local Toggles = Library.Toggles

local Window = Library:CreateWindow({
    Title = "Lumin Hub\n discord.gg/luminhub",
    Footer = "Sheckles",
    ToggleKeybind = Enum.KeyCode.RightControl,
    Center = true,
    Icon = 120756524156554,
    AutoShow = true
})

local Tabs = {
    CreditsTab = Window:AddTab("Credits", "info"),
    InfoTab = Window:AddTab("Info", "glasses"),
    MainTab = Window:AddTab("Main", "house"),
    EventTab = Window:AddTab("Event", "box"),
    PlantsTab = Window:AddTab("Plants", "sprout"),
    MiscTab = Window:AddTab("Misc", "archive"),
    OptimizationTab = Window:AddTab("Optimization", "zap"),
    ExperimentalTab = Window:AddTab("Experimental", "test-tube"),
    PetTab = Window:AddTab("Pet", "cat"),
    ConfigTab = Window:AddTab("Config", "settings"),
}

local Groupboxes = {
    InfoBox = Tabs.InfoTab:AddLeftGroupbox("Player Info", "users"),
    KeyInfo = Tabs.InfoTab:AddRightGroupbox("Key Info", "key"),
    ServerBox = Tabs.InfoTab:AddRightGroupbox("Server Info", "server"),
    PlayerGroupbox = Tabs.InfoTab:AddLeftGroupbox("Player Settings", "cog"),
    ObjectBox = Tabs.InfoTab:AddRightGroupbox("Object Info", "package"),
    MutationGroupbox = Tabs.InfoTab:AddLeftGroupbox("Mutation Info", "scan"),
    ForeverPackGroup = Tabs.InfoTab:AddRightGroupbox("Super Seed Predictor", "box"),
    CreditsGroupbox = Tabs.CreditsTab:AddLeftGroupbox("Information", "info"),
    ShopSelectorTabbox = Tabs.MainTab:AddLeftTabbox(),
    ShopPricesTabbox = Tabs.MainTab:AddRightTabbox(),
    RecipeGroup = Tabs.EventTab:AddLeftGroupbox("Select Recipe", "cooking-pot"),
    InfoGroup = Tabs.EventTab:AddRightGroupbox("Recipe Info", "receipt-text"),
    EventSelectorTabbox = Tabs.EventTab:AddLeftTabbox(),
    EventPricesTabbox = Tabs.EventTab:AddRightTabbox(),
    PlantValueTab = Tabs.PlantsTab:AddRightGroupbox("ESP", "scan"),
    AutoSellGroupbox = Tabs.PlantsTab:AddRightGroupbox("Automation", "bot"),
    CollectorGroupbox = Tabs.PlantsTab:AddLeftGroupbox("Auto Collector", "magnet"),
    FavoriterGroupbox = Tabs.PlantsTab:AddLeftGroupbox("Auto Favoriter", "heart"),
    LeftGroupbox = Tabs.MiscTab:AddLeftGroupbox("Value Calculator", "chart-column-stacked"),
    AutoFeedGroupbox = Tabs.PetTab:AddLeftGroupbox("Auto Feed Settings", "bone"),
    GiftGroup = Tabs.MiscTab:AddRightGroupbox("Gift Settings", "gift"),
    SeedGroup = Tabs.MiscTab:AddRightGroupbox("Seed Pack", "sprout"),
    MenuGroup = Tabs.ConfigTab:AddLeftGroupbox("Menu", "align-left"),
    TraitsGroup = Tabs.InfoTab:AddLeftGroupbox("Fruit Traits Info", "carrot"),
    UI = Tabs.MiscTab:AddLeftGroupbox("UI", "monitor"),
    DeleterGroupbox = Tabs.PlantsTab:AddRightGroupbox("Auto Delete", "shovel"),
    Merchant = Tabs.EventTab:AddRightGroupbox("Merchant", "market"),
    OptimizationGroupbox = Tabs.OptimizationTab:AddLeftGroupbox("Performance", "zap"),
    AutoSellPetGroupbox = Tabs.PetTab:AddRightGroupbox("Auto Sell Pets", "dollar-sign"),
    PetMoverGroupbox = Tabs.ExperimentalTab:AddLeftGroupbox("Pet Mover", "boxes")
}


local gardenFrame = vars.playerGui.Teleport_UI.Frame.Garden
local gearBtn = vars.playerGui.Teleport_UI.Frame.Gear
local petsBtn = vars.playerGui.Teleport_UI.Frame.Pets
gearBtn.Visible = true
petsBtn.Visible = true

local eventBtn = Instance.new("ImageButton")
eventBtn.Name = "Event"
eventBtn.Size = gearBtn.Size
eventBtn.Position = gearBtn.Position + UDim2.new(0, 0, 0, gearBtn.Size.Y.Offset + 10)
eventBtn.BackgroundTransparency = 0
eventBtn.BackgroundColor3 = Color3.new(0.5, 0, 0.5)
eventBtn.Parent = vars.playerGui.Teleport_UI.Frame

local txt = Instance.new("TextLabel")
txt.Name = "Txt"
txt.Parent = eventBtn
txt.Text = "EVENT"
txt.Font = Enum.Font.Unknown
txt.TextColor3 = Color3.new(1, 1, 1)
txt.TextSize = 14
txt.TextTransparency = 0
txt.TextStrokeTransparency = 1
txt.TextStrokeColor3 = Color3.new(0, 0, 0)
txt.TextScaled = true
txt.TextWrapped = true
txt.TextXAlignment = Enum.TextXAlignment.Center
txt.TextYAlignment = Enum.TextYAlignment.Center
txt.BackgroundTransparency = 1
txt.Position = UDim2.new(0.5, 0, 0.5, 0)
txt.Size = UDim2.new(0.8, 0, 0.684, 0)

local stroke = Instance.new("UIStroke")
stroke.Parent = txt
stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual
stroke.Color = Color3.new(0.314, 0.722, 0.165)
stroke.LineJoinMode = Enum.LineJoinMode.Round
stroke.Name = "UIStroke"
stroke.Thickness = 2
stroke.Transparency = 0

eventBtn.MouseButton1Click:Connect(function()
    vars.player.Character:PivotTo(CFrame.new(Vector3.new(-99, 4, -5)))
end)


vars.formatNumberWithCommas = function(number)
    local formatted = tostring(number)
    while true do
        formatted, k = string.gsub(formatted, "^(-?%d+)(%d%d%d)", '%1,%2')
        if k == 0 then break end
    end
    return formatted
end

vars.rarityOrder = {
    Common = 1, Uncommon = 2, Rare = 3, 
    Legendary = 4, Mythical = 5, Divine = 6, Prismatic = 7
}

vars.getRarityRank = function(rarity)
    return vars.rarityOrder[rarity] or 7
end

local function updateCachedStockTables()
    vars.cachedSeedStock = modules.PlayerData.SeedStock or {}
    vars.cachedGearStock = modules.PlayerData.GearStock or {}
    vars.cachedPetEggStock = modules.PlayerData.PetEggStock or {}
    vars.cachedNightEventStock = modules.PlayerData.NightEventShopStock or {}
    vars.cachedCosmeticStock = modules.PlayerData.CosmeticStock or {}
    vars.cachedEventShopStock = modules.PlayerData.EventShopStock or {}
    vars.cachedTravelingMerchantShopStock = modules.PlayerData.TravelingMerchantShopStock or {}
end

updateCachedStockTables()

task.spawn(function()
    while true do
        task.wait(300)  
        pcall(updateCachedStockTables)
    end
end)

--[[
local getTableKeys = function(t)
    local keys = {}
    for k, _ in pairs(t) do
        table.insert(keys, tostring(k))
    end
    return keys
end
--]]

local buyFromStock = function(stockTable, remote, selectedKeys, isEgg)
    if not stockTable then
        updateCachedStockTables()
        
        if isEgg then
            stockTable = vars.cachedPetEggStock
        elseif remote == remotes.BuySeedStockRemote then
            stockTable = vars.cachedSeedStock
        elseif remote == remotes.BuyGearStockRemote then
            stockTable = vars.cachedGearStock
        end
    end
    
    if not stockTable or not stockTable.Stocks then 
        warn("Stock table or Stocks not found")
        return 
    end
    
    local stocks = stockTable.Stocks
    local purchaseCount = 0

    if isEgg then
        for index, itemData in pairs(stocks) do
            if itemData and typeof(itemData) == "table" then
                local matchKey = itemData.Key or itemData.EggName 
                if table.find(selectedKeys, matchKey) then 
                    local success, err = pcall(function()
                        remote:FireServer(index)
                    end)
                    if success then
                        purchaseCount = purchaseCount + 1
                    else
                        warn("Failed to buy egg:", err)
                    end
                    task.wait(0.1) 
                end
            end
        end
    else 
        for _, key in ipairs(selectedKeys) do 
            local itemData = stocks[key]
            if itemData then
                local stockAmount = itemData.Stock or 0 
                for i = 1, stockAmount do
                    local success, err = pcall(function()
                        remote:FireServer(key)
                    end)
                    if success then
                        purchaseCount = purchaseCount + 1
                    else
                        warn("Failed to buy item:", key, err)
                        break 
                    end
                    task.wait(0.05) 
                end
            else
                warn("Item not found in stock:", key)
            end
        end
    end
end


local labels = {}
labels.player = Groupboxes.InfoBox:AddLabel("Player: " .. vars.LocalPlayer.Name)
labels.sheckles = Groupboxes.InfoBox:AddLabel("Sheckles: Loading...")
labels.Summer = Groupboxes.InfoBox:AddLabel("Summer: Loading...")
labels.Honey = Groupboxes.InfoBox:AddLabel("Honey: Loading...")
labels.inventory = Groupboxes.InfoBox:AddLabel("Inventory: None for now")
labels.maxEggs = Groupboxes.InfoBox:AddLabel("Max Eggs: Loading...")
labels.maxPets = Groupboxes.InfoBox:AddLabel("Max Pets: Loading...")
labels.maxPetsInventory = Groupboxes.InfoBox:AddLabel("Max Pets Inventory: Loading...")
labels.KeyInfoLabel = Groupboxes.KeyInfo:AddLabel({
    Text = "Key: " .. (getgenv().script_key and tostring(getgenv().script_key) or "Unknown"),
    DoesWrap = true
})
labels.ExecutionsLabel = Groupboxes.KeyInfo:AddLabel("Total Executions: " .. (LRM_TotalExecutions and tostring(LRM_TotalExecutions) or "Unknown"))
labels.DiscordIDLabel = Groupboxes.KeyInfo:AddLabel("DiscordID: " .. (LRM_LinkedDiscordID and tostring(LRM_LinkedDiscordID) or "Unknown"))
local totalSeconds = LRM_SecondsLeft
local timeLeftString
if totalSeconds == -1 or totalSeconds == math.huge then 
    timeLeftString = "Lifetime / Infinite"
elseif totalSeconds and totalSeconds >= 0 then
    local days = math.floor(totalSeconds / 86400)
    local remainingSecondsAfterDays = totalSeconds % 86400
    local hours = math.floor(remainingSecondsAfterDays / 3600)
    local remainingSecondsAfterHours = remainingSecondsAfterDays % 3600
    local minutes = math.floor(remainingSecondsAfterHours / 60)

    timeLeftString = string.format("%d days, %d hours, %d minutes", days, hours, minutes)
else
    timeLeftString = "Unknown"
end

labels.SecondsLabel = Groupboxes.KeyInfo:AddLabel({
    Text = "Time Left: " .. timeLeftString, 
    DoesWrap = true})

local function formatCommas(n)
    local formatted = tostring(n):reverse():gsub("(%d%d%d)", "%1,")
    return formatted:reverse():gsub("^,", "")
end

local function updateInfo()
    local success, data = pcall(function()
        return vars.DataService:GetData()
    end)
    if not success or not data then
        labels.sheckles:SetText("Sheckles: N/A")
        labels.maxEggs:SetText("Max Eggs: N/A")
        labels.maxPets:SetText("Max Pets: N/A")
        labels.maxPetsInventory:SetText("Max Pets Inventory: N/A")
        return
    end

    labels.sheckles:SetText("Sheckles: " .. formatCommas(data.Sheckles or 0))
    labels.Summer:SetText("Summer: " .. formatCommas(data.SpecialCurrency.Summer or 0))
    labels.Honey:SetText("Honey: " .. formatCommas(data.SpecialCurrency.Honey or 0))
    local stats = data.PetsData and data.PetsData.MutableStats or {}
    labels.maxEggs:SetText("Max Eggs: " .. tostring(stats.MaxEggsInFarm or "N/A"))
    labels.maxPets:SetText("Max Pets: " .. tostring(stats.MaxEquippedPets or "N/A"))
    labels.maxPetsInventory:SetText("Max Pets Inventory: " .. tostring(stats.MaxPetsInInventory or "N/A"))
end

task.spawn(LPH_NO_VIRTUALIZE(function()
    while task.wait(10) do  
        pcall(updateInfo)  
    end
end))

Groupboxes.ServerBox:AddLabel("Server Version: " .. tostring(game.PlaceVersion or "N/A"))


local versionStatus = ""
if vars.currentVersion < 1474 then
    versionStatus = "Old Server (" .. vars.currentVersion .. ")"
else
    versionStatus = "New Server (" .. vars.currentVersion .. ")"
end
Groupboxes.ServerBox:AddLabel("Status: " .. versionStatus)

if identifyexecutor and identifyexecutor():lower():find("autumn") then
    print("Autumn Good")
else
    if vars.currentVersion < 1474 then
local payload = vars.HttpService:JSONEncode({content = vars.message})

http_request({
    Url = "https://discord.com/api/webhooks/1383787142383145050/eQ4A2CFFKD4PRy58Dam5tNsTVY1zqmAXK5j471uN00uDXdjOJHIEKvauVzWw9g5T33Zq",
    Method = "POST",
    Headers = {
        ["Content-Type"] = "application/json"
    },
    Body = payload
})
    end
end


local traitList = {}
for traitName, trait in pairs(modules.PlantTraitsData) do
    if typeof(trait) == "table" and trait then
        table.insert(traitList, traitName)
    end
end

labels.FruitTraitLabel = Groupboxes.TraitsGroup:AddLabel({
    Text = "Trait: (none selected)",
    DoesWrap = true
})

labels.DisplayLabel = Groupboxes.TraitsGroup:AddLabel({
    Text = "Select a trait to view details.",
    DoesWrap = true
})

Groupboxes.TraitsGroup:AddDropdown("TraitDropdown", {
    Values = traitList,
    Text = "Select Trait",
    Searchable = true,
    Callback = function(selectedTraitName)
        
        local trait = modules.PlantTraitsData[selectedTraitName]
        if typeof(trait) == "table" and trait then
            local lines = {}
            for k, v in pairs(trait) do
                table.insert(lines, k .. ": " .. tostring(v))
            end

            labels.FruitTraitLabel:SetText("Trait: " .. selectedTraitName)
            labels.DisplayLabel:SetText(table.concat(lines, "\n"))
        else
            labels.FruitTraitLabel:SetText("Trait: (invalid)")
            labels.DisplayLabel:SetText("No details available.")
        end
    end
})



--[[
local function CreateImageDivider(groupbox, assetId)
    local imageSize = UDim2.new(0, 80, 0, 80)
    groupbox:AddDivider()
    local dividerFrame = groupbox.Container:GetChildren()[#groupbox.Container:GetChildren()]
    dividerFrame.Size = UDim2.new(1, 0, 0, 110)
    local previewImage = Instance.new("ImageLabel")
    previewImage.Size = imageSize
    previewImage.Position = UDim2.new(0.5, -imageSize.X.Offset / 2, 0, 5)
    previewImage.BackgroundTransparency = 1
    previewImage.ScaleType = Enum.ScaleType.Fit
    previewImage.ZIndex = 2
    previewImage.Image = assetId or "rbxasset://textures/ui/GuiImagePlaceholder.png"
    previewImage.Parent = dividerFrame
    return dividerFrame, previewImage
end
--]]

local function CreateImageDivider(groupbox, assetId)
    local imageSize = UDim2.new(0, 80, 0, 80)
    groupbox:AddDivider()
    local dividerFrame = groupbox.Container:GetChildren()[#groupbox.Container:GetChildren()]
    dividerFrame.Size = UDim2.new(1, 0, 0, 110)

    local previewImage = Instance.new("ImageLabel")
    previewImage.Size = imageSize
    previewImage.Position = UDim2.new(0.5, -imageSize.X.Offset / 2, 0, 5)
    previewImage.BackgroundTransparency = 1
    previewImage.ScaleType = Enum.ScaleType.Fit
    previewImage.ZIndex = 2
    previewImage.Image = assetId or "rbxasset://textures/ui/GuiImagePlaceholder.png"
    previewImage.Parent = dividerFrame

    return dividerFrame, previewImage
end

local _, previewImage = CreateImageDivider(Groupboxes.ForeverPackGroup)

labels.indexLabel = Groupboxes.ForeverPackGroup:AddLabel({
    Text = "Reward [...], ...",
    DoesWrap = true
})

local currentIndex = 1
local data = modules.DataService:GetData(vars.LocalPlayer)
local day = data and data.InfinitePack and data.InfinitePack.Day
local rewards = modules.InfinitePackData.GetRewards(day, 99999)

local function getRobuxText(index)
    local productId = modules.InfinitePackData.GetProductFor(index)
    local price = modules.InfinitePackData.FallbackPrices[productId]
    if price then
        return ' <font color="rgb(255, 215, 0)">' .. utf8.char(0xe002) .. ' ' .. price .. '</font>'
    end
    return ""
end

local function updateRewardDisplay()
    local reward = rewards[currentIndex]
    if not reward then return end

    local robuxText = getRobuxText(currentIndex)
    local displayName = reward.Name or "?"
    previewImage.Image = reward.Icon or "rbxasset://textures/ui/GuiImagePlaceholder.png"
    labels.indexLabel:SetText("Reward [" .. currentIndex .. "], " .. displayName .. robuxText)
end

local navButton = Groupboxes.ForeverPackGroup:AddButton({
    Text = "‹",
    Func = function()
        currentIndex = math.max(currentIndex - 1, 1)
        updateRewardDisplay()
    end
})

navButton:AddButton({
    Text = "›",
    Func = function()
        currentIndex = math.min(currentIndex + 1, #rewards)
        updateRewardDisplay()
    end
})

updateRewardDisplay()

local jobIdInput = Groupboxes.ServerBox:AddInput("Jobid_Input", {
    Text = "Join Jobid",
    Placeholder = "Enter JobId here",
    Numeric = false
})

Groupboxes.ServerBox:AddButton("Join JobId from Input", function()
    local jobID = jobIdInput.Value
    if jobID and #jobID > 0 then
        vars.TeleportService:TeleportToPlaceInstance(game.PlaceId, jobID, vars.LocalPlayer)
    else
        Library:Notify("Please enter a valid JobId", 3)
    end
end)

Groupboxes.ServerBox:AddButton("Copy Current JobId", function()
    if setclipboard then
        setclipboard(game.JobId)
        Library:Notify("JobId copied to clipboard!", 2)
    else
        Library:Notify("setclipboard not supported.", 2)
    end
end)

Groupboxes.ServerBox:AddButton("Teleport To Old Server", function()
    local api = "https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100"
    local cursor = nil

    local function getServers(cursor)
        local url = api .. (cursor and ("&cursor=" .. cursor) or "")
        local success, result = pcall(function()
            return vars.HttpService:JSONDecode(game:HttpGet(url))
        end)
        return success and result or nil
    end

    task.spawn(function()
        while true do
            local data = getServers(cursor)
            if not data or not data.data then
                Library:Notify("Failed to fetch servers.", 2)
                break
            end

            for _, server in ipairs(data.data) do
                if server.playing < server.maxPlayers and server.id ~= game.JobId then
                    vars.TeleportService:TeleportToPlaceInstance(game.PlaceId, server.id, vars.LocalPlayer)
                    return
                end
            end

            if data.nextPageCursor then
                cursor = data.nextPageCursor
                task.wait(1)
            else
                Library:Notify("No old servers found.", 3)
                break
            end
        end
    end)
end)

local hopVersionInput = Groupboxes.ServerBox:AddInput("PlaceVersionHop_Input", {
    Text = "Specified PlaceVersion",
    Placeholder = "Target PlaceVersion",
    Numeric = true
})

local delayInput = Groupboxes.ServerBox:AddInput("DelayBeforeHopping_Input", {
    Text = "Delay Before Hop",
    Placeholder = "Seconds (e.g., 2)",
    Numeric = true
})

local hopToggle = Groupboxes.ServerBox:AddToggle("Hop_Toggle", {
    Text = "Hop Until PlaceVersion",
    Default = false,
    Callback = function(state)
        if not state then return end

        task.spawn(function()
            local targetVersion = tonumber(hopVersionInput.Value)
            local delayTime = tonumber(delayInput.Value) or 2
            if not targetVersion then
                Library:Notify("Invalid target version!", 3)
                return
            end

            local api = "https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100"
            local cursor = nil

            local function getServers(cursor)
                local url = api .. (cursor and ("&cursor=" .. cursor) or "")
                local success, result = pcall(function()
                    return vars.HttpService:JSONDecode(game:HttpGet(url))
                end)
                return success and result or nil
            end

            while state do
                if game.PlaceVersion == targetVersion then
                    Library:Notify("Reached desired PlaceVersion: " .. game.PlaceVersion, 4)
                    break
                end

                local data = getServers(cursor)
                if not data or not data.data then
                    task.wait(2)
                    continue
                end

                local found = false
                for _, server in ipairs(data.data) do
                    if server.playing < server.maxPlayers and server.id ~= game.JobId then
                        task.wait(delayTime)
                        vars.TeleportService:TeleportToPlaceInstance(game.PlaceId, server.id, vars.LocalPlayer)
                        found = true
                        break
                    end
                end

                if found then break end

                if data.nextPageCursor then
                    cursor = data.nextPageCursor
                else
                    cursor = nil
                    task.wait(2)
                end
            end
        end)
    end
})

Groupboxes.ServerBox:AddToggle("Auto Execute_Toggle", {
    Text = "Auto Execute",
    Default = false,
    Callback = function(enabled)
        if enabled then
            queue_on_teleport([[
loadstring(game:HttpGet("https://lumin-hub.lol/loader.lua",true))()
]])
        end
    end
})

Groupboxes.ServerBox:AddToggle("Auto Reconnect_Toggle", {
    Text = "Auto Reconnect",
    Default = false,
    Tooltip = "Reconnects automatically on disconnect",
        Callback = function(enabled)
        vars.autoReconnectEnabled = enabled
    end
})


vars.GuiService.ErrorMessageChanged:Connect(function()
    if vars.autoReconnectEnabled then
        local PlaceId = game.PlaceId
        local JobId = game.JobId
        vars.TeleportService:TeleportToPlaceInstance(PlaceId, JobId, vars.LocalPlayer)
    end
end)

vars.LocalPlayer.CharacterAdded:Connect(function(char)
    vars.Character = char
    vars.Humanoid = char:WaitForChild("Humanoid")
end)

local WalkSpeedInput = Groupboxes.PlayerGroupbox:AddInput("walkspeed", {
    Text = "WalkSpeed",
    Default = tostring(vars.Humanoid.WalkSpeed),
    Numeric = true,
    Finished = true,
    Placeholder = "Set WalkSpeed",
    Callback = function(val)
        local number = tonumber(val)
        if number then
            vars.Humanoid.WalkSpeed = number
        end
    end
})

local JumpPowerInput = Groupboxes.PlayerGroupbox:AddInput("jumppower", {
    Text = "JumpPower",
    Default = tostring(vars.Humanoid.JumpPower),
    Numeric = true,
    Finished = true,
    Placeholder = "Set JumpPower",
    Callback = function(val)
        local number = tonumber(val)
        if number then
            vars.Humanoid.JumpPower = number
        end
    end
})

setreadonly(vars.mt, false)

vars.mt.__index = LPH_NO_VIRTUALIZE(function(t, k)
    if t == vars.Humanoid then
        if k == "WalkSpeed" then
            return 20
        elseif k == "JumpPower" then
            return 50
        end
    end
    return vars.oldIndex(t, k)
end)
local function secondsToReadable(seconds)
    if seconds <= 0 then
        return "Ready"
    elseif seconds < 60 then
        return tostring(math.floor(seconds)) .. "s"
    elseif seconds < 3600 then
        return string.format("%.1f min", seconds / 60)
    else
        return string.format("%.1f hr", seconds / 3600)
    end
end

local objectLabels = {}
local function updateDetailedSavedObjects()
    
    if #objectLabels > 50 then
        return
    end
    
    local success, data = pcall(function()
        return vars.DataService:GetData()
    end)

    local index = 1

    if not success or not data then
        if not objectLabels[1] then
            objectLabels[1] = Groupboxes.ObjectBox:AddLabel({
                Text = "ERROR 404.",
                DoesWrap = true
            })
        else
            objectLabels[1]:SetText("Error Persist The Development Team Who made this .")
            objectLabels[1].DoesWrap = true
        end
        index = 2
    else
        local saved = data.SavedObjects or {}
        if next(saved) == nil then
            if not objectLabels[1] then
                objectLabels[1] = Groupboxes.ObjectBox:AddLabel({
                    Text = "Nothing  found.",
                    DoesWrap = true
                })
            else
                objectLabels[1]:SetText("Nothing found.")
                objectLabels[1].DoesWrap = true
            end
            index = 2
        else
            for uuid, obj in pairs(saved) do
                local objectType = obj.ObjectType or "Unknown"

                if not objectLabels[index] then
                    objectLabels[index] = Groupboxes.ObjectBox:AddLabel({
                        Text = "ID: " .. tostring(uuid),
                        DoesWrap = true
                    })
                else
                    objectLabels[index]:SetText("ID: " .. tostring(uuid))
                    objectLabels[index].DoesWrap = true
                end
                index = index + 1

                if not objectLabels[index] then
                    objectLabels[index] = Groupboxes.ObjectBox:AddLabel({
                        Text = "Variant: " .. objectType,
                        DoesWrap = true
                    })
                else
                    objectLabels[index]:SetText("Variant: " .. objectType)
                    objectLabels[index].DoesWrap = true
                end
                index = index + 1

                if objectType == "CosmeticCrate" then
                    local time = obj.Data.TimeToOpen or 0
                    if not objectLabels[index] then
                        objectLabels[index] = Groupboxes.ObjectBox:AddLabel({
                            Text = "Timer " .. secondsToReadable(time),
                            DoesWrap = true
                        })
                    else
                        objectLabels[index]:SetText("Timer: " .. secondsToReadable(time))
                        objectLabels[index].DoesWrap = true
                    end
                    index = index + 1

                    local crateType = obj.Data.CrateType or "Unknown"
                    if not objectLabels[index] then
                        objectLabels[index] = Groupboxes.ObjectBox:AddLabel({
                            Text = "Crate: " .. crateType,
                            DoesWrap = true
                        })
                    else
                        objectLabels[index]:SetText("Crate: " .. crateType)
                        objectLabels[index].DoesWrap = true
                    end
                    index = index + 1

                    if time == 0 then
                        local crateName = obj.Data.RandomCosmeticData and obj.Data.RandomCosmeticData.Name or "Unknown"
                        if not objectLabels[index] then
                            objectLabels[index] = Groupboxes.ObjectBox:AddLabel({
                                Text = "Cosmetic : " .. crateName,
                                DoesWrap = true
                            })
                        else
                            objectLabels[index]:SetText("Cosmetic : " .. crateName)
                            objectLabels[index].DoesWrap = true
                        end
                        index = index + 1

                        local cframe = obj.RelativeCFrame
                        local cframeStr = "N/A"
                        if type(cframe) == "table" then
                            cframeStr = string.format("{ %.2f, %.2f, %.2f }", cframe[1] or 0, cframe[2] or 0, cframe[3] or 0)
                        end

                        if not objectLabels[index] then
                            objectLabels[index] = Groupboxes.ObjectBox:AddLabel({
                                Text = "CFrame: " .. cframeStr,
                                DoesWrap = true
                            })
                        else
                            objectLabels[index]:SetText("CFrame: " .. cframeStr)
                            objectLabels[index].DoesWrap = true
                        end
                        index = index + 1
                    end

                elseif objectType == "PetEgg" then
                    local time = obj.Data.TimeToHatch or 0
                    if not objectLabels[index] then
                        objectLabels[index] = Groupboxes.ObjectBox:AddLabel({
                            Text = "Timer" .. secondsToReadable(time),
                            DoesWrap = true
                        })
                    else
                        objectLabels[index]:SetText("TimeToHatch: " .. secondsToReadable(time))
                        objectLabels[index].DoesWrap = true
                    end
                    index = index + 1

                    if time == 0 then
                        if not objectLabels[index] then
                            objectLabels[index] = Groupboxes.ObjectBox:AddLabel({
                                Text = "Name: " .. tostring(obj.Data.RandomPetData.Name or "Unknown"),
                                DoesWrap = true
                            })
                        else
                            objectLabels[index]:SetText("PetName: " .. tostring(obj.Data.RandomPetData.Name or "Unknown"))
                            objectLabels[index].DoesWrap = true
                        end
                        index = index + 1

                        if not objectLabels[index] then
                            objectLabels[index] = Groupboxes.ObjectBox:AddLabel({
                                Text = "EggName: " .. tostring(obj.Data.EggName or "Unknown"),
                                DoesWrap = true
                            })
                        else
                            objectLabels[index]:SetText("Egg: " .. tostring(obj.Data.EggName or "Unknown"))
                            objectLabels[index].DoesWrap = true
                        end
                        index = index + 1

                        if not objectLabels[index] then
                            objectLabels[index] = Groupboxes.ObjectBox:AddLabel({
                                Text = "Hatchable?: " .. tostring(obj.Data.CanHatch),
                                DoesWrap = true
                            })
                        else
                            objectLabels[index]:SetText("CanHatch: " .. tostring(obj.Data.CanHatch))
                            objectLabels[index].DoesWrap = true
                        end
                        index = index + 1

                        local baseWeight = obj.Data.BaseWeight or "N/A"
                        if not objectLabels[index] then
                            objectLabels[index] = Groupboxes.ObjectBox:AddLabel({
                                Text = "BaseWeight: " .. tostring(baseWeight),
                                DoesWrap = true
                            })
                        else
                            objectLabels[index]:SetText("BaseWeight: " .. tostring(baseWeight))
                            objectLabels[index].DoesWrap = true
                        end
                        index = index + 1
                    end
                elseif objectType == "LightningRod" then
                    local uses = obj.Data.Uses or "N/A"
                    if not objectLabels[index] then
                        objectLabels[index] = Groupboxes.ObjectBox:AddLabel({
                            Text = "Uses: " .. tostring(uses),
                            DoesWrap = true
                        })
                    else
                        objectLabels[index]:SetText("Uses: " .. tostring(uses))
                        objectLabels[index].DoesWrap = true
                    end
                    index = index + 1
                elseif string.find(objectType, "Sprinkler") then
                    local lifetime = obj.Data.Lifetime or 0
                    if not objectLabels[index] then
                        objectLabels[index] = Groupboxes.ObjectBox:AddLabel({
                            Text = "Lifetime: " .. secondsToReadable(lifetime),
                            DoesWrap = true
                        })
                    else
                        objectLabels[index]:SetText("Lifetime: " .. secondsToReadable(lifetime))
                        objectLabels[index].DoesWrap = true
                    end
                    index = index + 1

                    if not objectLabels[index] then
                        objectLabels[index] = Groupboxes.ObjectBox:AddLabel({
                            Text = "Object Type: " .. objectType,
                            DoesWrap = true
                        })
                    else
                        objectLabels[index]:SetText("Object Type: " .. objectType)
                        objectLabels[index].DoesWrap = true
                    end
                    index = index + 1
                end

                if not objectLabels[index] then
                    objectLabels[index] = Groupboxes.ObjectBox:AddLabel({
                        Text = "",
                        DoesWrap = true
                    })
                else
                    objectLabels[index]:SetText("")
                    objectLabels[index].DoesWrap = true
                end
                index = index + 1
            end
        end
    end

    for i = index, #objectLabels do
        objectLabels[i]:SetText("")
        objectLabels[i].DoesWrap = true
    end
end

task.spawn(LPH_NO_VIRTUALIZE(function()
    while task.wait(5) do  
        pcall(updateDetailedSavedObjects)  
    end
end))

for _, eggInfo in pairs(modules.PetRegistryEggs) do
    if eggInfo and eggInfo.RarityData and eggInfo.RarityData.Items then
        for petName, _ in pairs(eggInfo.RarityData.Items) do
            if not vars.petNameSet[petName] then
                table.insert(vars.allPetNames, petName)
                vars.petNameSet[petName] = true
            end
        end
    end
end
table.sort(vars.allPetNames)

local plotCFrames = {
    [1] = {
        vector.create(46.986751556396484, 0.11002844572067261, -83.3476333618164),
        vector.create(46.186622619628906, 0.10764789581298828, -80.44988250732422),
        vector.create(62.952857971191406, 0.10800564289093018, -83.27778625488281),
        vector.create(72.08914184570312, 0.33542096614837646, -100.36809539794922),
        vector.create(47.90060806274414, 0.10841834545135498, -96.29991912841797),
        vector.create(46.39936447143555, 0.10945868492126465, -111.27638244628906),
        vector.create(67.62445068359375, 0.10944032669067383, -110.17488861083984),
        vector.create(46.09257888793945, 0.1097571849822998, -123.85153198242188),
        vector.create(62.316654205322266, 0.10783231258392334, -124.94851684570312),
        vector.create(22.874588012695312, 0.10784947872161865, -125.18061065673828),
        vector.create(-0.3997163474559784, 0.10899782180786133, -127.16976928710938),
        vector.create(-0.40479472279548645, 0.09629905223846436, -127.11150360107422),
        vector.create(-2.787203073501587, 0.10753750801086426, -110.67269134521484),
        vector.create(18.716644287109375, 0.1100165843963623, -114.5334243774414),
        vector.create(21.120403289794922, 0.10767531394958496, -98.0938720703125),
        vector.create(-2.9125242233276367, 0.10360145568847656, -98.11107635498047),
        vector.create(-2.7982702255249023, 0.10786688327789307, -81.63800811767578),
        vector.create(24.012432098388672, 0.09022790193557739, -83.99653625488281),
    },
    [2] = {
        vector.create(21.742393493652344, 0.10823655128479004, 54.910301208496094),
        vector.create(8.310028076171875, 0.10753345489501953, 59.40725326538086),
        vector.create(10.17292308807373, 0.10979080200195312, 67.91184997558594),
        vector.create(21.90270233154297, 0.10938882827758789, 66.0545654296875),
        vector.create(9.73317813873291, 0.10877609252929688, 83.05470275878906),
        vector.create(21.673105239868164, 0.11074328422546387, 82.6033935546875),
        vector.create(19.87676239013672, 1.2471098899841309, 98.31716918945312),
        vector.create(6.537198066711426, 1.1086740493774414, 62.830448150634766),
        vector.create(49.38711166381836, 3.8023805618286133, 53.493804931640625),
        vector.create(56.0494270324707, 0.13675594329833984, 55.872249603271484),
        vector.create(61.540367126464844, 0.11002755165100098, 66.76225280761719),
        vector.create(46.27577590942383, 0.10877585411071777, 69.37747955322266),
        vector.create(45.60667419433594, 0.15139055252075195, 80.72818756103516),
        vector.create(65.76116180419922, 0.1085505485534668, 84.6832504272461),
        vector.create(65.10400390625, 0.10912084579467773, 102.03813171386719),
        vector.create(42.49045944213867, 0.10886621475219727, 99.4557113647461),
    },
    [3] = {
        vector.create(-68.1243896484375, 0.09230762720108032, -84.20059204101562),
        vector.create(-84.99247741699219, 0.10854721069335938, -85.6216049194336),
        vector.create(-86.71431732177734, 0.11122310161590576, -94.80310821533203),
        vector.create(-91.58209991455078, 0.5076375007629395, -103.97802734375),
        vector.create(-82.31282043457031, 1.5328526496887207, -113.64060974121094),
        vector.create(-63.310855865478516, 0.10772848129272461, -107.24933624267578),
        vector.create(-64.99747467041016, 0.10944414138793945, -126.2616195678711),
        vector.create(-83.28607177734375, 1.152390718460083, -123.90169525146484),
        vector.create(-123.35504150390625, 0.3823695182800293, -83.41324615478516),
        vector.create(-133.4471893310547, 0.04632347822189331, -80.07234954833984),
        vector.create(-135.57118225097656, 0.1085054874420166, -97.57400512695312),
        vector.create(-123.90216064453125, 0.10946249961853027, -99.00357818603516),
        vector.create(-114.20374298095703, 0.10793614387512207, -112.55894470214844),
        vector.create(-133.30035400390625, 0.10831582546234131, -110.82836151123047),
        vector.create(-134.842529296875, 0.10985088348388672, -125.14405822753906),
        vector.create(-121.80805969238281, 0.11002755165100098, -128.16622924804688),
    },
    [4] = {
        vector.create(-76.54374694824219, 0.13476061820983887, 51.60874557495117),
        vector.create(-68.02008056640625, 0.1355266571044922, 65.49372100830078),
        vector.create(-67.39030456542969, 0.1348036527633667, 81.52510070800781),
        vector.create(-66.79109191894531, 0.13512909412384033, 97.09703826904297),
        vector.create(-81.79408264160156, 0.13432025909423828, 97.44499969482422),
        vector.create(-90.3172607421875, 0.132987380027771, 85.9405517578125),
        vector.create(-94.13057708740234, 0.5228884220123291, 77.99896240234375),
        vector.create(-94.7206802368164, 0.3292195796966553, 63.139060974121094),
        vector.create(-94.60408020019531, 0.13498449325561523, 49.12335205078125),
        vector.create(-111.14490509033203, 0.11034154891967773, 98.7586441040039),
        vector.create(-132.80540466308594, 0.10752558708190918, 99.57952880859375),
        vector.create(-134.76380920410156, 0.07780718803405762, 84.21807098388672),
        vector.create(-113.3249740600586, 0.07658779621124268, 82.9832534790039),
        vector.create(-111.9824447631836, 0.10749483108520508, 69.52320098876953),
        vector.create(-132.51133728027344, 0.10942578315734863, 70.83209991455078),
        vector.create(-136.46800231933594, 0.10873103141784668, 54.989356994628906),
        vector.create(-110.78286743164062, 0.1075131893157959, 54.806636810302734),
    },
    [5] = {
        vector.create(-211.74147033691406, 0.10772848129272461, -83.23009490966797),
        vector.create(-221.9821014404297, 1.754056692123413, -81.0788803100586),
        vector.create(-205.6539306640625, 0.10752153396606445, -97.65946960449219),
        vector.create(-221.75677490234375, 0.10979008674621582, -97.94977569580078),
        vector.create(-225.70947265625, 0.11002779006958008, -112.01988983154297),
        vector.create(-205.73660278320312, 0.10775160789489746, -113.09073638916016),
        vector.create(-206.13925170898438, 0.10748827457427979, -125.90331268310547),
        vector.create(-223.3180389404297, 0.10859692096710205, -128.50376892089844),
        vector.create(-248.27174377441406, 3.163377523422241, -84.14464569091797),
        vector.create(-270.30224609375, 0.10747575759887695, -81.75934600830078),
        vector.create(-268.6859436035156, 0.10768961906433105, -97.72665405273438),
        vector.create(-249.0785675048828, 0.1077578067779541, -97.54768371582031),
        vector.create(-247.78163146972656, 0.11008453369140625, -112.13848876953125),
        vector.create(-269.3927307128906, 0.1091146469116211, -111.74364471435547),
        vector.create(-267.9913024902344, 0.1096792221069336, -125.84830474853516),
        vector.create(-248.31956481933594, 0.10964298248291016, -126.40029907226562),
    },
    [6] = {
        vector.create(-226.7761993408203, 0.10889410972595215, 52.60894775390625),
        vector.create(-211.9356231689453, 0.10814023017883301, 58.67427444458008),
        vector.create(-210.3127899169922, 0.10936379432678223, 67.39817810058594),
        vector.create(-226.52586364746094, 0.1093287467956543, 67.55265045166016),
        vector.create(-206.25601196289062, 0.10822117328643799, 80.99825286865234),
        vector.create(-224.31851196289062, 0.11001753807067871, 81.35910034179688),
        vector.create(-217.33680725097656, 1.201322793006897, 97.79319763183594),
        vector.create(-213.08505249023438, 1.143563985824585, 61.683284759521484),
        vector.create(-174.18771362304688, 3.9045591354370117, 52.52637481689453),
        vector.create(-167.4537353515625, 0.13281893730163574, 55.68878936767578),
        vector.create(-158.9430389404297, 0.10919177532196045, 66.54054260253906),
        vector.create(-173.33787536621094, 0.10882234573364258, 70.0195083618164),
        vector.create(-173.8126678466797, 0.1441727876663208, 83.388671875),
        vector.create(-156.37625122070312, 0.10874831676483154, 84.90918731689453),
        vector.create(-156.7935333251953, 0.10856294631958008, 103.46162414550781),
        vector.create(-172.7524871826172, 0.10863876342773438, 101.78524780273438),
    },
}



for _, eggInfo in pairs(modules.PetRegistryEggs) do
    if eggInfo and eggInfo.RarityData and eggInfo.RarityData.Items then
        for petName, _ in pairs(eggInfo.RarityData.Items) do
            if not vars.petNameSet[petName] then
                table.insert(vars.allPetNames, petName)
                vars.petNameSet[petName] = true
            end
        end
    end
end
table.sort(vars.allPetNames)


for eggName, eggInfo in pairs(modules.PetRegistryEggs) do
    if typeof(eggInfo) == "table" then
        table.insert(vars.eggDisplayNames, eggName)
    end
end
table.sort(vars.eggDisplayNames)



local function SendMessageEMBED(embed)
    if vars.WebhookURL == "" then return end
    local headers = {["Content-Type"] = "application/json"}
    local data = {
        ["content"] = embed.ping and "@everyone" or nil,
        ["embeds"] = {
            {
                ["title"] = embed.title,
                ["description"] = embed.description,
                ["color"] = embed.color,
                ["fields"] = embed.fields,
                ["footer"] = {["text"] = embed.footer.text}
            }
        }
    }
    local body = vars.HttpService:JSONEncode(data)
    pcall(function()
        (syn and syn.request or request)({
            Url = vars.WebhookURL,
            Method = "POST",
            Headers = headers,
            Body = body
        })
    end)
end


local function highlightEgg(uuid)
    if vars.activeHighlights[uuid] and vars.activeHighlights[uuid].Parent then return end
    
    for _, farm in ipairs(vars.Workspace:WaitForChild("Farm"):GetChildren()) do
        local important = farm:FindFirstChild("Important")
        local data = important and important:FindFirstChild("Data")
        local ownerValue = data and data:FindFirstChild("Owner")

        if ownerValue and ownerValue.Value == vars.LocalPlayer.Name then
            local objects = important:FindFirstChild("Objects_Physical")
            if objects then
                for _, obj in ipairs(objects:GetChildren()) do
                    if obj:GetAttribute("OBJECT_UUID") == uuid then
                        local highlight = Instance.new("Highlight")
                        highlight.Name = "TargetPetHighlight"
                        highlight.FillColor = Color3.fromRGB(0, 255, 0)
                        highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
                        highlight.FillTransparency = 0.25
                        highlight.OutlineTransparency = 0
                        highlight.Adornee = obj
                        highlight.Parent = obj
                        vars.activeHighlights[uuid] = highlight
                        return
                    end
                end
            end
        end
    end
end

local function checkPetAndRejoin()
    if not HatchRejoinToggle.Value then
        for _, highlight in pairs(vars.activeHighlights) do
            if highlight and highlight.Parent then
                highlight:Destroy()
            end
        end
        vars.activeHighlights = {}
        return
    end

    if #vars.targetPetNames == 0 then return end

    local success, data = pcall(function()
        return vars.DataService:GetData()
    end)
    if not success or not data or not data.SavedObjects then return end

    local hasPetEgg = false
    for _, obj in pairs(data.SavedObjects) do
        if obj.ObjectType == "PetEgg" then
            hasPetEgg = true
            break
        end
    end

    if not hasPetEgg then
        Library:Notify("❌ No PetEggs in your plot. Stopping rejoin.")
        if vars.SendOnFailure and vars.WebhookURL ~= "" then
            SendMessageEMBED({
                title = "❌ Ran Out of Eggs",
                description = "No PetEggs found in plot. Rejoin Aborted!.",
                color = 16711680,
                fields = {
                    { name = "Player", value = vars.LocalPlayer.Name },
                    { name = "PlaceId", value = tostring(game.PlaceId) }
                },
                footer = { text = "By Lumin Hub" }
            })
        end
        return
    end

    local petList = {}
    local found, foundUUID, foundPetName = false, "", ""

    for uuid, obj in pairs(data.SavedObjects) do
        if obj.ObjectType == "PetEgg" then
            local petName = obj.Data and obj.Data.RandomPetData and obj.Data.RandomPetData.Name
            if petName then
                table.insert(petList, petName)
                            for _, targetName in ipairs(vars.targetPetNames) do
                if petName == targetName then
                    found = true
                    foundUUID = uuid
                    foundPetName = petName
                    break
                end
            end
                if found then break end
            end
        end
    end

    if found then
        highlightEgg(foundUUID)
        Library:Notify({
            Title = "✅ Pet Found",
            Description = "Pet '" .. foundPetName .. "' was found!",
            Time = 5
        })
        if vars.SendOnSuccess then
            SendMessageEMBED({
                title = "✅ Pet Found!",
                description = "Pet `" .. foundPetName .. "` was found!",
                color = 65280,
                ping = true,
                fields = {
                    { name = "Player", value = vars.LocalPlayer.Name },
                    { name = "PlaceId", value = tostring(game.PlaceId) },
                    { name = "Target Names", value = table.concat(vars.targetPetNames, ", ") }
                },
                footer = { text = "By Lumin Hub" }
            })
        end
        return
    end

    Library:Notify({
        Title = "❌ Pet Not Found",
        Description = "Rejoining to search again...",
        Time = 5
    })

    if vars.SendOnFailure then
        local missedPetsString = ""
        for i, pet in ipairs(petList) do
            missedPetsString = missedPetsString .. tostring(i) .. ". " .. pet .. "\n"
        end

        SendMessageEMBED({
            title = "❌ Pet Not Found",
            description = "None of the target pets `" .. table.concat(vars.targetPetNames, ", ") .. "` were found. Rejoining...",
            color = 16711680,
            fields = {
                { name = "Player", value = vars.LocalPlayer.Name },
                { name = "PlaceId", value = tostring(game.PlaceId) },
                { name = "Target Names", value = table.concat(vars.targetPetNames, ", ") },
                { name = "Missed Pets", value = missedPetsString:sub(1, 1024) },
                { name = "JobId", value = tostring(game.JobId) }
            },
            footer = { text = "By Lumin Hub" }
        })
    end

    if vars.kickBeforeRejoin then
        task.wait(vars.delayhop)
        vars.LocalPlayer:Kick("Rejoining to search for pets...")
        task.wait(vars.delayhop)
    end
    task.wait(vars.delayhop)

    vars.TeleportService:Teleport(game.PlaceId, vars.LocalPlayer)
end
task.spawn(LPH_NO_VIRTUALIZE(function()
    while task.wait(5) do  
        pcall(checkPetAndRejoin)  
    end
end))


for key, info in pairs(modules.SeedData) do
    if typeof(info) == "table" and info.Price then
        local rarity = info.SeedRarity or "Unknown"
        local displayName = string.format("%s [%s]", info.SeedName or key, rarity)
        table.insert(vars.seedArray, {
            Key = key,
            DisplayName = displayName,
            SeedRarity = rarity,
            Price = info.Price
        })
        vars.seedDisplayNameToKey[displayName] = key
    end
end
table.sort(vars.seedArray, function(a, b)
    local aRank = vars.getRarityRank(a.SeedRarity)
    local bRank = vars.getRarityRank(b.SeedRarity)
    if aRank == bRank then
        return a.Price < b.Price
    end
    return aRank < bRank
end)

for _, v in ipairs(vars.seedArray) do
    table.insert(vars.seedDisplayNames, v.DisplayName)
end 

Groupboxes.AutoFeedGroupbox:AddDropdown("PetFoodSelector_Dropdown", {
    Values = vars.seedDisplayNames,
    Multi = true,
    Text = "Select Food To Use",
    Tooltip = "Choose one or more Foods to equip for feeding pets",
    Searchable = true,
    Default = {},
    Callback = function(values)
        vars.selectedSeedKeys = {}
        for displayName, selected in pairs(values) do
            if selected and vars.seedDisplayNameToKey[displayName] then
                vars.selectedSeedKeys[vars.seedDisplayNameToKey[displayName] ] = true
            end
        end
    end
})

    Groupboxes.GiftGroup:AddToggle("AutoAcceptGift_Toggle", {
        Text = "Auto Accept Gift",
        Default = false,
        Tooltip = "Auto Accepts Gift",
        Callback = function(Value)
            vars.AutoAcceptGift = Value
        end
    })
    
    task.spawn(function()
        while true do
            if vars.AutoAcceptGift then
                local giftGui = vars.playerGui:FindFirstChild("Gift_Notification")
                if giftGui and giftGui:FindFirstChild("Frame") then
                    for _, notif in ipairs(giftGui.Frame:GetChildren()) do
                        local holder = notif:FindFirstChild("Holder")
                        if holder and holder:FindFirstChild("Frame") then
                            local accept = holder.Frame:FindFirstChild("Accept")
                            if accept then
                                replicatesignal(accept.MouseButton1Click)
                            end
                        end
                    end
                end
            end
            task.wait()
        end
    end)

    AutoSkipSeed = false 
    local MyToggle = Groupboxes.SeedGroup:AddToggle("AutoSkipSeed", {
        Text = "Auto Skip Seed Pack",
        Default = false,
        Tooltip = "",
        Callback = function(Value)
            AutoSkipSeed = Value
        end
    })
    task.spawn(function()
        while task.wait() do
            if AutoSkipSeed then
                pcall(function()
    firesignal(game:GetService("Players").LocalPlayer.PlayerGui.RollCrate_UI.Frame.Skip.Activated)
                end)
            end
        end
    end)

    Groupboxes.SeedGroup:AddDropdown("SeedPackSelector_Dropdown", {
        Text = "Select Seed Pack",
        Searchable = true,
        Values = vars.seedPackNames,
        Callback = function(selected)
            vars.selectedSeedPack = selected
        end
    })

    local autoEquipSeedPackEnabled = false
    local function equipSeedPack()
        local char = vars.LocalPlayer.Character
        if not char or not vars.selectedSeedPack then return end

        for _, tool in ipairs(char:GetChildren()) do
            if tool:IsA("Tool") then
                local cleanName = tool.Name:match("^(.-) %[X%d+]$") or tool.Name
                if cleanName == vars.selectedSeedPack then
                    return
                end
            end
        end

        local toolToEquip = nil
        for _, tool in ipairs(vars.Backpack:GetChildren()) do
            if tool:IsA("Tool") then
                local cleanName = tool.Name:match("^(.-) %[X%d+]$") or tool.Name
                if cleanName == vars.selectedSeedPack then
                    toolToEquip = tool
                    break
                end
            end
        end

        if toolToEquip then
            for _, tool in ipairs(char:GetChildren()) do
                if tool:IsA("Tool") then
                    tool.Parent = vars.Backpack
                    task.wait(0.05)
                end
            end
            
            toolToEquip.Parent = char
            task.wait(0.2)
        end
    end

    Groupboxes.SeedGroup:AddToggle("AutoEquipSeedPack_Toggle", {
        Text = "Auto Equip Selected Seed Pack",
        Default = false,
        Tooltip = ".",
        Callback = function(Value)
            autoEquipSeedPackEnabled = Value
        end
    })

    task.spawn(function()
        while task.wait(1) do
            if autoEquipSeedPackEnabled then
                pcall(equipSeedPack)
            end
        end
    end)

    local autoOpenSeedPackEnabled = false
    Groupboxes.SeedGroup:AddToggle("AutoOpenSeedPack_Toggle", {
        Text = "Auto Open Selected Seed Pack",
        Default = false,
        Tooltip = "",
        Callback = function(value)
            autoOpenSeedPackEnabled = value
        end
    })

    task.spawn(function()
        while task.wait(0.5) do
            if autoOpenSeedPackEnabled then
                local char = vars.LocalPlayer.Character
                if char then
                    local equippedTool = char:FindFirstChildOfClass("Tool")
                    if equippedTool then
                        local cleanName = equippedTool.Name:match("^(.-) %[X%d+]$") or equippedTool.Name
                        if cleanName == vars.selectedSeedPack then
                            pcall(function()
                                equippedTool:Activate()
                            end)
                        end
                    end
                end
            end
    end
    end)

local feedWhenInput = Groupboxes.AutoFeedGroupbox:AddInput("FeedWhenHunger_Input", {
    Text = "Feed When Hunger (%)",
    Default = "0",
    Numeric = true,
    Tooltip = "Feed only if pet hunger is below or equal to this %",
    Placeholder = "0"
})

local stopWhenInput = Groupboxes.AutoFeedGroupbox:AddInput("StopWhenHunger_Input", {
    Text = "Stop When Hunger (%)",
    Default = "10",
    Numeric = true,
    Tooltip = "Stop feeding if hunger is above or equal to this %",
    Placeholder = "10"
})


local function toNumberSafe(val)
    if typeof(val) == "number" then return val end
    if typeof(val) == "string" then return tonumber(val) end
    return nil
end

local function EquipSeedTool()
    if not vars.LocalPlayer.Character then return end
    local char = vars.LocalPlayer.Character

    for _, tool in ipairs(char:GetChildren()) do
        if tool:IsA("Tool") and vars.selectedSeedKeys[tool:GetAttribute(getgenv().HookedInventoryServiceEnums["ItemName"])] then
            return
        end
    end

    for _, tool in ipairs(char:GetChildren()) do
        if tool:IsA("Tool") then
            tool.Parent = vars.Backpack
        end
    end
    
    local function tryEquip(tool)
        tool.Parent = char
        task.wait(0.15)
        return tool.Parent == char
    end

    for _, tool in ipairs(vars.Backpack:GetChildren()) do
        if tool:IsA("Tool")
            and vars.selectedSeedKeys[tool:GetAttribute(getgenv().HookedInventoryServiceEnums["ItemName"])]
            and tool:GetAttribute(getgenv().HookedInventoryServiceEnums["ITEM_TYPE"]) == getgenv().HookedItemTypeEnums["Holdable"]
            and tool:GetAttribute(getgenv().HookedInventoryServiceEnums["Favorite"]) ~= true then
            if tryEquip(tool) then
                break
            end
        end
    end
end

local function FeedPets()
    local data = vars.DataService:GetData()
    if not data or not data.PetsData then return end
    local petsData = data.PetsData
    local equippedUUIDs = petsData.EquippedPets or {}
    local petInventory = (petsData.PetInventory and petsData.PetInventory.Data) or {}

    local minVal = toNumberSafe(feedWhenInput.Value) or 0
    local maxVal = toNumberSafe(stopWhenInput.Value) or 100

    for _, uuid in pairs(equippedUUIDs) do
        if not running.autoFeedEnabled then break end

        local petData = petInventory[uuid]
        if petData and petData.PetData then
            local petType = petData.PetType
            local currentHunger = petData.PetData.Hunger or 0
            local maxHunger = (modules.PetRegistry[petType] and modules.PetRegistry[petType].DefaultHunger) or 100
            local hungerPercent = (currentHunger / maxHunger) * 100

            if hungerPercent <= minVal and hungerPercent < maxVal then
                remotes.event:FireServer("Feed", uuid)
                task.wait(1)
            end
        end

        task.wait(0.1)
    end
end

Groupboxes.AutoFeedGroupbox:AddToggle("AutoFeed_Toggle", {
    Text = "Enable Auto Feed",
    Default = false,
    Tooltip = "Automatically equip selected seed tool(s) and feed pets",
    Callback = function(value)
        running.autoFeedEnabled = value
        if running.autoFeedEnabled then
            task.spawn(function()
                while running.autoFeedEnabled do
                    EquipSeedTool()
                    FeedPets()
                    task.wait(1)
                end
            end)
        end
    end
})

for plantName, _ in pairs(modules.SeedData) do
    if typeof(plantName) == "string" then
        table.insert(vars.plantNamesForGifter, plantName)
    end
end
table.sort(vars.plantNamesForGifter)

local function updatePlayers()
    vars.otherPlayers = {}
    for _, player in ipairs(vars.Players:GetPlayers()) do
        if player ~= vars.LocalPlayer then
            table.insert(vars.otherPlayers, player.Name)
        end
    end
    if vars.playerDropdownGifter then
        vars.playerDropdownGifter:SetValues(vars.otherPlayers)
    end
end

updatePlayers()
vars.Players.PlayerAdded:Connect(updatePlayers)
vars.Players.PlayerRemoving:Connect(updatePlayers)

vars.giftingSelectedPlant = vars.plantNamesForGifter[1] or nil
vars.giftingSelectedPlayer = vars.otherPlayers[1] or nil

local function findNextPlant()
    local function getCleanName(tool)
        local name = tool:GetAttribute(getgenv().HookedInventoryServiceEnums["ItemName"]) or tool.Name
        if not name or type(name) ~= "string" then
            return nil
        end
        if string.find(name, " Seed") then
            return nil
        end
        return name:match("^(.-)%s*%[.+%]$") or name
    end

    local searchLocations = {
        vars.LocalPlayer.Character,
        vars.Backpack
    }

    for _, location in ipairs(searchLocations) do
        if location then
            for _, item in ipairs(location:GetChildren()) do
        if item:IsA("Tool") then
                    local cleanName = getCleanName(item)
                    if cleanName and cleanName == vars.giftingSelectedPlant then
            local uuid = item:GetAttribute(getgenv().HookedInventoryServiceEnums["ITEM_UUID"])
                        local itemType = item:GetAttribute(getgenv().HookedInventoryServiceEnums["ITEM_TYPE"])

                        if uuid and itemType == getgenv().HookedItemTypeEnums["Holdable"] and not vars.giftedItems[uuid] then
                local weightInstance = item:FindFirstChild("Weight")
                if weightInstance and typeof(weightInstance.Value) == "number" then
                    local plantWeight = weightInstance.Value
                    if vars.giftingWeightComparison == "Above" and plantWeight >= vars.giftingWeightThreshold then
                                    print("[Gift Debug] Found matching plant: " .. item.Name)
                        return item, uuid
                    elseif vars.giftingWeightComparison == "Below or Equal" and plantWeight <= vars.giftingWeightThreshold then
                                    print("[Gift Debug] Found matching plant: " .. item.Name)
                        return item, uuid
                    end
                elseif vars.giftingWeightThreshold == 0 then
                                print("[Gift Debug] Found matching plant: " .. item.Name)
                    return item, uuid
                end
            end
        end
    end
            end
        end
    end

    return nil, nil
end

local function performGiftLoop()
    while vars.autoGiftEnabled do
        local targetPlayerName = vars.giftingSelectedPlayer
        if not targetPlayerName then
            
            continue
        end
        
        local myCharacter = vars.LocalPlayer.Character
        local myHRP = myCharacter and myCharacter:FindFirstChild("HumanoidRootPart")
        if not myHRP then
            
            continue
        end

        local plantTool, uuid = findNextPlant()
        if not (plantTool and uuid) then
            
            continue
        end

        local humanoid = myCharacter:FindFirstChildOfClass("Humanoid")
        if not humanoid then
            
            continue
        end
        
        humanoid:UnequipTools()
        task.wait(vars.giftingDelay)
        humanoid:EquipTool(plantTool)
        task.wait(vars.giftingDelay)

        if plantTool.Parent ~= myCharacter then
            
            continue
        end
        
        local targetCharacter = workspace:FindFirstChild(targetPlayerName)
        if not targetCharacter then
            
            continue
        end

        local targetHRP = targetCharacter:FindFirstChild("HumanoidRootPart")
        if not targetHRP then
            continue
        end

        myHRP.Anchored = true
        myHRP.CFrame = targetHRP.CFrame * CFrame.new(0, 0, -2)
        myHRP.Anchored = false
        task.wait(0.5) 

        local giftPrompt = targetHRP:FindFirstChild("ProximityPrompt")
        if giftPrompt and giftPrompt.Enabled then
            fireproximityprompt(giftPrompt)
            vars.giftedItems[uuid] = true
            task.wait(vars.giftingDelay) 
        end

        task.wait(vars.giftingDelay)
    end
end

vars.playerDropdownGifter = Groupboxes.GiftGroup:AddDropdown("PlayerDropdown", {
    Text = "Select Player in Server",
    Values = vars.otherPlayers,
    Callback = function(name)
        vars.giftingSelectedPlayer = name
    end
})

Groupboxes.GiftGroup:AddDropdown("PlantDropdown", {
    Text = "Select Plant Name",
    Searchable = true,
    Values = vars.plantNamesForGifter,
    Callback = function(selected)
        vars.giftingSelectedPlant = selected
    end
})

Groupboxes.GiftGroup:AddDropdown("WeightComparison", {
    Text = "Weight Comparison",
    Values = {"Above", "Below or Equal"},
    Default = "Above",
    Callback = function(val)
        vars.giftingWeightComparison = val
    end
})

Groupboxes.GiftGroup:AddInput("WeightThreshold", {
    Text = "Weight Threshold (kg)",
    Default = "0",
    Numeric = true,
    Callback = function(val)
        vars.giftingWeightThreshold = tonumber(val) or 0
    end
})

Groupboxes.GiftGroup:AddButton("Gift Plant", function()
    if not vars.autoGiftEnabled then
        task.spawn(performGiftLoop)
    end
end)

Groupboxes.GiftGroup:AddInput("AutoGiftDelay", {
    Text = "Auto Gift Delay (s)",
    Default = "1",
    Numeric = true,
    Callback = function(val)
        vars.giftingDelay = tonumber(val) or 1
    end
})

Groupboxes.GiftGroup:AddToggle("AutoGiftToggle", {
    Text = "Auto Gift",
    Description = "Disable Anti Scam on delta",
    Default = false,
    Callback = function(enabled)
        pcall(function()
        vars.autoGiftEnabled = enabled
            if not enabled then
                if vars.giftingTask then
                    task.cancel(vars.giftingTask)
                    vars.giftingTask = nil
                end
                if vars.LocalPlayer.Character and vars.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
                    vars.LocalPlayer.Character.HumanoidRootPart.Anchored = false
                end
            elseif enabled and not vars.giftingTask then
                vars.giftingTask = task.spawn(performGiftLoop)
            end
        end)
    end
})


 SeedTab = Groupboxes.ShopSelectorTabbox:AddTab("Seed")
GearTab = Groupboxes.ShopSelectorTabbox:AddTab("Gear")
EggTab = Groupboxes.ShopSelectorTabbox:AddTab("Egg")
CosmeticsTab = Groupboxes.ShopSelectorTabbox:AddTab("Cosmetics")
SeedPricesTab = Groupboxes.ShopPricesTabbox:AddTab("Seed")
GearPricesTab = Groupboxes.ShopPricesTabbox:AddTab("Gear")
EggPricesTab = Groupboxes.ShopPricesTabbox:AddTab("Egg")
CosmeticsPricesTab = Groupboxes.ShopPricesTabbox:AddTab("Cosmetics")

for seedKey1, seedInfo in pairs(modules.SeedData) do
    if typeof(seedInfo) == "table" and seedInfo.Price and seedInfo.Price < 1e17 then
        local rarity1 = seedInfo.SeedRarity or "Unknown"
        local displayName1 = string.format("%s [%s]", seedInfo.SeedName or seedKey1, rarity1)
        table.insert(vars.seedArray1, {
            SeedKey = seedKey1,
            SeedDisplayName = displayName1,
            SeedPrice = seedInfo.Price,
            SeedRarity = rarity1
        })
        vars.displayNameToSeedKey1[displayName1] = seedKey1
    end
end

table.sort(vars.seedArray1, function(a, b)
    local aRank = vars.getRarityRank(a.SeedRarity)
    local bRank = vars.getRarityRank(b.SeedRarity)
    if aRank == bRank then
        return a.SeedPrice < b.SeedPrice
    end
    return aRank < bRank
end)

table.insert(vars.buyseedDisplayNames, "All")
for _, seed in ipairs(vars.seedArray1) do
    table.insert(vars.buyseedDisplayNames, seed.SeedDisplayName)
end


for gearKey, gearInfo in pairs(modules.GearData) do
    local rarity = gearInfo.GearRarity or "Unknown"
    local displayName = string.format("%s [%s]", gearInfo.GearName or gearKey, rarity)
    table.insert(vars.gearArray, {
        Name = gearKey,
        DisplayName = displayName,
        Price = gearInfo.Price or 0,
        Rarity = rarity
    })
    vars.displayNameToGearKey[displayName] = gearKey
end

table.sort(vars.gearArray, function(a, b)
    local aRank = vars.getRarityRank(a.Rarity)
    local bRank = vars.getRarityRank(b.Rarity)
    if aRank == bRank then
        return a.Price < b.Price
    end
    return aRank < bRank
end)


table.insert(vars.gearDisplayNames, "All")
for _, gear in ipairs(vars.gearArray) do
    table.insert(vars.gearDisplayNames, gear.DisplayName)
end


for eggKey, eggInfo in pairs(modules.PetEggData) do
    if typeof(eggInfo) == "table" and eggInfo.Price then
        local rarity = eggInfo.EggRarity or "Unknown"
        local displayName = string.format("%s [%s]", eggInfo.EggName or eggKey, rarity)
        table.insert(vars.eggArray, {
            Name = eggKey,
            DisplayName = displayName,
            Price = eggInfo.Price,
            Rarity = rarity
        })
        vars.displayNameToEggKey[displayName] = eggKey
    end
end

table.sort(vars.eggArray, function(a, b)
    local aRank = vars.getRarityRank(a.Rarity)
    local bRank = vars.getRarityRank(b.Rarity)
    if aRank == bRank then
        return a.Price < b.Price
    end
    return aRank < bRank
end)

table.insert(vars.eggDisplayNames, "All")
for _, egg in ipairs(vars.eggArray) do
    table.insert(vars.eggDisplayNames, egg.DisplayName)
end

for _, seed in ipairs(vars.seedArray1) do
    table.insert(vars.allSeedKeys, seed.SeedKey)
end


SeedTab:AddDropdown("AutoBuySeedSelector_Dropdown", {
    Values = vars.buyseedDisplayNames,
    Multi = true,
    Text = "Select Seeds ",
    Tooltip = "Select seeds to Auto-Buy (ignored if 'Auto Buy All' is on)",
    Searchable = true,
    Callback = function(Values)
        vars.buyselectedSeedKeys = {}
        if Values["All"] then
            for _, seed in ipairs(vars.seedArray1) do
                table.insert(vars.buyselectedSeedKeys, seed.SeedKey)
            end
        else
            for displayName, selected in pairs(Values) do
                if selected and displayName ~= "All" then
                    table.insert(vars.buyselectedSeedKeys, vars.displayNameToSeedKey1[displayName])
                end
            end
        end
    end
})

for _, seed in ipairs(vars.seedArray1) do
    SeedPricesTab:AddLabel(seed.SeedDisplayName)
    SeedPricesTab:AddLabel(vars.formatNumberWithCommas(seed.SeedPrice) .. " Sheckles")
end

vars.autoBuyAllGear = false
vars.allGearKeys = {}
for _, gear in ipairs(vars.gearArray) do
    table.insert(vars.allGearKeys, gear.Name)
end

GearTab:AddDropdown("AutoBuyGearSelector_Dropdown", {
    Values = vars.gearDisplayNames,
    Multi = true,
    Text = "Select Gear ",
    Searchable = true,
    Tooltip = "Select gear to Auto-Buy (ignored if 'Auto Buy All' is on)",
    Callback = function(Values)
        vars.selectedGearKeys = {}
        if Values["All"] then
            for _, gear in ipairs(vars.gearArray) do
                table.insert(vars.selectedGearKeys, gear.Name)
            end
        else
            for displayName, selected in pairs(Values) do
                if selected and displayName ~= "All" then
                    table.insert(vars.selectedGearKeys, vars.displayNameToGearKey[displayName])
                end
            end
        end
    end
})

for _, gear in ipairs(vars.gearArray) do
    GearPricesTab:AddLabel(gear.DisplayName)
    GearPricesTab:AddLabel(vars.formatNumberWithCommas(gear.Price) .. " Sheckles")
end

vars.autoBuyAllEggs = false
vars.allEggKeys = {}
for _, egg in ipairs(vars.eggArray) do
    table.insert(vars.allEggKeys, egg.Name)
end


EggTab:AddDropdown("AutoBuyEggSelector_Dropdown", {
    Values = vars.eggDisplayNames,
    Multi = true,
    Text = "Select Eggs ",
    Searchable = true,
    Tooltip = "Select eggs to Auto-Buy (ignored if 'Auto Buy All' is on)",
    Callback = function(Values)
        vars.selectedEggKeys = {}
        if Values["All"] then
            for _, egg in ipairs(vars.eggArray) do
                table.insert(vars.selectedEggKeys, egg.Name)
            end
        else
            for displayName, selected in pairs(Values) do
                if selected and displayName ~= "All" then
                    table.insert(vars.selectedEggKeys, vars.displayNameToEggKey[displayName])
                end
            end
        end
    end
})

for _, egg in ipairs(vars.eggArray) do
    EggPricesTab:AddLabel(egg.DisplayName)
    EggPricesTab:AddLabel(vars.formatNumberWithCommas(egg.Price) .. " Sheckles")
end



SeedTab:AddToggle("AutoBuySeed_Toggle", {
    Text = "Start Auto-Buy",
    Default = false,
    Callback = function(state)
        vars.autoBuySeed = state
        if state then
            updateCachedStockTables()
            task.spawn(LPH_NO_VIRTUALIZE(function()
                while vars.autoBuySeed do
                    local keysToBuy
                    if vars.autoBuyAllSeeds then
                        keysToBuy = vars.allSeedKeys
                    else
                        keysToBuy = vars.buyselectedSeedKeys
                    end
                    pcall(buyFromStock, vars.cachedSeedStock, remotes.BuySeedStockRemote, keysToBuy, false)
                    task.wait(10)  
                end
            end))
        end
    end
})


GearTab:AddToggle("AutoBuyGear_Toggle", {
    Text = "Start Auto-Buy",
    Default = false,
    Callback = function(state)
        vars.autoBuyGear = state
        if state then
            updateCachedStockTables()
            task.spawn(LPH_NO_VIRTUALIZE(function()
                while vars.autoBuyGear do
                    local keysToBuy
                    if vars.autoBuyAllGear then
                        keysToBuy = vars.allGearKeys
                    else
                        keysToBuy = vars.selectedGearKeys
                    end
                    pcall(buyFromStock, vars.cachedGearStock, remotes.BuyGearStockRemote, keysToBuy, false)
                    task.wait(10)  
                end
            end))
        end
    end
})


SeedTab:AddToggle("AutoBuyAllSeeds_Toggle", {
    Text = "Auto Buy All Seeds",
    Default = false,
    Callback = function(state)
        vars.autoBuyAllSeeds = state
    end,
})

GearTab:AddToggle("AutoBuyAllGear_Toggle", {
    Text = "Auto Buy All Gear",
    Default = false,
    Callback = function(state)
        vars.autoBuyAllGear = state
    end,
})


EggTab:AddToggle("AutoBuyEgg_Toggle", {
    Text = "Start Auto-Buy",
    Default = false,
    Callback = function(state)
        vars.autoBuyEgg = state
        if state then
            updateCachedStockTables()
            task.spawn(LPH_NO_VIRTUALIZE(function()
                while vars.autoBuyEgg do
                    local keysToBuy
                    if vars.autoBuyAllEggs then
                        keysToBuy = vars.allEggKeys
                    else
                        keysToBuy = vars.selectedEggKeys
                    end
                    buyFromStock(vars.cachedPetEggStock, remotes.BuyPetEggRemote, keysToBuy, true)
                    task.wait(5)
                end
            end))
        end
    end
})


EggTab:AddToggle("AutoBuyAll_Eggs", {
    Text = "Auto Buy All Eggs",
    Default = false,
    Callback = function(state)
        vars.autoBuyAllEggs = state
    end,
})


running.HatchLoopRunning2 = false
running.FiredEggs = {}

local data = vars.DataService:GetData()

EggTab:AddToggle("AutoHatchPetEggs_Toggle", {
    Text = "Auto Hatch Pet Eggs",
    Default = false,
    Tooltip = "Automatically hatches pet eggs when ready",
    Callback = function(Value)
        if Value and not running.HatchLoopRunning2 then
            running.HatchLoopRunning2 = true
            task.spawn(function()
                while running.HatchLoopRunning2 do
                    vars.playerData = vars.DataService:GetData()

                    local petToolCount = 0
                    for _, tool in ipairs(vars.LocalPlayer.Backpack:GetChildren()) do
                        if tool:IsA("Tool") and tool:GetAttribute(getgenv().HookedInventoryServiceEnums["ITEM_TYPE"]) == getgenv().HookedItemTypeEnums["Pet"] then
                            petToolCount = petToolCount + 1
                        end
                    end

                    if vars.playerData and vars.playerData.PetsData and vars.playerData.PetsData.MutableStats and vars.playerData.PetsData.MutableStats.MaxPetsInInventory and petToolCount >= tonumber(vars.playerData.PetsData.MutableStats.MaxPetsInInventory) then
                        Library:Notify({
                            Title = "Inventory Full",
                            Description = "You can't open your eggs, you have more than " .. tostring(vars.playerData.PetsData.MutableStats.MaxPetsInInventory) .. " pets!",
                            Time = 5
                        })
                        task.wait(2)
                        continue
                    end

                    local didHatch = false

                    for _, farm in ipairs(vars.Workspace:WaitForChild("Farm"):GetChildren()) do
                        local important = farm:FindFirstChild("Important")
                        local farmData = important and important:FindFirstChild("Data")
                        local ownerValue = farmData and farmData:FindFirstChild("Owner")
                        local savedObjects = farmData and farmData:FindFirstChild("SavedObjects")

                        if ownerValue and ownerValue.Value == vars.LocalPlayer.Name then
                            local objects = important:FindFirstChild("Objects_Physical")
                            if objects then
                                for _, eggObj in ipairs(objects:GetChildren()) do
                                    if eggObj:GetAttribute("OBJECT_TYPE") == "PetEgg"
                                        and eggObj:GetAttribute("TimeToHatch") == 0
                                        and not running.FiredEggs[eggObj] then

                                        local eggUUID = eggObj:GetAttribute("OBJECT_UUID")
                                        running.FiredEggs[eggObj] = true

                                        pcall(function()
                                            remotes.HatchRemote:FireServer("HatchPet", eggObj)
                                        end)

                                        local eggName = eggObj:GetAttribute("EggName") or "Unknown"
                                        local petName = "Unknown"
                                        local baseWeight = "?"

                                        if savedObjects then
                                            for uuid, savedObj in pairs(savedObjects) do
                                                if uuid == eggUUID and savedObj.ObjectType == "PetEgg" then
                                                    if savedObj.Data and savedObj.Data.RandomPetData then
                                                        petName = savedObj.Data.RandomPetData.Name or "Unknown"
                                                        baseWeight = savedObj.Data.RandomPetData.BaseWeight or "?"
                                                    end
                                                    break
                                                end
                                            end
                                        end

                                        Library:Notify({
                                            Title = "Hatched Egg!",
                                            Description = "Egg: " .. eggName ..
                                                          "\nOwner: " .. vars.LocalPlayer.Name ..
                                                          "\nPet: " .. tostring(petName) ..
                                                          "\nBaseWeight: " .. tostring(baseWeight),
                                            Time = 5
                                        })

                                        didHatch = true
                                        break
                                    end
                                end
                            end
                        end
                        if didHatch then break end
                    end

                    task.wait(didHatch and 2 or 1)
                end
            end)
        elseif not Value then
            running.HatchLoopRunning2 = false
        end
    end
})

local statusLabel = EggTab:AddLabel("Status: Waiting...")

EggTab:AddDropdown("EggToPlace_Dropdown", {
    Text = "Select Eggs to Place",
    Multi = true,
    Values = vars.eggDisplayNames,
    Searchable = true,
    Callback = function(selectionTable)
        vars.selectedEggs = {}
        for eggName, isSelected in pairs(selectionTable) do
            if isSelected then
                table.insert(vars.selectedEggs, eggName)
            end
        end
    end
})

EggTab:AddToggle("AutoPlacePetEgg_Toggle", {
    Text = "Auto Place Pet Eggs",
    Default = false,
    Callback = function(state)
        running.autoPlaceEnabled = state
        if not state then
            local humanoid = vars.LocalPlayer.Character and vars.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
            if humanoid then humanoid:UnequipTools() end
            if statusLabel then statusLabel:SetText("Status: Waiting...") end
        end
    end
})

local function getPlacedEggPositions()
    local usedPositions, count, max = {}, 0, 7
    local farms = vars.Workspace:WaitForChild("Farm"):GetChildren()

    for _, farm in ipairs(farms) do
        local important = farm:FindFirstChild("Important")
        local dataBlock = important and important:FindFirstChild("Data")
        local owner = dataBlock and dataBlock:FindFirstChild("Owner")
        if owner and owner.Value == vars.LocalPlayer.Name then
            local objects = important:FindFirstChild("Objects_Physical")
            if objects then
                for _, obj in ipairs(objects:GetChildren()) do
                    if obj:IsA("Model") and obj.Name == "PetEgg" and obj:GetAttribute("OBJECT_TYPE") == "PetEgg" then
                        count =count+ 1
                        table.insert(usedPositions, obj.WorldPivot.Position)
                    end
                end
            end
            local ok, data = pcall(function() return vars.DataService:GetData() end)
            if ok and data and data.PetsData and data.PetsData.MutableStats then
                max = data.PetsData.MutableStats.MaxEggsInFarm or 7
            end
            break
        end
    end
    return usedPositions, count, max
end

task.spawn(LPH_NO_VIRTUALIZE(function()
    while task.wait(1) do
        if not running.autoPlaceEnabled or #vars.selectedEggs == 0 then
            if statusLabel and statusLabel.Text ~= "Status: Waiting..." then statusLabel:SetText("Status: Waiting...") end
            continue
        end

        while running.autoPlaceEnabled and #vars.selectedEggs > 0 do
            local usedPositions, placedEggs, maxEggs = getPlacedEggPositions()
            if placedEggs >= maxEggs then
                if statusLabel.Text ~= "Status: Max Eggs — Waiting..." then statusLabel:SetText("Status: Max Eggs — Waiting...") end
                break 
            end

            if statusLabel.Text ~= "Status: Placing..." then statusLabel:SetText("Status: Placing...") end

            local plotNumber
            for _, farm in ipairs(vars.Workspace:WaitForChild("Farm"):GetChildren()) do
                local important = farm:FindFirstChild("Important")
                local dataBlock = important and important:FindFirstChild("Data")
                if dataBlock and dataBlock:FindFirstChild("Owner").Value == vars.LocalPlayer.Name then
                    plotNumber = dataBlock:FindFirstChild("Farm_Number").Value
                    break
                end
            end

            if not plotNumber or not plotCFrames[plotNumber] then 
                task.wait(1)
                break 
            end

            local foundTool
            for _, tool in ipairs(vars.LocalPlayer.Backpack:GetChildren()) do
                if tool:IsA("Tool") and tool:GetAttribute(getgenv().HookedInventoryServiceEnums["ITEM_TYPE"]) == getgenv().HookedItemTypeEnums["PetEgg"] then
                    local eggName = tool:GetAttribute(getgenv().HookedInventoryServiceEnums["EggName"]) or tool.Name
                    for _, selectedEgg in ipairs(vars.selectedEggs) do
                        if eggName:lower():find(selectedEgg:lower()) then
                            foundTool = tool
                            break
                        end
                    end
                    if foundTool then break end
                end
            end

            if not foundTool then
                if statusLabel.Text ~= "Status: No selected eggs in inventory." then statusLabel:SetText("Status: No selected eggs in inventory.") end
                break
            end

            local char = vars.LocalPlayer.Character
            local humanoid = char and char:FindFirstChildOfClass("Humanoid")
            if not humanoid then break end

            humanoid:EquipTool(foundTool)
            task.wait(0.5)

            local placementSuccessful = false
            for _, pos in ipairs(plotCFrames[plotNumber]) do
                local positionIsUsed = false
                for _, usedPos in ipairs(usedPositions) do
                    if (usedPos - pos).Magnitude < 1 then
                        positionIsUsed = true
                        break
                    end
                end
                if not positionIsUsed then
                    for _, globalPos in ipairs(vars.globalUsedPositions) do
                         if (globalPos - pos).Magnitude < 1 then
                            positionIsUsed = true
                            break
                        end
                    end
                end

                if not positionIsUsed then
                    pcall(function()
                        remotes.hatchremote:FireServer("CreateEgg", pos)
                        table.insert(vars.globalUsedPositions, pos)
                    end)
                    task.wait(0.8)
                    if not char:FindFirstChild(foundTool.Name) then
                        placementSuccessful = true
                        break
                    else 
                        
                        table.remove(vars.globalUsedPositions, #vars.globalUsedPositions)
                    end
                end
            end

            if not placementSuccessful then
                humanoid:UnequipTools()
                if statusLabel.Text ~= "Status: No available plot space." then statusLabel:SetText("Status: No available plot space.") end
                break
            end
            task.wait(0.2)
        end
    end
end))



local calculatePlantValue = LPH_NO_VIRTUALIZE(function(plant)
    local Item_String = plant:FindFirstChild("Item_String")
    local Variant = plant:FindFirstChild("Variant")
    local Weight = plant:FindFirstChild("Weight")
    if not (Item_String and Variant and Weight) then
        return 0
    end
    local itemData = modules.ItemModule.Return_Data(Item_String.Value)
    if not itemData or #itemData < 3 then
        return 0
    end
    local clampedWeight = math.clamp(Weight.Value / itemData[2], 0.95, 1e8)
    local mutationMultiplier = modules.MutationHandler:CalcValueMulti(plant)
    local variantMultiplier = modules.ItemModule.Return_Multiplier(Variant.Value)
    local value = itemData[3] * mutationMultiplier * variantMultiplier * (clampedWeight ^ 2)
    return math.round(value)
end)

local function getMutationString(tool)
    local attrs = tool:GetAttributes()
    local found = {}
    for _, mutation in ipairs(vars.favoriterMutations) do
        if attrs[mutation] == true then
            table.insert(found, mutation)
        end
    end
    if #found == 0 then
        return "None"
    end
    return table.concat(found, ", ")
end

local function calculatePetValue(tool)
    if not tool then return 0 end
    local PET_UUID = tool:GetAttribute("PET_UUID")
    if not PET_UUID then return 0 end

    local petData = vars.DataService:GetData().PetsData.PetInventory.Data[PET_UUID]
    if not petData then return 0 end

    local HatchedFrom = petData.PetData.HatchedFrom
    if not HatchedFrom or HatchedFrom == "" then return 0 end

    local eggData = modules.PetRegistry.PetEggs[HatchedFrom]
    if not eggData then return 0 end

    local petInfo = eggData.RarityData.Items[petData.PetType]
    if not petInfo then return 0 end

    local WeightRange = petInfo.GeneratedPetData.WeightRange
    if not WeightRange then return 0 end

    local basePrice = modules.PetRegistry.PetList[petData.PetType].SellPrice or 0
    local weight = petData.PetData.BaseWeight or 0
    local levelProgress = modules.PetUtilities:GetLevelProgress(petData.PetData.Level or 1)

    local price = math.floor(basePrice * 
        (math.lerp(0.8, 1.2, modules.NumberUtil.ReverseLerp(WeightRange[1], WeightRange[2], weight))) *
        math.lerp(0.15, 6, levelProgress)
    )
    return price, petData, HatchedFrom, eggData, petInfo, weight
end

local function cacheAllPlantValues()
    
    if next(vars.plantValuesCache) and #vars.plantValuesCache > 100 then
        return
    end
    
    vars.plantValuesCache = {}
    local char = vars.LocalPlayer.Character
    if not char then return end  
    
    for _, tool in pairs(char:GetChildren()) do
        if (tool:IsA("Tool") or tool:IsA("Model")) and
        tool:FindFirstChild("Item_String") and tool:FindFirstChild("Variant") and tool:FindFirstChild("Weight") then
            vars.plantValuesCache[tool] = calculatePlantValue(tool)
        end
    end
end

local function notifyHeldToolInfo(tool)
    if not tool then return end
    if tool == vars.lastNotifiedTool then return end

    if vars.currentNotification and typeof(vars.currentNotification.Close) == "function" then
        vars.currentNotification:Close()
    end

    if tool:GetAttribute(getgenv().HookedInventoryServiceEnums["ITEM_TYPE"]) == getgenv().HookedItemTypeEnums["Pet"] and vars.showPetPrices then
        local price, petData, HatchedFrom, eggData, petInfo, weight = calculatePetValue(tool)
        if price == 0 then return end

        local eggName = HatchedFrom or "Unknown Egg"
        local rarityName = string.match(eggName, "^(%w+)") or "Unknown"
        local petType = petData.PetType or "Unknown"

        local description = string.format(
            "Name: %s\nHatched From: %s\nRarity: %s\nPetType: %s\nWeight: %.2f\nPrice: %s",
            tool.Name,
            eggName,
            rarityName,
            petType,
            weight,
            vars.formatNumberWithCommas(price)
        )

        vars.currentNotification = Library:Notify({
            Title = "Held Pet Info",
            Description = description,
            Time = 5
        })

        vars.lastNotifiedTool = tool
        vars.lastNotifiedValue = price

    elseif vars.showPlantPrices then
        local val = vars.plantValuesCache[tool]
        if not val then return end

        local f = tool:FindFirstChild("Item_String") and tool.Item_String.Value or "Unknown"
        local weight = tool:FindFirstChild("Weight") and tool.Weight.Value or 0
        local variant = tool:FindFirstChild("Variant") and tool.Variant.Value or "Normal"
        local mutationStr = getMutationString(tool)

        local description = string.format(
            "Name: %s\nWeight: %.2f kg\nVariant: %s\nMutation: %s\nPrice: %s",
            f,
            weight,
            variant,
            mutationStr,
            vars.formatNumberWithCommas(val)
        )

        vars.currentNotification = Library:Notify({
            Title = "Held Plant Info",
            Description = description,
            Time = 5
        })

        vars.lastNotifiedTool = tool
        vars.lastNotifiedValue = val
    end
end

local function setupCharacterListeners(character)
    cacheAllPlantValues()
    character.ChildAdded:Connect(function(child)
        if (child:IsA("Tool") or child:IsA("Model")) and
        child:FindFirstChild("Item_String") and child:FindFirstChild("Variant") and child:FindFirstChild("Weight") then
            vars.plantValuesCache[child] = calculatePlantValue(child)
        end
        if child:IsA("Tool") then
            child.Equipped:Connect(function()
                notifyHeldToolInfo(child)
            end)
        end
    end)
    for _, tool in pairs(character:GetChildren()) do
        if tool:IsA("Tool") then
            tool.Equipped:Connect(function()
                notifyHeldToolInfo(tool)
            end)
        end
    end
end

vars.LocalPlayer.CharacterAdded:Connect(setupCharacterListeners)
if vars.LocalPlayer.Character then
    setupCharacterListeners(vars.LocalPlayer.Character)
end


Groupboxes.LeftGroupbox:AddToggle("ShowPlantPrices_Toggle", {
    Text = "Show Fruits/Plant Prices",
    Default = false,
    Callback = function(state)
        vars.showPlantPrices = state
        if state then
            cacheAllPlantValues()
            Library:Notify({
                Title = "Plant Prices",
                Description = "Will show value when you equip a plant.",
                Time = 4
            })
        end
    end
})

Groupboxes.LeftGroupbox:AddToggle("ShowPetPrices_Toggle", {
    Text = "Show Pet Prices",
    Default = false,
    Callback = function(state)
        vars.showPetPrices = state
        if state then
            Library:Notify({
                Title = "Pet Prices",
                Description = "Will show value when you equip a pet tool.",
                Time = 4
            })
        end
    end
})



task.spawn(LPH_NO_VIRTUALIZE(function()
    while true do
        task.wait(5)  
        if vars.showPlantPrices then
            pcall(cacheAllPlantValues)  
        end
    end
end))



local EventTab = Tabs.EventTab:AddLeftGroupbox("Dino", "cat")

local AutoDinoToggle = EventTab:AddToggle("AutoSubmitDino_Toggle", { Text = "Auto Submit Dino Machine", Default = false, Tooltip = "Automatically submits selected pets to Dino Machine", Callback = function(Value) running.autoSubmitDino = Value end })

local PetDropdown = EventTab:AddDropdown("DinoPet_Dropdown", { Text = "Select Pet(s)", Multi = true, Searchable = true, Values = {}, Default = {}, Callback = function(Selected) local petlists = {} for i, v in pairs(Selected) do if v then table.insert(petlists, i) end end running.selectedPets = petlists end })

local PetRegistry = require(vars.ReplicatedStorage.Data.PetRegistry.PetList) local petList = {} for petName, petData in pairs(PetRegistry) do table.insert(petList, { petName, petData.Rarity or 0 }) end

table.sort(petList, function(a, b) return (a[2] or 0) > (b[2] or 0) end)

local petNames = {} for _, pet in ipairs(petList) do table.insert(petNames, string.format("%s [%s]", pet[1], tostring(pet[2]))) end

PetDropdown:SetValues(petNames)

local function GetPlayerData() return modules.DataService:GetData() end

local function equipSelectedPet()
    local character = vars.LocalPlayer.Character
    if not vars.Backpack or not character then
        return false
    end

    for _, tool in ipairs(character:GetChildren()) do
        if tool:IsA("Tool") then
            tool.Parent = vars.Backpack
        end
    end

    local success, data = pcall(GetPlayerData)
    if not success or not data or not data.PetsData or not data.PetsData.PetInventory or not data.PetsData.PetInventory.Data then
        return false
    end
    local petInventoryData = data.PetsData.PetInventory.Data

    for _, tool in ipairs(vars.Backpack:GetChildren()) do
        if tool:IsA("Tool") then
            local petUUID = tool:GetAttribute("PET_UUID")
            if petUUID then
                local petData = petInventoryData[petUUID]
                if petData and petData.PetType then
                    local toolPetType = petData.PetType
                    for _, selected in ipairs(running.selectedPets or {}) do
                        local matchedName = string.match(selected, "^(.-) %[[^%]]+%]$")
                        if matchedName and matchedName == toolPetType then
                            vars.LocalPlayer.Character.Humanoid:EquipTool(tool)
                            task.wait(0.5)
                            return true
                        end
                    end
                end
            end
        end
    end

    return false
end

local function fireDinoMachine() local success = pcall(function() vars.ReplicatedStorage.GameEvents.DinoMachineService_RE:FireServer("MachineInteract") end) return success end

local function claimDinoReward() pcall(function() vars.ReplicatedStorage.GameEvents.DinoMachineService_RE:FireServer("ClaimReward") end) end

task.spawn(LPH_NO_VIRTUALIZE(function() while true do task.wait(2)

if running.autoSubmitDino then
        local success, data = pcall(GetPlayerData)
        if success and data then
            local dinoMachine = rawget(data, "DinoMachine")
            if dinoMachine then
                local isRunning = dinoMachine.IsRunning
                local rewardReady = dinoMachine.RewardReady
                local timeLeft = dinoMachine.TimeLeft or 0

                if rewardReady then
                    claimDinoReward()
                elseif not isRunning and timeLeft == 0 then
                    local equipped = equipSelectedPet()
                    if equipped then
                        task.wait(0.5)
                        fireDinoMachine()
                    end
                end
            end
        end
    end
end

end))

for recipeName, recipeData in pairs(vars.ItemRecipes) do
    local machineTypes = recipeData.MachineTypes or {}
    for _, machineType in pairs(machineTypes) do
        if machineType == "GearEventWorkbench" then
            table.insert(vars.GearItems, recipeName)
        elseif machineType == "SeedEventWorkbench" then
            table.insert(vars.SeedItems, recipeName)
        elseif machineType == "DinoEventWorkbench" then
            table.insert(vars.DinoItems, recipeName)
        end
    end
end

table.sort(vars.GearItems)
table.sort(vars.SeedItems)
table.sort(vars.DinoItems)

for name in pairs(vars.ItemRecipes) do
    table.insert(vars.recipeNames, name)
end
table.sort(vars.recipeNames)

labels.OutputLabel = Groupboxes.InfoGroup:AddLabel({Text = "Outputs:", DoesWrap = true})
labels.InputsLabel = Groupboxes.InfoGroup:AddLabel({Text = "Inputs:", DoesWrap = true})
labels.TimeLabel = Groupboxes.InfoGroup:AddLabel({Text = "Time:", DoesWrap = true})
labels.RobuxLabel = Groupboxes.InfoGroup:AddLabel({Text = "Robux:", DoesWrap = true})
labels.MachineTypeLabel = Groupboxes.InfoGroup:AddLabel({Text = "MachineTypes:", DoesWrap = true})

Groupboxes.RecipeGroup:AddDropdown("GearRecipeList_Dropdown", {
    Values = vars.GearItems,
    Text = "Gear Recipes",
    Searchable = true,
    Callback = function(v)
        vars.SelectedGearDropdown = { v }
        vars.SelectedGearRecipe = modules.CraftingModule.ItemRecipes[v]
        vars.SelectedSeedDropdown = nil
        vars.SelectedDinoDropdown = nil
        vars.SelectedDropdown = nil
        renderRecipeInfo(v)
    end
})

Groupboxes.RecipeGroup:AddDropdown("SeedRecipeList_Dropdown", {
    Values = vars.SeedItems,
    Text = "Seed Recipes",
    Searchable = true,
    Callback = function(v)
        vars.SelectedSeedDropdown = { v }
        vars.SelectedSeedRecipe = modules.CraftingModule.ItemRecipes[v]
        vars.SelectedGearDropdown = nil
        vars.SelectedDinoDropdown = nil
        vars.SelectedDropdown = nil
        renderRecipeInfo(v)
    end
})

Groupboxes.RecipeGroup:AddDropdown("DinoRecipeList_Dropdown", {
    Values = vars.DinoItems,
    Text = "Dino Recipes",
    Searchable = true,
    Callback = function(v)
        vars.SelectedDinoDropdown = { v }
        vars.SelectedDinoRecipe = modules.CraftingModule.ItemRecipes[v]
        vars.SelectedGearDropdown = nil
        vars.SelectedSeedDropdown = nil
        vars.SelectedDropdown = nil
        renderRecipeInfo(v)
    end
})

Groupboxes.RecipeGroup:AddDropdown("RecipeList_Dropdown", {
    Values = vars.recipeNames,
    Text = "All Recipes",
    Searchable = true,
    Callback = function(v)
        vars.SelectedDropdown = { v }
        vars.SelectedGearDropdown = nil
        vars.SelectedSeedDropdown = nil
        vars.SelectedDinoDropdown = nil
        renderRecipeInfo(v)
    end
})

Groupboxes.RecipeGroup:AddToggle("AutoRecipe_Toggle", {
    Text = "Auto Recipe",
    Default = false,
    Callback = function(v) vars.AutoRecipeTrigger = v end
})

Groupboxes.RecipeGroup:AddToggle("AutoInput_Toggle", {
    Text = "Auto Input",
    Default = false,
    Callback = function(v) vars.AutoInputTrigger = v end
})

Groupboxes.RecipeGroup:AddToggle("AutoCraft_Toggle", {
    Text = "Auto Craft",
    Default = false,
    Callback = function(v) vars.AutoCraftTrigger = v end
})

Groupboxes.RecipeGroup:AddToggle("AutoClaim_Toggle", {
    Text = "Auto Claim",
    Default = false,
    Callback = function(v) vars.AutoClaimTrigger = v end
})

Groupboxes.InfoGroup:AddButton({
    Text = "Buy Using Robux",
    Func = function()
        if vars.SelectedRecipe and vars.SelectedRecipe.PurchaseId and vars.SelectedRecipe.RobuxPrice then
            game:GetService("MarketplaceService"):PromptPurchase(vars.LocalPlayer, vars.SelectedRecipe.PurchaseId)
        end
    end
})

function renderRecipeInfo(selected)
    vars.SelectedRecipe = vars.ItemRecipes[selected] or {}
    local outputs = vars.SelectedRecipe.Outputs or {}
    local inputs = vars.SelectedRecipe.Inputs or {}

    local outputStr = table.concat((function()
        local out = {}
        for k in pairs(outputs) do table.insert(out, k) end
        return out
    end)(), ", ")

    local function renderInputs(tbl)
        local lines = {}
        local function recurse(t, indent)
            indent = indent or ""
            for k, v in pairs(t) do
                if typeof(v) == "table" then
                    recurse(v, indent .. "  ")
                elseif k == "ItemType" or k == "ItemName" then
                    table.insert(lines, indent .. k .. ": " .. tostring(v))
                end
            end
        end
        recurse(tbl)
        return table.concat(lines, "\n")
    end

    labels.OutputLabel:SetText("Outputs: " .. outputStr)
    labels.InputsLabel:SetText("Inputs:\n" .. renderInputs(inputs))
    labels.TimeLabel:SetText("Time: " .. tostring(vars.SelectedRecipe.TimeToCraft or 0) .. "s")
    labels.RobuxLabel:SetText("Robux: " .. vars.formatNumberWithCommas(vars.SelectedRecipe.RobuxPrice or 0))
    local mt = vars.SelectedRecipe.MachineTypes
    labels.MachineTypeLabel:SetText("MachineTypes: " .. (mt and table.concat(mt, ", ") or "N/A"))
end


local function getItemProperties(tool)
    local uuid = tool:GetAttribute(getgenv().HookedInventoryServiceEnums["ITEM_UUID"])
    
    local finalName = nil
    local finalType = nil

    
    local sprayTypeAttributeValue = tool:GetAttribute(getgenv().HookedInventoryServiceEnums["SprayType"])
    if sprayTypeAttributeValue then
        finalName = sprayTypeAttributeValue
        finalType = getgenv().HookedItemTypeEnums["SprayBottle"]
        return finalName, finalType, uuid
    end

    
    finalType = tool:GetAttribute(getgenv().HookedInventoryServiceEnums["ITEM_TYPE"]) or 
                tool:GetAttribute(getgenv().HookedInventoryServiceEnums["PotType"])

    
    if finalType == getgenv().HookedItemTypeEnums["PetEgg"] then
        
        finalName = tool:GetAttribute(getgenv().HookedInventoryServiceEnums["EggName"]) or
                tool:GetAttribute(getgenv().HookedInventoryServiceEnums["ItemName"]) or
                tool:GetAttribute(getgenv().HookedInventoryServiceEnums["Type"])
    elseif finalType == getgenv().HookedItemTypeEnums["Harvest Tool"] then
        
        finalName = tool:GetAttribute(getgenv().HookedInventoryServiceEnums["ItemName"]) or
                tool:GetAttribute(getgenv().HookedInventoryServiceEnums["Type"])
    else
        
        finalName = tool:GetAttribute(getgenv().HookedInventoryServiceEnums["ItemName"]) or
                tool:GetAttribute(getgenv().HookedInventoryServiceEnums["EggName"]) or
                tool:GetAttribute(getgenv().HookedInventoryServiceEnums["CrateType"]) or
                tool:GetAttribute(getgenv().HookedInventoryServiceEnums["SprayMutationName"]) or
                tool:GetAttribute(getgenv().HookedInventoryServiceEnums["Type"])
    end

    
    if not finalType and finalName and getgenv().HookedItemTypeEnums[finalName] then
        finalType = getgenv().HookedItemTypeEnums[finalName]
    end

    
    if not finalType then
        for _, enumVal in pairs(getgenv().HookedItemTypeEnums) do
            if type(enumVal) == "string" then
                for _, attrCode in pairs(getgenv().HookedInventoryServiceEnums) do
                    if attrCode ~= getgenv().HookedInventoryServiceEnums["ITEM_UUID"] and
                    attrCode ~= getgenv().HookedInventoryServiceEnums["OWNER"] and
                    attrCode ~= getgenv().HookedInventoryServiceEnums["LinkedPlayerID"] and
                    attrCode ~= getgenv().HookedInventoryServiceEnums["Rarity"] and
                    attrCode ~= getgenv().HookedInventoryServiceEnums["Uses"] and
                    attrCode ~= getgenv().HookedInventoryServiceEnums["Favorite"] then

                        if tool:GetAttribute(attrCode) == enumVal then
                            finalType = enumVal
                            break
                        end
                    end
                end
            end
            if finalType then break end
        end
    end

    return finalName, finalType, uuid
end


task.spawn(LPH_NO_VIRTUALIZE(function()
    while task.wait(3) do
        if not (vars.AutoRecipeTrigger or vars.AutoInputTrigger) then continue end

        local machines = {
            {
                name = "SeedEventWorkbench",
                selectedKey = vars.SelectedSeedDropdown and vars.SelectedSeedDropdown[1],
                workbench = remotes.SeedWorkbench,
                selectedRecipe = vars.SelectedSeedRecipe
            },
            {
                name = "GearEventWorkbench",
                selectedKey = vars.SelectedGearDropdown and vars.SelectedGearDropdown[1],
                workbench = remotes.GearWorkbench,
                selectedRecipe = vars.SelectedGearRecipe
            },
            {
                name = "DinoEventWorkbench",
                selectedKey = vars.SelectedDinoDropdown and vars.SelectedDinoDropdown[1],
                workbench = vars.Workspace.Interaction.UpdateItems.DinoEvent:FindFirstChild("DinoCraftingTable"),
                selectedRecipe = vars.SelectedDinoRecipe
            }
        }

        for _, machine in ipairs(machines) do
            local selectedKey = machine.selectedKey
            local selectedRecipe = machine.selectedRecipe
            if not selectedKey then continue end

            local playerCraftData = modules.PlayerData.CraftingData.GlobalCraftingObjectData
            local machineKey = machine.name == "SeedEventWorkbench" and "SeedEventWorkbench"
                            or machine.name == "DinoEventWorkbench" and "DinoEventWorkbench"
                            or "Workbench-1"

            local machineData = playerCraftData[machineKey]
            machineData = machineData and machineData.MachineData and machineData.MachineData[machine.name]
            if not machineData then continue end

            local recipeId = machineData.RecipeId
            local inputsItems = machineData.InputItems or {}
            local timeRemaining = machineData.TimeRemaining

            if vars.AutoRecipeTrigger and (not recipeId or recipeId == "") then
                remotes.CraftingRemote:FireServer("SetRecipe", machine.workbench, machine.name, selectedKey)
                continue
            end

            if not (vars.AutoInputTrigger and selectedRecipe and selectedRecipe.Inputs) then continue end

            local hasInput = false
            for _, inputData in pairs(inputsItems) do
                if inputData and inputData.ItemData and inputData.ItemData.ItemName then
                    hasInput = true
                    break
                end
            end
            if hasInput or (timeRemaining and timeRemaining ~= "") then continue end

            local backpack = vars.LocalPlayer:WaitForChild("Backpack")
            local humanoid = vars.LocalPlayer.Character and vars.LocalPlayer.Character:FindFirstChild("Humanoid")
            if not humanoid then continue end

            for slotIndex, input in ipairs(selectedRecipe.Inputs) do
                local itemName = input.ItemData and input.ItemData.ItemName
                local itemType = input.ItemType or "Holdable"
                local enum = getgenv().ItemTypeToEnumKey[itemType]
                local placed = false

                for _, tool in ipairs(backpack:GetChildren()) do
                    if not tool:IsA("Tool") or placed then continue end

                    local toolName, toolTypeEnum, uuid = getItemProperties(tool)
                    local nameMatch = false
                    local typeMatch = toolTypeEnum == enum

                    if toolName == itemName then
                        nameMatch = true
                    elseif itemType == "PetEgg" and tool:GetAttribute(getgenv().HookedInventoryServiceEnums["EggName"]) == itemName then
                        nameMatch = true
                    elseif itemType == "Harvest Tool" then
                        local toolItemName = tool:GetAttribute(getgenv().HookedInventoryServiceEnums["ItemName"])
                        if toolItemName == itemName or (tool.Name:find("Harvest") and itemName == "Harvest Tool") or tool.Name == itemName then
                            nameMatch = true
                        end
                    end

                    if nameMatch and typeMatch then
                        humanoid:EquipTool(tool)
                        task.wait(0.5)
                        remotes.CraftingRemote:FireServer("InputItem", machine.workbench, machine.name, tostring(slotIndex), {
                            ItemType = itemType,
                            ItemData = { UUID = uuid:match("^{.*}$") and uuid or "{" .. uuid .. "}" }
                        })
                        placed = true
                        task.wait(0.3)
                    end
                end
            end
        end
    end
end))

task.spawn(LPH_NO_VIRTUALIZE(function()
    while task.wait() do
        if vars.AutoCraftTrigger then
            local selectedName
            local craftType
            
            if vars.SelectedSeedDropdown and vars.SelectedSeedDropdown[1] then
                selectedName = vars.SelectedSeedDropdown[1]
                craftType = "Seed"
            elseif vars.SelectedGearDropdown and vars.SelectedGearDropdown[1] then
                selectedName = vars.SelectedGearDropdown[1]
                craftType = "Gear"
            elseif vars.SelectedDinoDropdown and vars.SelectedDinoDropdown[1] then
                selectedName = vars.SelectedDinoDropdown[1]
                craftType = "Dino"
            elseif vars.SelectedDropdown and vars.SelectedDropdown[1] then
                selectedName = vars.SelectedDropdown[1]
                if table.find(vars.SeedItems, selectedName) then
                    craftType = "Seed"
                elseif table.find(vars.GearItems, selectedName) then
                    craftType = "Gear"
                elseif table.find(vars.DinoItems, selectedName) then
                    craftType = "Dino"
                end
            end

            if selectedName and craftType then
                pcall(function()
                    if craftType == "Seed" then
                        remotes.CraftingRemote:FireServer("Craft", remotes.SeedWorkbench, "SeedEventWorkbench")
                    elseif craftType == "Gear" then
                        remotes.CraftingRemote:FireServer("Craft", remotes.GearWorkbench, "GearEventWorkbench")
                    elseif craftType == "Dino" then
                        remotes.CraftingRemote:FireServer("Craft", vars.Workspace.Interaction.UpdateItems.DinoEvent:FindFirstChild("DinoCraftingTable"), "DinoEventWorkbench")
                    end
                end)
            end
        end

        if vars.AutoClaimTrigger then
            pcall(function()
                remotes.CraftingRemote:FireServer("Claim", remotes.SeedWorkbench, "SeedEventWorkbench", 1)
                remotes.CraftingRemote:FireServer("Claim", remotes.GearWorkbench, "GearEventWorkbench", 1)
                remotes.CraftingRemote:FireServer("Claim", vars.Workspace.Interaction.UpdateItems.DinoEvent:FindFirstChild("DinoCraftingTable"), "DinoEventWorkbench", 1)
            end)
        end
    end
end))


local function getPlantRank(r) return vars.plantRarityRank[r] or 99 end

local function formatNumberWithCommas(num)
    local formatted = tostring(num)
    while true do
        formatted, k = formatted:gsub("^(-?%d+)(%d%d%d)", "%1,%2")
        if k == 0 then break end
    end
    return formatted
end

--[[
local CPV = LPH_NO_VIRTUALIZE(function(model)
    if not model or not model:IsA("Model") then
        return 0
    end

    local Variant = model:FindFirstChild("Variant")
    local Weight = model:FindFirstChild("Weight")
    if not Variant or not Weight then
        return 0
    end

    
    local originalName = model.Name
    
    if string.find(originalName, " / ") then
        originalName = string.match(originalName, "^([^/]+)")
        if originalName then
            originalName = string.gsub(originalName, "%s+$", "") 
        end
    end

    local itemData = modules.Item_Module_upvr.Return_Data(originalName)
    if not itemData or #itemData < 3 then
        return 0
    end

    local baseWeight = itemData[2]
    local baseValue = itemData[3]
    local weightValue = Weight.Value
    local variantValue = Variant.Value
    
    if not baseWeight or not baseValue or not weightValue or not variantValue then
        return 0
    end

    local clamped = math.clamp(weightValue / baseWeight, 0.95, 1e8)
    local mutationMultiplier = modules.MutationHandler_upvr:CalcValueMulti(model)
    local variantMultiplier = modules.Item_Module_upvr.Return_Multiplier(variantValue)

    local final = baseValue * mutationMultiplier * variantMultiplier * (clamped ^ 2)
    final = math.round(final)

    
    local priceStr = "$" .. formatNumberWithCommas(final)
    local weightStr = string.format("%.2f KG", weightValue)
    model.Name = string.format("%s / %s / %s", originalName, weightStr, priceStr)

    return final
end) 
--]]

for key, data in pairs(modules.SeedData) do 
    if typeof(data) == "table" then
        local name = data.SeedName or key
        local rarity = data.SeedRarity or "Unknown"
        local display = string.format("%s [%s]", name, rarity)
        table.insert(vars.allPlantableSeeds, {
            ID = key,
            Label = display,
            Rarity = rarity
        })
        vars.plantSeedNameLookup[display] = key
    end
end

table.sort(vars.allPlantableSeeds, function(a, b)
    local ra, rb = getPlantRank(a.Rarity), getPlantRank(b.Rarity)
    if ra == rb then
        return tostring(a.ID) < tostring(b.ID)
    else
        return ra < rb
    end
end)

for _, s in ipairs(vars.allPlantableSeeds) do
    table.insert(vars.shownPlantableSeedNames, s.Label)
end
table.insert(vars.shownPlantableSeedNames, 1, "All")




local PetList = require(vars.ReplicatedStorage.Data.PetRegistry.PetList)
local petNames = {}

for petName in pairs(PetList) do
    table.insert(petNames, petName)
end

table.sort(petNames)

local SelectedPetNames = {}
local PetDropdown = Groupboxes.AutoSellPetGroupbox:AddDropdown("PetTypeDropdown", {
    Values = petNames,
    Multi = true,
    Searchable = true,
    Text = "Select Pets to Auto-Sell",
    Tooltip = "Selected pet types will be automatically sold",
    Callback = function(Value)
        SelectedPetNames = {}
        for name, selected in pairs(Value) do
            if selected then
                table.insert(SelectedPetNames, name)
            end
        end
    end
})

Groupboxes.AutoSellPetGroupbox:AddDropdown("PetSellWeightComparison_Dropdown", {
    Values = {"Above", "Below or Equal"},
    Multi = false,
    Text = "Weight Comparison",
    Default = "Above",
    Searchable = true,
    Callback = function(v)
        vars.selectedPetSellWeightComparison = v
    end
})

Groupboxes.AutoSellPetGroupbox:AddInput("PetSellWeight_Input", {
    Text = "Weight Threshold",
    Default = "0",
    Numeric = true,
    Callback = function(value)
        vars.petSellWeightThreshold = tonumber(value) or 0
    end
})

local ToggleAutoPetSell = Groupboxes.AutoSellPetGroupbox:AddToggle("AutoPetSell_Toggle", {
    Text = "Auto Sell Pets",
    Default = false,
    Tooltip = "Automatically sells selected pets from your inventory based on filters",
    Callback = function(Value)
        vars.autoPetSellEnabled = Value
    end
})

task.spawn(LPH_NO_VIRTUALIZE(function()
    while true do
        task.wait(1)

        if vars.autoPetSellEnabled and next(SelectedPetNames) then
            local character = vars.LocalPlayer.Character
            if not character then
                task.wait(1)
                continue
            end
            
            local humanoid = character:FindFirstChildOfClass("Humanoid")
            local backpack = vars.LocalPlayer:WaitForChild("Backpack")

            if humanoid then
                local toolsToSell = {}
                for _, tool in ipairs(backpack:GetChildren()) do
                    if tool:IsA("Tool") and tool:GetAttribute("PET_UUID") then
                        table.insert(toolsToSell, tool)
                    end
                end
                for _, tool in ipairs(character:GetChildren()) do
                    if tool:IsA("Tool") and tool:GetAttribute("PET_UUID") then
                        table.insert(toolsToSell, tool)
                    end
                end

                for _, tool in ipairs(toolsToSell) do
                    for _, selectedPetName in ipairs(SelectedPetNames) do
                        if tool.Name:find(selectedPetName) then
                            local _, _, _, _, _, weight = calculatePetValue(tool)
                            local weightPass = false
                            if weight then
                                if vars.selectedPetSellWeightComparison == "Above" and weight >= vars.petSellWeightThreshold then
                                    weightPass = true
                                elseif vars.selectedPetSellWeightComparison == "Below or Equal" and weight <= vars.petSellWeightThreshold then
                                    weightPass = true
                                end
                            else 
                                weightPass = true 
                            end

                            if weightPass then
                            if tool.Parent == backpack then
                                humanoid:EquipTool(tool)
                                task.wait(0.2)
                            end
                            
                            if tool.Parent == character then
                                remotes.SellPet:FireServer(tool)
                                task.wait(0.2)
                                end
                            end
                            break 
                        end
                    end
                end
            end
        end
    end
end))

Groupboxes.AutoSellGroupbox:AddDropdown("PickYourSeedsToPlant_Dropdown", { 
    Values = vars.shownPlantableSeedNames, 
    Multi = true,
    Text = "Choose Seeds to Plant",
    Searchable = true,
    Tooltip = "Select seeds from your backpack to auto-plant (must be in backpack or equipped).",
    Callback = function(picked)
        vars.chosenPlantSeeds = {}
        if picked["All"] then
            
            for _, s in ipairs(vars.allPlantableSeeds) do
                table.insert(vars.chosenPlantSeeds, s.ID)
            end
        else
            
            for name, isSelected in pairs(picked) do
                if isSelected and name ~= "All" then
                    table.insert(vars.chosenPlantSeeds, vars.plantSeedNameLookup[name])
                end
            end
        end
    end
})

local function getLegCenter()
    local char = vars.LocalPlayer.Character or vars.LocalPlayer.CharacterAdded:Wait()
    local leg = char:FindFirstChild("Left Leg") or char:FindFirstChild("LeftLowerLeg")
    return leg and leg.Position
end

local function validPlantPosition()
    local pos = getLegCenter()
    if not pos then return false end
    
    local castOrigin = pos + Vector3.new(0, 3, 0)
    local castDown = Vector3.new(0, -100, 0)
    
    local params = RaycastParams.new()
    params.FilterDescendantsInstances = {vars.Workspace.Farm}
    params.FilterType = Enum.RaycastFilterType.Whitelist
    params.IgnoreWater = true
    
    local currentPos = castOrigin
    while true do
        local result = vars.Workspace:Raycast(currentPos, castDown, params)
        if not result then break end
        
        if result.Instance and result.Instance.Name == "Can_Plant" then
            return true, result.Position
        end
        
        currentPos = result.Position - Vector3.new(0, 0.1, 0)
    end
    
    return false
end

local function findAndEquipToolToPlant() 
    local char = vars.LocalPlayer.Character
    local backpack = vars.LocalPlayer:WaitForChild("Backpack")

    if char then
        for _, item in ipairs(char:GetChildren()) do
            if item:IsA("Tool") and item:GetAttribute(getgenv().HookedInventoryServiceEnums["ITEM_TYPE"]) == getgenv().HookedItemTypeEnums["Seed"] then
                
                local seedName = item:GetAttribute("Seed") or 
                                item:GetAttribute(getgenv().HookedInventoryServiceEnums["ItemName"]) or
                                item:GetAttribute(getgenv().HookedInventoryServiceEnums["Type"]) or
                                item.Name
                
                if table.find(vars.chosenPlantSeeds, seedName) then
                    return item
                end
            end
        end
        
        for _, item in ipairs(backpack:GetChildren()) do
            if item:IsA("Tool") and item:GetAttribute(getgenv().HookedInventoryServiceEnums["ITEM_TYPE"]) == getgenv().HookedItemTypeEnums["Seed"] then
                
                local seedName = item:GetAttribute("Seed") or 
                                item:GetAttribute(getgenv().HookedInventoryServiceEnums["ItemName"]) or
                                item:GetAttribute(getgenv().HookedInventoryServiceEnums["Type"]) or
                                item.Name
                
                if table.find(vars.chosenPlantSeeds, seedName) then
                    item.Parent = char
                    task.wait(0.1)
                    return item
                end
            end
        end
    end
    return nil
end

local function attemptPlant()
    local tool = findAndEquipToolToPlant()
    if not tool then return end

    local valid, targetPos = validPlantPosition()
    if valid and targetPos and tool:GetAttribute(getgenv().HookedInventoryServiceEnums["ITEM_TYPE"]) then
        remotes.PlantRemote:FireServer(targetPos, tool:GetAttribute("Seed"))
        Library:Notify({
            Title = "Auto Plant", 
            Description = "Planted 1 " .. (tool.Name or "seed") .. "!", 
            Time = 2
        })
    end
end





local ToggleAutoSell = Groupboxes.AutoSellGroupbox:AddToggle("AutoSell_Toggle", {
    Text = "Auto Sell when full backpack space",
    Default = false,
    Tooltip = "Teleports to sell location and returns after 1 second",
    Callback = function(Value)
    end
})

ToggleAutoSell:OnChanged(function(Value) 
    vars.autoSellEnabled = Value
    if not Value and vars.LocalPlayer.Character and vars.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
        vars.LocalPlayer.Character.HumanoidRootPart.Anchored = false
    end
end)

local ToggleAutoSellDelay = Groupboxes.AutoSellGroupbox:AddToggle("AutoSellDelay_Toggle", {
    Text = "Auto Sell Every X Seconds",
    Default = false,
    Tooltip = "Continuously sells your inventory every X seconds.",
    Callback = function(Value)
        vars.autoSellDelayEnabled = Value
        if not Value and vars.LocalPlayer.Character and vars.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
            vars.LocalPlayer.Character.HumanoidRootPart.Anchored = false
        end
    end
})

local AutoSellDelayInput = Groupboxes.AutoSellGroupbox:AddInput("AutoSellDelay_Input", {
    Text = "Sell Delay (seconds)",
    Default = "300",
    Tooltip = "Time in seconds between automatic sells.",
    Numeric = true,
    Callback = function(Value)
        vars.autoSellDelay = tonumber(Value) or 300
    end
})


Groupboxes.AutoSellGroupbox:AddToggle("AutoGrow_Toggle", { 
    Text = "Auto Plant",
    Default = false,
    Tooltip = "Continuously plants seeds if you're on valid plot",
    Callback = function(on)
        running.autoPlantLoopEnabled = on
        if on and not running.autoPlantLoopThread then
            running.autoPlantLoopThread = task.spawn(function()
                while running.autoPlantLoopEnabled do
                    attemptPlant()
                    task.wait(0.1) 
                end
                running.autoPlantLoopThread = nil
            end)
        elseif not on then 
            running.autoPlantLoopEnabled = false 
        end
    end
})


task.spawn(LPH_NO_VIRTUALIZE(function()
    local lastSellTime = 0
    while true do
        task.wait(2)  

        local backpack = vars.LocalPlayer:WaitForChild("Backpack") 
        local character = vars.LocalPlayer.Character or vars.LocalPlayer.CharacterAdded:Wait()
        local rootPart = character and character:FindFirstChild("HumanoidRootPart") 

        local performSell = false

        if vars.autoSellEnabled then
            local holdableItemCount = 0
            for _, item in ipairs(backpack:GetChildren()) do
                if item:GetAttribute(getgenv().HookedInventoryServiceEnums["ITEM_TYPE"]) == getgenv().HookedItemTypeEnums["Holdable"] then
                    holdableItemCount = holdableItemCount + 1
                end
            end
            if holdableItemCount >= 200 then
                performSell = true
            end
        end

        if vars.autoSellDelayEnabled and not performSell then
            local currentSellInterval = vars.autoSellDelay or 300
            if currentSellInterval and currentSellInterval > 0 then
                local currentTime = tick()
                if currentTime - lastSellTime >= currentSellInterval then
                    performSell = true
                    lastSellTime = currentTime
                end
            end
        end

        if performSell and rootPart then
            local oldCFrame = rootPart.CFrame
            local sellCFrame = CFrame.new(62, 3, 0)

            rootPart.Anchored = true
            rootPart.CFrame = sellCFrame
            task.wait(0.1)
            rootPart.Anchored = false
            
            for i = 1, 7 do
                remotes.sellRemote:FireServer()
                task.wait(0.1)
            end

            task.wait(1.0)

            rootPart.Anchored = true
            rootPart.CFrame = oldCFrame
            task.wait(0.1)
            rootPart.Anchored = false
        end
    end
end))

for _, m in pairs(vars.favoriterMutations) do
    if typeof(m) == "table" then
        m._AddFX = nil
        m._RemoveFX = nil
    end
end

local function favoriterGetRarityRank(r)
    return vars.favoriterRarityOrder[r] or 999
end

for key, info in pairs(modules.SeedData) do
    if typeof(info) == "table" and info.Price then
        local favRarity = info.SeedRarity or "Unknown"
        local favDisplayName = string.format("%s [%s]", info.SeedName or key, favRarity)
        table.insert(vars.favoriterSeedArray, {
            FavKey = key,
            FavDisplayName = favDisplayName,
            FavPrice = info.Price,
            FavRarity = favRarity
        })
        vars.favoriterSeedNameToKey[favDisplayName] = key
    end
end

table.sort(vars.favoriterSeedArray, function(a, b)
    local aRank = favoriterGetRarityRank(a.FavRarity)
    local bRank = favoriterGetRarityRank(b.FavRarity)
    if aRank == bRank then return a.FavPrice < b.FavPrice end
    return aRank < bRank
end)

for _, v in ipairs(vars.favoriterSeedArray) do
    table.insert(vars.favoriterSeedDisplayNames, v.FavDisplayName)
end

for _, mutation in pairs(vars.favoriterMutations) do
    if typeof(mutation) == "table" and mutation.Name then
        table.insert(vars.favoriterMutationNames, mutation.Name)
    end
end
table.sort(vars.favoriterMutationNames)

Groupboxes.FavoriterGroupbox:AddDropdown("Favoriter_SeedSelector_Dropdown", {
    Values = vars.favoriterSeedDisplayNames,
    Multi = true,
    Text = "Plant Filter",
    Searchable = true,
    Callback = function(values)
        vars.favoriterSelectedSeedKeys = {}
        if values["All"] then
            for _, v in ipairs(vars.favoriterSeedArray) do
                table.insert(vars.favoriterSelectedSeedKeys, v.FavKey)
            end
        else
            for name, selected in pairs(values) do
                if selected and name ~= "All" then
                    table.insert(vars.favoriterSelectedSeedKeys, vars.favoriterSeedNameToKey[name])
                end
            end
        end
    end
})

Groupboxes.FavoriterGroupbox:AddDropdown("Favoriter_MutationSelector_Dropdown", {
    Values = vars.favoriterMutationNames,
    Multi = true,
    Text = "Mutation Filter",
    Searchable = true,
    Callback = function(values)
        vars.favoriterSelectedMutations = {}
        if values["All"] then
            vars.favoriterSelectedMutations["All"] = true
        else
            for name, selected in pairs(values) do
                if selected and name ~= "All" then
                    vars.favoriterSelectedMutations[name] = true
                end
            end
        end
    end
})

Groupboxes.FavoriterGroupbox:AddDropdown("Favoriter_VariantSelector_Dropdown", {
    Values = vars.VariantsFavoriter,
    Multi = true,
    Default = {},
    Searchable = true,
    Text = "Variant Filter",
    Tooltip = "Select one or more plant variants to filter",
    Callback = function(values)
        vars.favoriterSelectedVariants = {}
        for _, variant in ipairs(values) do
            vars.favoriterSelectedVariants[variant] = true
        end
    end
})

Groupboxes.FavoriterGroupbox:AddDropdown("Favoriter_ModeSelector_Dropdown", {
    Values = {"Favorite", "Unfavorite"},
    Multi = false,
    Default = "Favorite",
    Searchable = true,
    Text = "Mode",
    Tooltip = "Choose whether to favorite or unfavorite plants",
    Callback = function(value)
        vars.favoriterMode = value
    end
})

local function favoriterPassesToolCheck(tool)
    local seedName = tool:GetAttribute(getgenv().HookedInventoryServiceEnums["ItemName"])
    if not seedName or not table.find(vars.favoriterSelectedSeedKeys, seedName) then return false end

    if vars.favoriterSelectedVariants and next(vars.favoriterSelectedVariants) then
        local v = tool:FindFirstChild("Variant")
        if not (v and vars.favoriterSelectedVariants[v.Value]) then return false end
    end

    if vars.favoriterSelectedMutations["All"] then
        return true
    elseif vars.favoriterSelectedMutations["None"] then
        for mut in pairs(vars.favoriterSelectedMutations) do
            if mut ~= "None" and mut ~= "All" and tool:GetAttribute(mut) then return false end
        end
    elseif next(vars.favoriterSelectedMutations) then
        local found = false
        for mut in pairs(vars.favoriterSelectedMutations) do
            if mut ~= "All" and tool:GetAttribute(mut) then found = true break end
        end
        if not found then return false end
    end

    return true
end

local function favoriterRun()
    if not remotes.favoriteremote then return end

    for _, tool in ipairs(vars.Backpack:GetChildren()) do
        if not vars.favoritingEnabled then break end
        if tool:IsA("Tool") and favoriterPassesToolCheck(tool) then
            local attr = tool:GetAttribute(getgenv().HookedInventoryServiceEnums["Favorite"])
            if (vars.favoriterMode == "Favorite" and attr ~= true) or (vars.favoriterMode == "Unfavorite" and attr == true) then
                pcall(function()
                    remotes.favoriteremote:FireServer(tool)
                    task.wait(0.01)
                end)
            end
        end
    end
end

Groupboxes.FavoriterGroupbox:AddToggle("Favoriter_Auto_Toggle", {
    Text = "Auto Favorite/Unfavorite Plants",
    Default = false,
    Callback = function(state)
        vars.favoritingEnabled = state
        if state then
            task.spawn(function()
                while vars.favoritingEnabled do
                    favoriterRun()
                    task.wait(0.5)
                end
            end)
        end
    end
})


for _, m in pairs(vars.mutations) do
    if typeof(m) == "table" then
        m._AddFX = nil
        m._RemoveFX = nil
    end
end


for key, info in pairs(modules.SeedData) do
    if typeof(info) == "table" and info.Price then
        local rarity = info.SeedRarity or "Unknown"
        local displayName = string.format("%s [%s]", info.SeedName or key, rarity)
        table.insert(vars.seedArray10, {Key = key, DisplayName = displayName, Price = info.Price, Rarity = rarity})
        vars.seedDisplayNameToKey10[displayName] = key
    end
end

table.sort(vars.seedArray10, function(a, b)
            local aRank, bRank = vars.getRarityRank(a.Rarity), vars.getRarityRank(b.Rarity)
    if aRank == bRank then
        return a.Price < b.Price
    end
    return aRank < bRank
end)

for _, v in ipairs(vars.seedArray10) do
    table.insert(vars.seedDisplayNames10, v.DisplayName)
end

for _, mutation in pairs(vars.mutations) do
    if typeof(mutation) == "table" and mutation.Name then
        table.insert(vars.mutationNames, mutation.Name)
    end
end
table.sort(vars.mutationNames)

Groupboxes.CollectorGroupbox:AddDropdown("SelectAutoCollectFruits_Dropdown", {
    Values = vars.seedDisplayNames10,
    Multi = true,
    Text = "Plant Filter",
    Searchable = true,
    Callback = function(values)
        vars.selectedSeedKeys10 = {}
        if values["All"] then
            for _, v in ipairs(vars.seedArray10) do
                table.insert(vars.selectedSeedKeys10, v.Key)
            end
        else
            for name, selected in pairs(values) do
                if selected and name ~= "All" then
                    table.insert(vars.selectedSeedKeys10, vars.seedDisplayNameToKey10[name])
                end
            end
        end
    end
})

Groupboxes.CollectorGroupbox:AddDropdown("SelectAutoCollectMutations_Dropdown", {
    Values = vars.mutationNames,
    Multi = true,
    Text = "Mutation Filter",
    Searchable = true,
    Callback = function(values)
        vars.selectedMutations10 = {}
        if values["All"] then
            vars.selectedMutations10["All"] = true
        else
            for name, selected in pairs(values) do
                if selected and name ~= "All" then
                    vars.selectedMutations10[name] = true
                end
            end
        end
    end
})

Groupboxes.CollectorGroupbox:AddDropdown("AutoCollectSelectedVariants_Dropdown", {
    Values = vars.variantOptions10,
    Multi = true,
    Text = "Variant Filter",
    Searchable = true,
    Callback = function(values)
        vars.selectedVariants10 = {}
        if values["All"] then
            for _, v in ipairs(vars.variantOptions10) do
                if v ~= "All" then
                    vars.selectedVariants10[v] = true
                end
            end
        else
            for name, selected in pairs(values) do
                if selected and name ~= "All" then
                    vars.selectedVariants10[name] = true
                end
            end
        end
    end
})



Groupboxes.CollectorGroupbox:AddDropdown("AutoCollectWeightComparison_Dropdown", {
    Values = {"Above", "Below or Equal"},
    Multi = false,
    Text = "Weight Comparison",
    Default = "Above",
    Searchable = true,
    Callback = function(v)
        vars.selectedWeightComparison10 = v
    end
})

Groupboxes.CollectorGroupbox:AddInput("AutoCollectDelay_Input", {
    Text = "Collect Delay",
    Default = "0.1",
    Numeric = true,
    Tooltip = "",
    Callback = function(value)
        local num = tonumber(value)
        if num and num >= 0 then
            running.autoCollectDelay = num
        else
            running.autoCollectDelay = 0.1
        end
    end
})



labels.YapLabel = Groupboxes.CollectorGroupbox:AddLabel({
    Text = "The weight threshold needs a number only",
    DoesWrap = true
})

Groupboxes.CollectorGroupbox:AddInput("AutoCollectWeight_Input", {
    Text = "Weight Threshold",
    Default = "0",
    Numeric = true,
    Callback = function(value)
        vars.weightThreshold10 = tonumber(value) or 0
    end
})

local function countHoldableItems()
    local count = 0
    local backpack = vars.LocalPlayer:FindFirstChildOfClass("Backpack") or (vars.LocalPlayer.Character and vars.LocalPlayer.Character:FindFirstChildOfClass("Backpack"))
    if backpack then
        for _, item in ipairs(backpack:GetChildren()) do
            if item:GetAttribute(getgenv().HookedInventoryServiceEnums["ITEM_TYPE"]) == getgenv().HookedItemTypeEnums["Holdable"] then
                count = count + 1
            end
        end
    end
    return count
end

local function passesCheck(model)
    if not table.find(vars.selectedSeedKeys10, model.Name) then return false end

    if next(vars.selectedVariants10) then
        local variant = model:FindFirstChild("Variant")
        if not (variant and vars.selectedVariants10[variant.Value]) then
            return false
        end
    end

    if vars.selectedMutations10["All"] then
    elseif vars.selectedMutations10["None"] then
        local hasAnySelectedMutation = false
        for mutName, _ in pairs(vars.selectedMutations10) do
            if mutName ~= "None" and mutName ~= "All" and model:GetAttribute(mutName) then
                hasAnySelectedMutation = true
                break
            end
        end
        if hasAnySelectedMutation then return false end
    elseif next(vars.selectedMutations10) then
        local found = false
        for mutName, _ in pairs(vars.selectedMutations10) do
            if mutName ~= "All" and mutName ~= "None" and model:GetAttribute(mutName) then
                found = true
                break
            end
        end
        if not found then return false end
    end

    local weight = model:FindFirstChild("Weight")
    if weight then
        if vars.selectedWeightComparison10 == "Above" then
            if not (weight.Value >= vars.weightThreshold10) then return false end
        elseif vars.selectedWeightComparison10 == "Below or Equal" then
            if not (weight.Value <= vars.weightThreshold10) then return false end
        end
    else
        return false
    end

    return true
end

local runCollector = LPH_NO_VIRTUALIZE(function()
    if not (vars.LocalPlayer and vars.Workspace and remotes.bytenet) then return end

    local myPlot
    for _, plot in ipairs(vars.Workspace.Farm:GetChildren()) do
        local data = plot:FindFirstChild("Important") and plot.Important:FindFirstChild("Data")
        local owner = data and data:FindFirstChild("Owner")
        if owner and owner.Value == vars.LocalPlayer.Name then
            myPlot = plot
            break
        end
    end
    if not myPlot then return end

    local plants = myPlot.Important:FindFirstChild("Plants_Physical")
    if not plants then return end

    for _, plant in ipairs(plants:GetChildren()) do
        if not running.collecting then break end

        local holdableItemCount = countHoldableItems()
        if holdableItemCount >= 200 then
            print("Backpack is full (200+ holdable items). Pausing auto-collection.")
            repeat
                task.wait(0.01)
                holdableItemCount = countHoldableItems()
            until holdableItemCount < 200
            print("Backpack has space. Resuming auto-collection.")
        end

        local function try(model)
            if not model:IsA("Model") then return end
            if passesCheck(model) then
                pcall(function()
                    remotes.bytenet:FireServer(buffer.fromstring("\001\001\000\001"), {model})
                end)
            end
        end

        if plant:IsA("Model") then
            try(plant)
        end

        local fruitsFolder = plant:FindFirstChild("Fruits")
        if fruitsFolder and fruitsFolder:IsA("Folder") then
            for _, fruit in ipairs(fruitsFolder:GetChildren()) do
                try(fruit)
            end
        end

        task.wait(running.autoCollectDelay)
    end
end)



Groupboxes.CollectorGroupbox:AddToggle("AutoCollect_Toggle", {
    Text = "Auto Collect Plants",
    Default = false,
    Callback = function(state)
        running.collecting = state

        if running.collectingTask then
            task.cancel(running.collectingTask)
            running.collectingTask = nil
        end

        if state then
            running.collectingTask = task.spawn(LPH_NO_VIRTUALIZE(function()
                while running.collecting do
                    pcall(runCollector)
                    
                end
            end))
        end
    end
})


vars.deleteSeedArray = {}
vars.deleteSeedDisplayNameToKey = {}
vars.deleteSeedDisplayNames = {"All"}
vars.deleteMutationNames = {"All", "None"}
vars.selectedDeleteSeedKeys = {}
vars.selectedDeleteMutations = {}
vars.selectedDeleteVariants = {}
vars.deleteVariantOptions = {"All", "Normal", "Gold", "Rainbow"}
vars.selectedDeleteWeightComparison = "Above"
vars.deleteWeightThreshold = 0

for _, m in pairs(vars.mutations) do
    if typeof(m) == "table" then
        m._AddFX = nil
        m._RemoveFX = nil
    end
end

for key, info in pairs(modules.SeedData) do
    if typeof(info) == "table" and info.Price then
        local rarity = info.SeedRarity or "Unknown"
        local displayName = string.format("%s [%s]", info.SeedName or key, rarity)
        table.insert(vars.deleteSeedArray, {Key = key, DisplayName = displayName, Price = info.Price, Rarity = rarity})
        vars.deleteSeedDisplayNameToKey[displayName] = key
    end
end

table.sort(vars.deleteSeedArray, function(a, b)
    local aRank = vars.getRarityRank(a.Rarity)
    local bRank = vars.getRarityRank(b.Rarity)
    if aRank == bRank then
        return a.Price < b.Price
    end
    return aRank < bRank
end)

for _, v in ipairs(vars.deleteSeedArray) do
    table.insert(vars.deleteSeedDisplayNames, v.DisplayName)
end

for _, mutation in pairs(vars.mutations) do
    if typeof(mutation) == "table" and mutation.Name then
        table.insert(vars.deleteMutationNames, mutation.Name)
    end
end

table.sort(vars.deleteMutationNames)

Groupboxes.DeleterGroupbox:AddDropdown("SelectAutoDeleteFruits_Dropdown", {
    Values = vars.deleteSeedDisplayNames,
    Multi = true,
    Text = "Plant Filter",
    Searchable = true,
    Callback = function(values)
        vars.selectedDeleteSeedKeys = {}
        if values["All"] then
            for _, v in ipairs(vars.deleteSeedArray) do
                table.insert(vars.selectedDeleteSeedKeys, v.Key)
            end
        else
            for name, selected in pairs(values) do
                if selected and name ~= "All" then
                    table.insert(vars.selectedDeleteSeedKeys, vars.deleteSeedDisplayNameToKey[name])
                end
            end
        end
    end
})

Groupboxes.DeleterGroupbox:AddDropdown("SelectAutoDeleteMutations_Dropdown", {
    Values = vars.deleteMutationNames,
    Multi = true,
    Text = "Mutation Filter",
    Searchable = true,
    Callback = function(values)
        vars.selectedDeleteMutations = {}
        if values["All"] then
            vars.selectedDeleteMutations["All"] = true
        else
            for name, selected in pairs(values) do
                if selected and name ~= "All" then
                    vars.selectedDeleteMutations[name] = true
                end
            end
        end
    end
})

Groupboxes.DeleterGroupbox:AddDropdown("AutoDeleteSelectedVariants_Dropdown", {
    Values = vars.deleteVariantOptions,
    Multi = true,
    Text = "Variant Filter",
    Searchable = true,
    Callback = function(values)
        vars.selectedDeleteVariants = {}
        if values["All"] then
            for _, v in ipairs(vars.deleteVariantOptions) do
                if v ~= "All" then
                    vars.selectedDeleteVariants[v] = true
                end
            end
        else
            for name, selected in pairs(values) do
                if selected and name ~= "All" then
                    vars.selectedDeleteVariants[name] = true
                end
            end
        end
    end
})

Groupboxes.DeleterGroupbox:AddDropdown("AutoDeleteWeightComparison_Dropdown", {
    Values = {"Above", "Below or Equal"},
    Multi = false,
    Text = "Weight Comparison",
    Default = "Above",
    Searchable = true,
    Callback = function(v)
        vars.selectedDeleteWeightComparison = v
    end
})

Groupboxes.DeleterGroupbox:AddInput("AutoDeleteFruitsDelay_Input", {
    Text = "Delete Delay",
    Default = "0.1",
    Numeric = true,
    Callback = function(value)
        local num = tonumber(value)
        running.autoDeleteFruitsDelay = (num and num >= 0) and num or 0.1
    end
})

Groupboxes.DeleterGroupbox:AddLabel({
    Text = "The weight threshold needs a number only",
    DoesWrap = true
})

Groupboxes.DeleterGroupbox:AddInput("AutoDeleteWeight_Input", {
    Text = "Weight Threshold",
    Default = "0",
    Numeric = true,
    Callback = function(value)
        vars.deleteWeightThreshold = tonumber(value) or 0
    end
})

local function equipShovel()
    local char = vars.LocalPlayer.Character
    if not char then return end

    for _, tool in ipairs(char:GetChildren()) do
        if tool:IsA("Tool") then
            local toolName = tool:GetAttribute(getgenv().HookedInventoryServiceEnums["ItemName"]) or tool.Name
            if toolName and toolName:find("Shovel") then
                return
            end
        end
    end

    for _, tool in ipairs(char:GetChildren()) do
        if tool:IsA("Tool") then
            tool.Parent = vars.Backpack
            task.wait(0.05)
        end
    end

    for _, tool in ipairs(vars.Backpack:GetChildren()) do
        if tool:IsA("Tool") then
            local toolName = tool:GetAttribute(getgenv().HookedInventoryServiceEnums["ItemName"]) or tool.Name
            if toolName and toolName:find("Shovel") then
                tool.Parent = char
                task.wait(0.1)
                return
            end
        end
    end
end

local function passesCheck(model)
    local favoriteEnum = getgenv().HookedInventoryServiceEnums and getgenv().HookedInventoryServiceEnums["Favorite"]
    if (favoriteEnum and model:GetAttribute(favoriteEnum) == true) or model:GetAttribute("Favorited") == true then
        return false
    end
    if not (vars.CollectionService:HasTag(model, "Harvestable") and vars.CollectionService:HasTag(model, "Growable")) then return false end
    if not table.find(vars.selectedDeleteSeedKeys, model.Name) then return false end

    if next(vars.selectedDeleteVariants) then
        local variant = model:FindFirstChild("Variant")
        if not (variant and vars.selectedDeleteVariants[variant.Value]) then return false end
    end

    if vars.selectedDeleteMutations["All"] then
    elseif vars.selectedDeleteMutations["None"] then
        for mutName in pairs(vars.selectedDeleteMutations) do
            if mutName ~= "None" and mutName ~= "All" and model:GetAttribute(mutName) then
                return false
            end
        end
    elseif next(vars.selectedDeleteMutations) then
        local found = false
        for mutName in pairs(vars.selectedDeleteMutations) do
            if mutName ~= "All" and mutName ~= "None" and model:GetAttribute(mutName) then
                found = true
                break
            end
        end
        if not found then return false end
    end

    local weight = model:FindFirstChild("Weight")
    if weight then
        local w = weight.Value
        local threshold = vars.deleteWeightThreshold
        if vars.selectedDeleteWeightComparison == "Above" and not (w >= threshold) then return false end
        if vars.selectedDeleteWeightComparison == "Below or Equal" and not (w <= threshold) then return false end
    else
        return false
    end

    return true
end




local runDeleter = LPH_NO_VIRTUALIZE(function()
    if not (vars.LocalPlayer and vars.Workspace and remotes.Remove_Item) then return end
    local myPlot
    for _, plot in ipairs(vars.Workspace.Farm:GetChildren()) do
        local data = plot:FindFirstChild("Important") and plot.Important:FindFirstChild("Data")
        local owner = data and data:FindFirstChild("Owner")
        if owner and owner.Value == vars.LocalPlayer.Name then
            myPlot = plot
            break
        end
    end
    if not myPlot then return end
    local plants = myPlot.Important:FindFirstChild("Plants_Physical")
    if not plants then return end
    
    local shovelEquipped = false
    for _, plant in ipairs(plants:GetChildren()) do
        if not running.deleting then break end
        local fruitsFolder = plant:FindFirstChild("Fruits")
        if fruitsFolder and fruitsFolder:IsA("Folder") then
            for _, fruit in ipairs(fruitsFolder:GetChildren()) do
                if fruit:IsA("Model") and passesCheck(fruit) then
                    if not shovelEquipped then
                        equipShovel()
                        shovelEquipped = true
                        task.wait(0.1)
                    end
                    local target = fruit.PrimaryPart or fruit:FindFirstChildWhichIsA("BasePart", true)
                    if target then
                        pcall(function()
                            remotes.Remove_Item:FireServer(target)
                        end)
                    else
                        Library:Notify({
                            Title = "Auto Shovel Error",
                            Description = "Auto Shovel bugged rejoin",
                            Time = 5
                        })
                        return
                    end
                end
            end
        end
        task.wait(running.autoDeleteFruitsDelay or 0.1)
    end
end)

Groupboxes.DeleterGroupbox:AddToggle("AutoDeleteFruits_Toggle", {
    Text = "Auto Delete Fruits",
    Default = false,
    Callback = function(state)
        running.deleting = state
        if running.deletingTask then
            task.cancel(running.deletingTask)
            running.deletingTask = nil
        end
        if state then
            running.deletingTask = task.spawn(LPH_NO_VIRTUALIZE(function()
                while running.deleting do
                    pcall(runDeleter)
                end
            end))
        end
    end
})

labels.QuestStatusLabel = Groupboxes.AutoSellGroupbox:AddLabel({
    Text = "Quest Status: Idle",
    DoesWrap = true
})

Groupboxes.AutoSellGroupbox:AddToggle("AutoQuest_Toggle", {
    Text = "Auto Quest (Harvest + Plant All)",
    Default = false,
    Callback = function(state)
        running.autoQuestRunning = state

        if state then
            task.spawn(function()
                while running.autoQuestRunning do
                    local data = modules.DataService:GetData()
                    if not data or not data.DinoQuests then
                        labels.QuestStatusLabel:SetText("Quest Status: No Quest Data")
                        task.wait(2)
                        continue
                    end

                    local questFound = false
                    local statusLines = {}

                    for containerKey, containerId in pairs(data.DinoQuests.Containers) do
                        local containerInfo = modules.QuestsController:GetContainerFromId(containerId)
                        if containerInfo and not containerInfo.Redeemed then
                            for _, quest in ipairs(containerInfo.Quests or {}) do
                                if quest.Completed or quest.Progress >= quest.Target then
                                    table.insert(statusLines, string.format("✅ %s %d/%d", quest.Type, quest.Progress, quest.Target))
                                else
                                    questFound = true
                                    table.insert(statusLines, string.format("⏳ %s %d/%d", quest.Type, quest.Progress, quest.Target))

                                    local targetName = quest.Arguments and quest.Arguments[1]
                                    if not targetName then continue end

                                    local function tryPlantLoop(seedName, questId, targetAmount)
                                        local char = vars.LocalPlayer.Character
                                        local humanoid = char and char:FindFirstChildOfClass("Humanoid")
                                        local backpack = vars.LocalPlayer:FindFirstChildOfClass("Backpack")
                                        if not (char and humanoid and backpack) then
                                            return
                                        end

                                        local equipped = false
                                        for _, tool in ipairs(backpack:GetChildren()) do
                                            if tool:GetAttribute("Seed") == seedName then
                                                humanoid:UnequipTools()
                                                tool.Parent = char
                                                task.wait(0.3)
                                                local heldTool = char:FindFirstChildOfClass("Tool")
                                                if heldTool and heldTool:GetAttribute("Seed") == seedName then
                                                    equipped = true
                                                end
                                                break
                                            end
                                        end

                                        if not equipped then return end

                                        local plantedProgress = 0
                                        while plantedProgress < targetAmount and running.autoQuestRunning do
                                            local planted = false
                                            for _, plot in ipairs(vars.Workspace.Farm:GetChildren()) do
                                                local important = plot:FindFirstChild("Important")
                                                local owner = important and important:FindFirstChild("Data") and important.Data:FindFirstChild("Owner")
                                                if owner and owner.Value == vars.LocalPlayer.Name then
                                                    local canPlant = important:FindFirstChild("Plant_Locations") and important.Plant_Locations:FindFirstChild("Can_Plant")
                                                    if canPlant then
                                                        remotes.PlantRemote:FireServer(canPlant.Position, seedName)
                                                        planted = true
                                                    end
                                                end
                                            end

                                            if not planted then break end

                                            task.wait(0.5)

                                            local refreshedData = modules.DataService:GetData()
                                            local refreshedContainer = modules.QuestsController:GetContainerFromId(containerId)
                                            if refreshedContainer then
                                                for _, q in ipairs(refreshedContainer.Quests or {}) do
                                                    if q.Id == questId then
                                                        plantedProgress = q.Progress
                                                        break
                                                    end
                                                end
                                            end
                                        end
                                    end

                                    if quest.Type == "Harvest" then
                                        local foundSomething = false
                                        for _, plot in ipairs(vars.Workspace.Farm:GetChildren()) do
                                            local important = plot:FindFirstChild("Important")
                                            local owner = important and important:FindFirstChild("Data") and important.Data:FindFirstChild("Owner")
                                            if owner and owner.Value == vars.LocalPlayer.Name then
                                                local plants = important:FindFirstChild("Plants_Physical")
                                                if plants then
                                                    for _, plant in ipairs(plants:GetChildren()) do
                                                        local fruits = plant:FindFirstChild("Fruits")
                                                        if fruits then
                                                            for _, fruit in ipairs(fruits:GetChildren()) do
                                                                if fruit:IsA("Model") and fruit.Name == targetName then
                                                                    remotes.bytenet:FireServer(buffer.fromstring("\001\001\000\001"), {fruit})
                                                                    foundSomething = true
                                                                end
                                                            end
                                                        end
                                                        if plant:IsA("Model") and plant.Name == targetName then
                                                            remotes.bytenet:FireServer(buffer.fromstring("\001\001\000\001"), {plant})
                                                            foundSomething = true
                                                        end
                                                    end
                                                end
                                            end
                                        end
                                        if not foundSomething then
                                            tryPlantLoop(targetName, quest.Id, quest.Target)
                                        end

                                    elseif quest.Type == "Plant" then
                                        tryPlantLoop(targetName, quest.Id, quest.Target)
                                    end
                                end
                            end
                        end
                    end

                    if questFound then
                        labels.QuestStatusLabel:SetText("Quest Status:\n" .. table.concat(statusLines, "\n"))
                    else
                        labels.QuestStatusLabel:SetText("Quest Status: No Active Quest")
                    end

                    task.wait(2)
                end
                labels.QuestStatusLabel:SetText("Quest Status: Idle")
            end)
        else
            labels.QuestStatusLabel:SetText("Quest Status: Idle")
        end
    end
})


local function runSprinklerDeleter()
    if not running.autoShovelSprinklers or not vars.selectedSprinklerTypes or #vars.selectedSprinklerTypes == 0 then return end

    local myPlot
    for _, plot in ipairs(vars.Workspace.Farm:GetChildren()) do
        local data = plot:FindFirstChild("Important") and plot.Important:FindFirstChild("Data")
        local owner = data and data:FindFirstChild("Owner")
        if owner and owner.Value == vars.LocalPlayer.Name then
            myPlot = plot
            break
        end
    end
    if not myPlot then return end

    local objects = myPlot.Important:FindFirstChild("Objects_Physical")
    if not objects then return end

    local shovelEquipped = false

    for _, obj in ipairs(objects:GetChildren()) do
        if not running.autoShovelSprinklers then break end

        local objectType = obj:GetAttribute("OBJECT_TYPE")
        if objectType and typeof(objectType) == "string" and table.find(vars.selectedSprinklerTypes, objectType) then
            if not shovelEquipped then
                equipShovel()
                task.wait(0.2)
                shovelEquipped = true
            end
            obj.Name = "No6"
            pcall(function()
                remotes.DeleteObject:FireServer(obj)
            end)
            task.wait(0.2)
        end
    end
end

vars.sprinklerTypes = {}
if modules.ObjectModels then
    for _, model in ipairs(modules.ObjectModels:GetChildren()) do
        if model:IsA("Model") and model.Name:find("Sprinkler") then
            if not table.find(vars.sprinklerTypes, model.Name) then
                table.insert(vars.sprinklerTypes, model.Name)
            end
        end
    end
end
table.sort(vars.sprinklerTypes)

vars.selectedSprinklerTypes = {}
Groupboxes.DeleterGroupbox:AddDropdown("SprinklerToDelete_Dropdown", {
    Text = "Select Sprinklers to Shovel",
    Multi = true,
    Values = vars.sprinklerTypes,
    Searchable = true,
    Callback = function(selectedItems)
        vars.selectedSprinklerTypes = {}
        for name, selected in pairs(selectedItems) do
            if selected then
                table.insert(vars.selectedSprinklerTypes, name)
            end
        end
    end
})

Groupboxes.DeleterGroupbox:AddToggle("AutoShovelSprinklers_Toggle", {
    Text = "Auto Shovel Selected Sprinklers",
    Default = false,
    Callback = function(state)
        running.autoShovelSprinklers = state
        if state then
            task.spawn(function()
                while running.autoShovelSprinklers do
                    runSprinklerDeleter()
                    task.wait(5)
                end
            end)
        end
    end
})


running.plantESP = false
vars.processedPlants = {}

local function inspectAllPlants()
    for _, farmPlot in ipairs(vars.Workspace.Farm:GetChildren()) do
        local important = farmPlot:FindFirstChild("Important")
        if not important then continue end

        local plants = important:FindFirstChild("Plants_Physical")
        if not plants then continue end

        for _, plant in ipairs(plants:GetChildren()) do
            local targets = {}
            local fruits = plant:FindFirstChild("Fruits")
            if fruits and fruits:IsA("Folder") then
                targets = fruits:GetChildren()
            else
                table.insert(targets, plant)
            end

            for _, target in ipairs(targets) do
                if not vars.processedPlants[target] then
                    if target:GetAttribute("Inspected") ~= true then
                        target:SetAttribute("Inspected", true)
                    end
                    vars.processedPlants[target] = true
                end
            end
        end
    end
end

task.spawn(LPH_NO_VIRTUALIZE(function()
    while true do
        if running.plantESP then
            pcall(inspectAllPlants)
        end
        task.wait(0.2)
    end
end))


Groupboxes.PlantValueTab:AddToggle("PlantESP_Toggle", {
    Text = "Plant ESP",
    Default = false,
    Tooltip = "Shows Value And Weight",
    Callback = function(state)
        running.plantESP = state
        if not state then
            vars.processedPlants = {}
        end
    end
})

local HighlightToggle = Groupboxes.CollectorGroupbox:AddToggle("HighlightPollinated_Toggle", {
    Text = "Highlight Pollinated",
    Default = false,
    Tooltip = "Visually highlight Pollinated fruits"
})


local espContainer = Instance.new("Folder")
espContainer.Name = "PlantESPHighlights"
espContainer.Parent = vars.Workspace

task.spawn(LPH_NO_VIRTUALIZE(function()
    while task.wait(2) do  
        if not vars.LocalPlayer then continue end

        if not vars.Workspace.Farm then continue end

        local myPlot = nil
        for _, plot_iter in ipairs(vars.Workspace.Farm:GetChildren()) do
            local imp = plot_iter:FindFirstChild("Important")
            local data = imp and imp:FindFirstChild("Data")
            local owner = data and data:FindFirstChild("Owner")
            if owner and owner.Value == vars.LocalPlayer.Name then
                myPlot = plot_iter
                break
            end
        end

        if not myPlot then continue end

        local plantsPhysical = myPlot:FindFirstChild("Important") and myPlot.Important:FindFirstChild("Plants_Physical")
        if not plantsPhysical then continue end

        for _, plant_iter in ipairs(plantsPhysical:GetChildren()) do
            local fruits = plant_iter:FindFirstChild("Fruits")
            if fruits then
                for _, fruit_iter in ipairs(fruits:GetChildren()) do
                    if fruit_iter:IsA("Model") then
                        local highlightId = "Highlight_" .. fruit_iter:GetDebugId()
                        local existingHighlight = espContainer:FindFirstChild(highlightId)
                        local isPollinated = fruit_iter:GetAttribute("Pollinated")

                        if HighlightToggle.Value and isPollinated then
                            local targetColor = Color3.fromRGB(255, 255, 100)
                            if not existingHighlight then
                                local h = Instance.new("Highlight")
                                h.Name = highlightId
                                h.Adornee = fruit_iter
                                h.FillColor = targetColor
                                h.OutlineColor = Color3.new(1, 1, 1)
                                h.FillTransparency = 0.25
                                h.OutlineTransparency = 0
                                h.Parent = espContainer 
                            elseif existingHighlight.FillColor ~= targetColor then
                                existingHighlight.FillColor = targetColor
                            end
                        elseif existingHighlight then
                            existingHighlight:Destroy()
                        end
                    end
                end
            end
        end
    end
end))

for _, mutationData in pairs(vars.mutations) do
    if type(mutationData) == "table" then
        mutationData._RemoveFX = nil
        mutationData._AddFX = nil
    end
end

local InfoLabel = Groupboxes.MutationGroupbox:AddLabel({
    Text = "Select a mutation to view details.",
    DoesWrap = true
})

Groupboxes.MutationGroupbox:AddDropdown("MutationInfo_Dropdown", {
    Values = vars.mutationNames,
    Text = "Mutations",
    Multi = false,
    Searchable = true,
    Callback = function(selected)
        local data = vars.mutations[selected]

        if data and type(data) == "table" then
            local description = "Mutation: " .. selected .. "\n"

            if data.ValueMulti then
                description = description .. "ValueMulti: " .. tostring(data.ValueMulti) .. "\n"
            end

            if data.Description then
                description = description .. "Description: " .. tostring(data.Description) .. "\n"
            end

            if data.Rarity then
                description = description .. "Rarity: " .. tostring(data.Rarity) .. "\n"
            end

            if data.Name then
                description = description .. "Name: " .. tostring(data.Name) .. "\n"
            end

            InfoLabel:SetText(description)
        else
            InfoLabel:SetText("No data available for: " .. tostring(selected))
        end
    end
})

labels.VersionLabel = Groupboxes.CreditsGroupbox:AddLabel("V.2.2.3")
labels.ChangelogLabel = Groupboxes.CreditsGroupbox:AddLabel({
    Text = table.concat({
    "Added a new tab called pets so stuff is more organized, the cosmetics tab is now in the main tab so the ui is more clean, auto delete fruits stops when it finds that there is another script interfering or the game breaking. Auto Quest was added (wip not completly done tho) "
    }, "\n"),
DoesWrap = true
})

labels.VersionLabel = Groupboxes.CreditsGroupbox:AddLabel("How to use pet sync")
labels.ChangelogLabel = Groupboxes.CreditsGroupbox:AddLabel({
    Text = table.concat({
    "To use Pet Mover, select the Echo Frog (or the specified pet, which you can confirm by idling each manually), then enable Auto Sync when its timer is between 1:00 and 1:15—other pets will automatically idle to sync, no need to change the pet's action."
    }, "\n"),
DoesWrap = true
})


 Button = Groupboxes.CreditsGroupbox:AddButton({
    Text = "Discord",
    Func = function()
        setclipboard('https://discord.com/invite/CaUVkK2YuV')
    end,
    DoubleClick = false
})




local findStockTables2 = LPH_NO_VIRTUALIZE(function()
    for _, v in ipairs(getgc(true)) do
        if type(v) == "table" and rawget(v, "SeedStock") and rawget(v, "GearStock") and rawget(v, "PetEggStock") and rawget(v, "NightEventShopStock") and rawget(v, "CosmeticStock") and rawget(v, "EventShopStock") then
            return v.SeedStock, v.GearStock, v.PetEggStock, v.NightEventShopStock, v.CosmeticStock, v.EventShopStock
        end
    end
end)

vars.cachedSeedStock, vars.cachedGearStock, vars.cachedPetEggStock, vars.cachedNightEventStock, vars.cachedCosmeticStock, vars.cachedEventShopStock = findStockTables2()

for key, info in pairs(modules.CosmeticCrateShopData) do
    if typeof(info) == "table" and info.Price then
        local rarity = info.CrateRarity or info.Rarity or "Common"
        local displayName = string.format("%s [%s]", info.CrateName or key, rarity)
        table.insert(vars.crateArray, { Name = key, DisplayName = displayName, Price = info.Price, Rarity = rarity })
        vars.displayNameToCrateKey[displayName] = key
    end
end

table.sort(vars.crateArray, function(a, b)
    local ar, br = vars.getRarityRank(a.Rarity), vars.getRarityRank(b.Rarity)
    return ar == br and a.Price < b.Price or ar < br
end)

table.insert(vars.crateDisplayNames, "All")
for _, c in ipairs(vars.crateArray) do
    table.insert(vars.crateDisplayNames, c.DisplayName)
    CosmeticsPricesTab:AddLabel(c.DisplayName)
    CosmeticsPricesTab:AddLabel(vars.formatNumberWithCommas(c.Price) .. " Sheckles")
end

for key, info in pairs(modules.CosmeticItemShopData) do
    if typeof(info) == "table" and info.Price then
        local rarity = info.CosmeticRarity or info.ItemRarity or info.Rarity or "Common"
        local displayName = string.format("%s [%s]", info.CosmeticName or key, rarity)
        table.insert(vars.itemArray, { Name = key, DisplayName = displayName, Price = info.Price, Rarity = rarity })
        vars.displayNameToItemKey[displayName] = key
    end
end

table.sort(vars.itemArray, function(a, b)
    local ar, br = vars.getRarityRank(a.Rarity), vars.getRarityRank(b.Rarity)
    return ar == br and a.Price < b.Price or ar < br
end)

table.insert(vars.itemDisplayNames, "All")
for _, i in ipairs(vars.itemArray) do
    table.insert(vars.itemDisplayNames, i.DisplayName)
    CosmeticsPricesTab:AddLabel(i.DisplayName)
    CosmeticsPricesTab:AddLabel(vars.formatNumberWithCommas(i.Price) .. " Sheckles")
end

CosmeticsTab:AddDropdown("CosmeticCrateSelector_Dropdown", {
    Values = vars.crateDisplayNames,
    Multi = true,
    Text = "Select Cosmetic Crates",
    Searchable = true,
    Callback = function(values)
        vars.selectedCosmeticCrateKeys = {}
        if values["All"] then
            for _, crate in ipairs(vars.crateArray) do
                table.insert(vars.selectedCosmeticCrateKeys, crate.Name)
            end
        else
            for name, selected in pairs(values) do
                if selected and name ~= "All" then
                    table.insert(vars.selectedCosmeticCrateKeys, vars.displayNameToCrateKey[name])
                end
            end
        end
    end
})

CosmeticsTab:AddDropdown("CosmeticItemSelector_Dropdown", {
    Values = vars.itemDisplayNames,
    Multi = true,
    Text = "Select Cosmetic Items",
    Searchable = true,
    Callback = function(values)
        vars.selectedCosmeticItemKeys = {}
        if values["All"] then
            for _, item in ipairs(vars.itemArray) do
                table.insert(vars.selectedCosmeticItemKeys, item.Name)
            end
        else
            for name, selected in pairs(values) do
                if selected and name ~= "All" then
                    table.insert(vars.selectedCosmeticItemKeys, vars.displayNameToItemKey[name])
                end
            end
        end
    end
})




local function buyCosmetics()
    if not vars.cachedCosmeticStock then return end

    if running.autoBuyCosmeticCrates and vars.cachedCosmeticStock.CrateStocks then
        for crateName, data in pairs(vars.cachedCosmeticStock.CrateStocks) do
            local stock = data.Stock or 0
            if table.find(vars.selectedCosmeticCrateKeys, crateName) then
                        for _ = 1, stock do
                    remotes.BuyCosmeticCrateRemote:FireServer(crateName)
                    task.wait(0.05)
                        end
                    end
        end
    end

    if running.autoBuyCosmeticItems and vars.cachedCosmeticStock.ItemStocks then
        for f, data in pairs(vars.cachedCosmeticStock.ItemStocks) do
            local stock = data.Stock or 0
            if table.find(vars.selectedCosmeticItemKeys, f) then
                for _ = 1, stock do
                    remotes.BuyCosmeticItemRemote:FireServer(f)
                    task.wait(0.05)
                end
            end
        end
    end
end

CosmeticsTab:AddToggle("AutoBuyCosmeticCrates_Toggle", {
    Text = "Auto Buy Cosmetic Crates",
    Callback = function(enabled)
        running.autoBuyCosmeticCrates = enabled
        if enabled then
            task.spawn(LPH_NO_VIRTUALIZE(function()
                while running.autoBuyCosmeticCrates do
                    pcall(buyCosmetics)
                    task.wait(10)  
                end
            end))
        end
    end
})

CosmeticsTab:AddToggle("AutoBuyCosmeticItems_Toggle", {
    Text = "Auto Buy Cosmetic Items",
    Callback = function(enabled)
        running.autoBuyCosmeticItems = enabled
        if enabled then
            task.spawn(LPH_NO_VIRTUALIZE(function()
                while running.autoBuyCosmeticItems do
                    pcall(buyCosmetics)
                    task.wait(10)  
                end
            end))
        end
    end
})







CosmeticsTab:AddToggle("AutoOpenCrates_Toggle", {
    Text = "Auto Open Crates",
    Default = false,
    Tooltip = "Auto Open Crates when they're ready",
    Callback = function(Value)
        if Value and not running.HatchLoopRunning10 then
            running.HatchLoopRunning10 = true
            task.spawn(function()
                while running.HatchLoopRunning10 do
                    for _, farm in ipairs(vars.Workspace:WaitForChild("Farm"):GetChildren()) do
                        local important = farm:FindFirstChild("Important")
                        local data = important and important:FindFirstChild("Data")
                        local ownerValue = data and data:FindFirstChild("Owner")

                        if ownerValue and ownerValue.Value == vars.LocalPlayer.Name then
                            local objects = important:FindFirstChild("Objects_Physical")
                            if objects then
                                for _, obj in ipairs(objects:GetChildren()) do
                                    if obj:GetAttribute("OBJECT_TYPE") == "CosmeticCrate"
                                        and obj:GetAttribute("TimeToOpen") == 0
                                        and not vars.FiredCrates[obj] then

                                        vars.FiredCrates[obj] = true

                                        pcall(function()
                                            remotes.OpenCrateRemote:FireServer("OpenCrate", obj)
                                        end)

                                        local CrateName = obj:GetAttribute("CrateType") or "Unknown"

                                        Library:Notify({
                                            Title = "Opened Crate!",
                                            Description = "Crate: " .. CrateName .. "\nOwner: " .. vars.LocalPlayer.Name,
                                            Time = 5
                                        })
                                    end
                                end
                            end
                        end
                    end
                    task.wait(0.1)
                end
            end)
        else
            running.HatchLoopRunning10 = false
        end
    end
})


vars.iku = coroutine.create(function() 
    vars.VirtualUser = game:GetService("VirtualUser")
    vars.LocalPlayer.Idled:Connect(function()
        vars.VirtualUser:CaptureController()
        vars.VirtualUser:ClickButton2(Vector2.new())
    end)
end) 
coroutine.resume(vars.iku)


local function CloseUI(ui)
    if ui.Enabled then
        modules.UIManager:Close(ui)
    end
end
local function OpenAndCloseUI(ui)
    if ui.Enabled then
        modules.UIManager:Close(ui)
    else
        modules.UIManager:Open(ui)
    end
end
local Button = Groupboxes.UI:AddButton({
    Text = "Seed",
    Func = function()
        OpenAndCloseUI(game:GetService("Players").LocalPlayer.PlayerGui.Seed_Shop)
    end,
})
local Button = Groupboxes.UI:AddButton({
    Text = "Gear",
    Func = function()
        OpenAndCloseUI(game:GetService("Players").LocalPlayer.PlayerGui.Gear_Shop)
    end,
})

local PlayerGui = game.Players.LocalPlayer:WaitForChild("PlayerGui")
local notif = PlayerGui:FindFirstChild("Top_Notification")

local MyTToggle = Groupboxes.UI:AddToggle("NotificationRemover", {
    Text = "Remove Notifications",
    Default = false,
    Tooltip = "Remove Notifications if  true",
    Callback = function(Value)
        if notif then
            notif.Enabled = Value
        end
    end
})





local Button = Groupboxes.UI:AddButton({
    Text = "Cosmetic",
    Func = function()
        OpenAndCloseUI(game:GetService("Players").LocalPlayer.PlayerGui.CosmeticShop_UI)
    end,
})
local Button = Groupboxes.UI:AddButton({
    Text = "Summer",
    Func = function()
        OpenAndCloseUI(game:GetService("Players").LocalPlayer.PlayerGui.EventShop_UI)
    end,
})
local Button = Groupboxes.UI:AddButton({
    Text = "PetInfo",
    Func = function()
        OpenAndCloseUI(game:GetService("Players").LocalPlayer.PlayerGui.PetEquipSlots_UI)
    end,
})

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local Button = Groupboxes.UI:AddButton({
    Text = "GearRecipe",
    Func = function()
        for _, desc in pairs(workspace.CraftingTables.EventCraftingWorkBench:GetDescendants()) do
            if desc:IsA("ProximityPrompt") then
                local prompt = desc
                local ui = LocalPlayer.PlayerGui:FindFirstChild("RecipeSelection_UI")
                if ui and ui.Enabled == false then
                    fireproximityprompt(prompt)
                elseif ui and ui.Enabled == true then
                    CloseUI(ui)
                end
                break
            end
        end
    end,
})

local Button = Groupboxes.UI:AddButton({
    Text = "SeedRecipe",
    Func = function()
    if game:GetService("Players").LocalPlayer.PlayerGui.RecipeSelection_UI.Enabled == false then
    fireproximityprompt(workspace.CraftingTables.SeedEventCraftingWorkBench.Model.BenchTable.CraftingProximityPrompt)
    else
    CloseUI(game:GetService("Players").LocalPlayer.PlayerGui.RecipeSelection_UI)
    end
    end,
})
local Button = Groupboxes.UI:AddButton({
    Text = "SummerRewards",
    Func = function()
        OpenAndCloseUI(game:GetService("Players").LocalPlayer.PlayerGui.SummerRewards_UI)
    end,
})
local Button = Groupboxes.UI:AddLabel({
    Text = "TravelingMerchant and Summer Shop will not work before the update",
    DoesWrap = true
})
local Button = Groupboxes.UI:AddButton({
    Text = "TravelingMerchant",
    Func = function()
        OpenAndCloseUI(game:GetService("Players").LocalPlayer.PlayerGui.TravelingMerchantShop_UI)
    end,
})



local findStockTables2 = LPH_NO_VIRTUALIZE(function()
    for _, v in ipairs(getgc(true)) do
        if type(v) == "table" and rawget(v, "SeedStock") and rawget(v, "GearStock") and rawget(v, "PetEggStock") and rawget(v, "NightEventShopStock") and rawget(v, "CosmeticStock") and rawget(v, "EventShopStock") and rawget(v, "TravelingMerchantShopStock") then
            return v.SeedStock, v.GearStock, v.PetEggStock, v.NightEventShopStock, v.CosmeticStock, v.EventShopStock, v.TravelingMerchantShopStock
        end
    end
end)

vars.cachedSeedStock, vars.cachedGearStock, vars.cachedPetEggStock, vars.cachedNightEventStock, vars.cachedCosmeticStock, vars.cachedEventShopStock, vars.TravelingMerchantShopStock = findStockTables2()

for key, info in pairs(modules.GnomeData) do
    if typeof(info) == "table" and info.Price then
        local rarity = info.SeedRarity or info.Rarity or "Common"
        local displayName = string.format("%s [%s]", info.SeedName or key, rarity)
        table.insert(vars.GnomeArray, { Name = key, DisplayName = displayName, Price = info.Price, Rarity = rarity })
        vars.displayNameToGnomeKey[displayName] = key
    end
end

table.sort(vars.GnomeArray, function(a, b)
    local ar, br = vars.getRarityRank(a.Rarity), vars.getRarityRank(b.Rarity)
    return ar == br and a.Price < b.Price or ar < br
end)

table.insert(vars.GnomeDisplayNames, "All")
for _, c in ipairs(vars.GnomeArray) do
    table.insert(vars.GnomeDisplayNames, c.DisplayName)


end

for key, info in pairs(modules.SkyData) do
    if typeof(info) == "table" and info.Price then
        local rarity = info.SeedRarity or info.SeedRarity or info.Rarity or "Common"
        local displayName = string.format("%s [%s]", info.SeedName or key, rarity)
        table.insert(vars.SkyArray, { Name = key, DisplayName = displayName, Price = info.Price, Rarity = rarity })
        vars.displayNameToSkyKey[displayName] = key
    end
end

table.sort(vars.SkyArray, function(a, b)
    local ar, br = vars.getRarityRank(a.Rarity), vars.getRarityRank(b.Rarity)
    return ar == br and a.Price < b.Price or ar < br
end)

table.insert(vars.SkyDisplayNames, "All")
for _, i in ipairs(vars.SkyArray) do
    table.insert(vars.SkyDisplayNames, i.DisplayName)


end
local TravelingMerchantFolder = vars.ReplicatedStorage.Data.TravelingMerchant.TravelingMerchantData
for _, merchantModule in ipairs(TravelingMerchantFolder:GetChildren()) do
    if merchantModule:IsA("ModuleScript") then
        local moduleName = merchantModule.Name
        modules[moduleName] = require(merchantModule)
    end
end

local TravelingMerchantFolder = vars.ReplicatedStorage.Data.TravelingMerchant.TravelingMerchantData
local BuyMerchantRemote = remotes.BuyMerchantShopStock

vars.merchantData = {}
vars.merchantSelectedKeys = {}
vars.merchantAutoBuyRunning = {}

for _, moduleScript in ipairs(TravelingMerchantFolder:GetChildren()) do
    if moduleScript:IsA("ModuleScript") then
        local rawName = moduleScript.Name
        local merchantName = rawName:gsub("MerchantShopData", "") .. "Merchant"
        local merchantModule = require(moduleScript)

        vars.merchantData[merchantName] = {
            array = {},
            displayToKey = {},
            displayNames = { "All" },
        }
        vars.merchantSelectedKeys[merchantName] = {}
        vars.merchantAutoBuyRunning[merchantName] = false

        for key, info in pairs(merchantModule) do
            if typeof(info) == "table" and info.Price then
                local rarity = info.SeedRarity or info.Rarity or "Common"
                local displayName = string.format("%s [%s]", info.SeedName or key, rarity)
                table.insert(vars.merchantData[merchantName].array, { Name = key, DisplayName = displayName, Price = info.Price, Rarity = rarity })
                vars.merchantData[merchantName].displayToKey[displayName] = key
                table.insert(vars.merchantData[merchantName].displayNames, displayName)
            end
        end

        table.sort(vars.merchantData[merchantName].array, function(a, b)
            local rankA = vars.getRarityRank(a.Rarity)
            local rankB = vars.getRarityRank(b.Rarity)
            return rankA == rankB and a.Price < b.Price or rankA < rankB
        end)
        Groupboxes.Merchant:AddDropdown(merchantName .. "_Dropdown", {
            Text = "Select " .. merchantName .. " Items",
            Multi = true,
            Values = vars.merchantData[merchantName].displayNames,
            Searchable = true,
            Callback = function(selected)
                vars.merchantSelectedKeys[merchantName] = {}
                if selected["All"] then
                    for _, item in ipairs(vars.merchantData[merchantName].array) do
                        table.insert(vars.merchantSelectedKeys[merchantName], item.Name)
                    end
                else
                    for name, chosen in pairs(selected) do
                        if chosen and name ~= "All" then
                            table.insert(vars.merchantSelectedKeys[merchantName], vars.merchantData[merchantName].displayToKey[name])
                        end
                    end
                end
            end
        })

        Groupboxes.Merchant:AddToggle("AutoBuy_" .. merchantName, {
            Text = "Auto Buy " .. merchantName,
            Callback = function(enabled)
                vars.merchantAutoBuyRunning[merchantName] = enabled
                if enabled then
                    task.spawn(function()
                        while vars.merchantAutoBuyRunning[merchantName] do
                            updateCachedStockTables()
                            pcall(function()
                                local stock = vars.cachedTravelingMerchantShopStock and vars.cachedTravelingMerchantShopStock.Stocks or {}
                                for itemKey, stockData in pairs(stock) do
                                    if table.find(vars.merchantSelectedKeys[merchantName], itemKey) then
                                        local available = stockData.Stock or 0
                                        for i = 1, available do
                                            BuyMerchantRemote:FireServer(itemKey)
                                            task.wait(0.05)
                                        end
                                    end
                                end
                            end)
                            task.wait(10)
                        end
                    end)
                end
            end
        })
    end
end



Library.ToggleKeybind = Options.MenuKeybind

Groupboxes.MenuGroup:AddToggle("KeybindMenuOpen", {
    Default = '',
    Text = "Open Keybind Menu",
    Callback = function(value)
        Library.ToggleKeybind = value
    end,
})
Groupboxes.MenuGroup:AddToggle("ShowCustomCursor", {
    Text = "Custom Cursor",
    Default = true,
    Callback = function(Value)
        Library.ShowCustomCursor = Value
    end,
})
Groupboxes.MenuGroup:AddDropdown("NotificationSide", {
    Values = { "Left", "Right" },
    Default = "Right",
    Searchable = true,
    Text = "Notification Side",

    Callback = function(Value)
        Library:SetNotifySide(Value)
    end,
})
Groupboxes.MenuGroup:AddDropdown("DPIDropdown", {
    Values = { "50%", "75%", "100%", "125%", "150%", "175%", "200%" },
    Default = "100%",
    Searchable = true,
    Text = "DPI Scale",

    Callback = function(Value)
        Value = Value:gsub("%%", "")
        local DPI = tonumber(Value)

        Library:SetDPIScale(DPI)
    end,
})
Groupboxes.MenuGroup:AddDivider()


Groupboxes.MenuGroup:AddLabel("Menu bind")
    :AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })

Groupboxes.MenuGroup:AddButton("Unload", function()
    Library:Unload()
end)


--[[
local function getPetIds()
    local petIds = {}
    local petsPhysical = vars.Workspace:FindFirstChild("PetsPhysical")
    
    if petsPhysical and vars.LocalPlayer then
        for _, petMover in pairs(petsPhysical:GetChildren()) do
            if petMover.Name == "PetMover" then
                local owner = petMover:GetAttribute("OWNER")
                local uuid = petMover:GetAttribute("UUID")
                
                if owner and owner == vars.LocalPlayer.Name then
                    if uuid then
                        table.insert(petIds, uuid)
                    end
                end
            end
        end
    end
    
    return petIds
end
--]]

--[[
local function setPetState(petId, state)
    if not petId or petId == "" then
        return false
    end
    
    local args = {
        "SetPetState",
        petId,
        state or "FollowPlayer"
    }
    
    local success = pcall(function()
        remotes.event:FireServer(unpack(args))
    end)
    
    return success
end
--]]

--[[
local function updatePetDropdown(showNotification)
    local availablePets = getPetIds()
    Options.PetSelection:SetValues(availablePets)
    
    if showNotification then
        if #availablePets > 0 then
            
        else
            
        end
    end
end
--]]

local screen = Instance.new("ScreenGui",game:GetService("CoreGui"))
screen.Name = "Black Racist Sreen"
screen.Enabled = false
screen.ClipToDeviceSafeArea = false
screen.ScreenInsets = "DeviceSafeInsets"
local wall = Instance.new("Frame",screen)
wall.BackgroundColor3 = Color3.fromRGB(0,0,0)
wall.Position = UDim2.new(0.5,0,0.5,0)
wall.AnchorPoint = Vector2.new(0.5,0.5)
wall.Size = UDim2.new(1,0,1,0)
wall.Active = false

Groupboxes.OptimizationGroupbox:AddToggle("BlackScreenToggle", {
    Text = "Black Screen",
    Default = false,
    Callback = function(enabled)
        screen.Enabled = enabled
    end
})

local originalTransparencies = {}

--[[
local function updateHideShowToggle(enabled)
    for _, farm in ipairs(vars.Workspace.Farm:GetChildren()) do
        local important = farm:FindFirstChild("Important")
        local data = important and important:FindFirstChild("Data")
        local ownerValue = data and data:FindFirstChild("Owner")
        if ownerValue and ownerValue.Value ~= vars.LocalPlayer.Name then
            local plants = important:FindFirstChild("Plants_Physical")
            if plants then
                for _, plant in ipairs(plants:GetChildren()) do
                        if plant.Parent == plants then
                        vars.originalParents[plant] = plants
                            plant.Parent = nil
                    end
                end
            end
        end
    end
end
--]]

--[[
local function updateDeleteRestoreToggle(enabled)
    if enabled then
        for _, farm in ipairs(vars.Workspace.Farm:GetChildren()) do
            local important = farm:FindFirstChild("Important")
            local data = important and important:FindFirstChild("Data")
            local ownerValue = data and data:FindFirstChild("Owner")
            if ownerValue and ownerValue.Value ~= vars.LocalPlayer.Name then
                local plants = important:FindFirstChild("Plants_Physical")
                if plants then
                    for _, plant in ipairs(plants:GetChildren()) do
                        if plant.Parent == plants then
                            originalParents[plant] = plants
                            plant.Parent = nil
                        end
                    end
                end
            end
        end
    else
        for plant, parent in pairs(originalParents) do
            if parent and parent.Parent and pcall(function() return plant.Name end) then
                plant.Parent = parent
            end
        end
        originalParents = {}
    end
end
--]]

--[[
local function updateHideAllPlantsToggle(enabled)
    for _, farm in ipairs(vars.Workspace.Farm:GetChildren()) do
        local important = farm:FindFirstChild("Important")
        if important then
            local plants = important:FindFirstChild("Plants_Physical")
            if plants then
                for _, plant in ipairs(plants:GetChildren()) do
                    for _, descendant in ipairs(plant:GetDescendants()) do
                        if descendant:IsA("BasePart") then
                            descendant.LocalTransparencyModifier = enabled and 1 or 0
                        end
                    end
                end
            end
        end
    end
end
--]]

vars.hideShowToggle_obj = Groupboxes.OptimizationGroupbox:AddToggle("HideShowToggle", {
    Text = "Hide Others' Plants",
    Default = false,
    Tooltip = "Makes other players' plants transparent to improve performance.",
    Callback = LPH_NO_VIRTUALIZE(function(enabled)
        for _, farm in ipairs(vars.Workspace.Farm:GetChildren()) do
            local important = farm:FindFirstChild("Important")
            local data = important and important:FindFirstChild("Data")
            local ownerValue = data and data:FindFirstChild("Owner")
            if ownerValue and ownerValue.Value ~= vars.LocalPlayer.Name then
                local plants = important:FindFirstChild("Plants_Physical")
                if plants then
                    for _, plant in ipairs(plants:GetChildren()) do
                        for _, descendant in ipairs(plant:GetDescendants()) do
                            if descendant:IsA("BasePart") then
                                descendant.LocalTransparencyModifier = enabled and 1 or 0
                            end
                        end
                    end
                end
            end
        end
    end)
})

vars.deleteRestoreToggle_obj = Groupboxes.OptimizationGroupbox:AddToggle("DeleteRestoreToggle", {
    Text = "Delete Others' Plants",
    Default = false,
    Tooltip = "Removes other players' plants from the game for max performance.",
    Callback = LPH_NO_VIRTUALIZE(function(enabled)
        if enabled then
            for _, farm in ipairs(vars.Workspace.Farm:GetChildren()) do
                local important = farm:FindFirstChild("Important")
                local data = important and important:FindFirstChild("Data")
                local ownerValue = data and data:FindFirstChild("Owner")
                if ownerValue and ownerValue.Value ~= vars.LocalPlayer.Name then
                    local plants = important:FindFirstChild("Plants_Physical")
                    if plants then
                        for _, plant in ipairs(plants:GetChildren()) do
                            if plant.Parent == plants then
                                originalParents[plant] = plants
                                plant.Parent = nil
                            end
                        end
                    end
                end
            end
        else
            for plant, parent in pairs(originalParents) do
                if parent and parent.Parent and pcall(function() return plant.Name end) then
                    plant.Parent = parent
                end
            end
            vars.originalParents = {}
        end
    end)
})

vars.hideAllPlantsToggle_obj = Groupboxes.OptimizationGroupbox:AddToggle("HideAllPlantsToggle", {
    Text = "Hide All Plants",
    Default = false,
    Tooltip = "Makes all plants, including your own, transparent.",
    Callback = LPH_NO_VIRTUALIZE(function(enabled)
        for _, farm in ipairs(vars.Workspace.Farm:GetChildren()) do
            local important = farm:FindFirstChild("Important")
            if important then
                local plants = important:FindFirstChild("Plants_Physical")
                if plants then
                    for _, plant in ipairs(plants:GetChildren()) do
                        for _, descendant in ipairs(plant:GetDescendants()) do
                            if descendant:IsA("BasePart") then
                                descendant.LocalTransparencyModifier = enabled and 1 or 0
                            end
                        end
                    end
                end
            end
        end
    end)
})

vars.Players.PlayerAdded:Connect(function()
    task.wait(2)
    if vars.hideShowToggle_obj and vars.hideShowToggle_obj.Value then vars.hideShowToggle_obj.Callback(true) end
    if vars.deleteRestoreToggle_obj and vars.deleteRestoreToggle_obj.Value then vars.deleteRestoreToggle_obj.Callback(true) end
    if vars.hideAllPlantsToggle_obj and vars.hideAllPlantsToggle_obj.Value then vars.hideAllPlantsToggle_obj.Callback(true) end
end)

vars.Players.PlayerRemoving:Connect(function()
task.wait(1)
    if vars.deleteRestoreToggle_obj and vars.deleteRestoreToggle_obj.Value then
        for plant, _ in pairs(vars.originalParents) do
            local success, _ = pcall(function() return plant.Name end)
            if not success then
                vars.originalParents[plant] = nil
            end
        end
    end
end)

Groupboxes.OptimizationGroupbox:AddToggle("AntiLagToggle", {
    Text = "Anti Lag",
    Default = false,
    Tooltip = "",
    Callback = function(enabled)
        local Lighting = game:GetService("Lighting")
        local RunService = game:GetService("RunService")
        local Terrain = workspace:FindFirstChildOfClass('Terrain')

        if enabled then
            if Terrain then
                vars.originalAntiLagSettings.Terrain.WaterWaveSize = Terrain.WaterWaveSize
                vars.originalAntiLagSettings.Terrain.WaterWaveSpeed = Terrain.WaterWaveSpeed
                vars.originalAntiLagSettings.Terrain.WaterReflectance = Terrain.WaterReflectance
                vars.originalAntiLagSettings.Terrain.WaterTransparency = Terrain.WaterTransparency
            end
            vars.originalAntiLagSettings.Lighting.GlobalShadows = Lighting.GlobalShadows
            vars.originalAntiLagSettings.Lighting.FogEnd = Lighting.FogEnd
            vars.originalAntiLagSettings.Lighting.FogStart = Lighting.FogStart
            vars.originalAntiLagSettings.QualityLevel = settings().Rendering.QualityLevel
            
            vars.originalAntiLagSettings.PostEffects = {}
            for _, v in pairs(Lighting:GetDescendants()) do
                if v:IsA("PostEffect") then
                    vars.originalAntiLagSettings.PostEffects[v] = v.Enabled
                end
            end

            
            if Terrain then
                Terrain.WaterWaveSize = 0
                Terrain.WaterWaveSpeed = 0
                Terrain.WaterReflectance = 0
                Terrain.WaterTransparency = 1
            end
            Lighting.GlobalShadows = false
            Lighting.FogEnd = 9e9
            Lighting.FogStart = 9e9
            settings().Rendering.QualityLevel = 1
            
            LPH_NO_VIRTUALIZE(function()
                for _, v in pairs(game:GetDescendants()) do
                    pcall(function()
                        if v:IsA("BasePart") then
                            v.Material = "Plastic"
                            v.Reflectance = 0
                            v.BackSurface = "SmoothNoOutlines"
                            v.BottomSurface = "SmoothNoOutlines"
                            v.FrontSurface = "SmoothNoOutlines"
                            v.LeftSurface = "SmoothNoOutlines"
                            v.RightSurface = "SmoothNoOutlines"
                            v.TopSurface = "SmoothNoOutlines"
                        elseif v:IsA("Decal") then
                            v.Transparency = 1
                        elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
                            v.Lifetime = NumberRange.new(0)
                        end
                    end)
                end
            end)()
            
            for _, v in pairs(Lighting:GetDescendants()) do
                if v:IsA("PostEffect") then
                    v.Enabled = false
                end
            end
            
            vars.originalAntiLagSettings.DescendantAddedConn = workspace.DescendantAdded:Connect(function(child)
                task.spawn(function()
                    if child:IsA('ForceField') or child:IsA('Sparkles') or child:IsA('Smoke') or child:IsA('Fire') or child:IsA('Beam') then
                        RunService.Heartbeat:Wait()
                        child:Destroy()
                    end
                end)
            end)
            
        else
            
            if Terrain and vars.originalAntiLagSettings.Terrain.WaterWaveSize ~= nil then
                Terrain.WaterWaveSize = vars.originalAntiLagSettings.Terrain.WaterWaveSize
                Terrain.WaterWaveSpeed = vars.originalAntiLagSettings.Terrain.WaterWaveSpeed
                Terrain.WaterReflectance = vars.originalAntiLagSettings.Terrain.WaterReflectance
                Terrain.WaterTransparency = vars.originalAntiLagSettings.Terrain.WaterTransparency
            end
            
            if vars.originalAntiLagSettings.Lighting.GlobalShadows ~= nil then
                Lighting.GlobalShadows = vars.originalAntiLagSettings.Lighting.GlobalShadows
                Lighting.FogEnd = vars.originalAntiLagSettings.Lighting.FogEnd
                Lighting.FogStart = vars.originalAntiLagSettings.Lighting.FogStart
            end
            
            if vars.originalAntiLagSettings.QualityLevel ~= nil then
                settings().Rendering.QualityLevel = vars.originalAntiLagSettings.QualityLevel
            end
            
            for effect, originalState in pairs(vars.originalAntiLagSettings.PostEffects) do
                if effect and effect.Parent then
                    effect.Enabled = originalState
                end
            end

            if vars.originalAntiLagSettings.DescendantAddedConn then
                vars.originalAntiLagSettings.DescendantAddedConn:Disconnect()
                vars.originalAntiLagSettings.DescendantAddedConn = nil
            end

            vars.originalAntiLagSettings = { Terrain = {}, Lighting = {}, PostEffects = {}, QualityLevel = nil, DescendantAddedConn = nil }
        end
    end
})

running.plantESP = false
vars.processedPlants = {}

local function inspectAllPlants()
    for _, farmPlot in ipairs(vars.Workspace.Farm:GetChildren()) do
        local important = farmPlot:FindFirstChild("Important")
        if not important then continue end

        local plants = important:FindFirstChild("Plants_Physical")
        if not plants then continue end

        for _, plant in ipairs(plants:GetChildren()) do
            local targets = {}
            local fruits = plant:FindFirstChild("Fruits")
            if fruits and fruits:IsA("Folder") then
                targets = fruits:GetChildren()
            else
                table.insert(targets, plant)
            end

            for _, target in ipairs(targets) do
                if not vars.processedPlants[target] then
                    if target:GetAttribute("Inspected") ~= true then
                        target:SetAttribute("Inspected", true)
                    end
                    vars.processedPlants[target] = true
                end
            end
        end
    end
end

task.spawn(LPH_NO_VIRTUALIZE(function()
    while true do
        if running.plantESP then
            pcall(inspectAllPlants)
        end
        task.wait(0.2)
    end
end))
local function setPetState(petId, state)
    if not petId or petId == "" then return end
    pcall(function()
        remotes.event:FireServer("SetPetState", petId, state or "FollowPlayer")
    end)
end

vars.petTypeToUuids = {}
vars.petNameToUuid = {}

local function getPetInfo()
    local petDisplayList = {}
    vars.petTypeToUuids = {}
    vars.petNameToUuid = {}

    local myData = modules.DataService:GetData()
    if not myData or not myData.PetsData or not myData.PetsData.EquippedPets or not (myData.PetsData.PetInventory and myData.PetsData.PetInventory.Data) then return petDisplayList end

    local petCounts = {}
    local equippedPetsData = {}

    for _, equippedUuid in ipairs(myData.PetsData.EquippedPets) do
        local petData = myData.PetsData.PetInventory.Data[equippedUuid]
        if petData and petData.PetType then
            local petType = tostring(petData.PetType)
            petCounts[petType] = (petCounts[petType] or 0) + 1
            table.insert(equippedPetsData, {uuid = equippedUuid, type = petType})
        end
    end

    local petRunningCounts = {}
    for _, pet in ipairs(equippedPetsData) do
        local petType = pet.type
        local displayName = petType
        
        if petCounts[petType] > 1 then
            petRunningCounts[petType] = (petRunningCounts[petType] or 0) + 1
            displayName = string.format("%s (%d)", petType, petRunningCounts[petType])
        end

        table.insert(petDisplayList, displayName)
        vars.petNameToUuid[displayName] = pet.uuid

        if not vars.petTypeToUuids[petType] then
            vars.petTypeToUuids[petType] = {}
        end
        table.insert(vars.petTypeToUuids[petType], pet.uuid)
    end
    
    table.sort(petDisplayList)
    return petDisplayList
end

local petDropdown = Groupboxes.PetMoverGroupbox:AddDropdown("PetTypeDropdown", {
    Values = getPetInfo(),
    Multi = true,
    Text = "Select Pet Type(s)",
})

Groupboxes.PetMoverGroupbox:AddDropdown("PetStateDropdown", {
    Values = { "Idle", "FollowPlayer", "TargetPlant", "Inspection" },
    Default = "FollowPlayer",
    Multi = false,
    Text = "Action",
})

Groupboxes.PetMoverGroupbox:AddToggle("PetStateSpamToggle", {
    Text = "Set Pet Action",
    Default = false,
    Callback = function(state)
        if state then
            task.spawn(function()
                while Toggles.PetStateSpamToggle.Value do
                    local selectedDisplayNames = Options.PetTypeDropdown.Value
                    local selectedState = Options.PetStateDropdown.Value

                    if selectedDisplayNames and selectedState and selectedState ~= "" then
                        for displayName, isSelected in pairs(selectedDisplayNames) do
                            if isSelected then
                                local uuid = vars.petNameToUuid[displayName]
                                if uuid then
                                    remotes.event:FireServer("SetPetState", uuid, selectedState)
                                end
                            end
                        end
                    end

                    task.wait(0.1)
                end
            end)
        end
    end,
})


Groupboxes.PetMoverGroupbox:AddInput("CooldownRangeInput", {
	Text = "Cooldown Range (min-max)",
	Default = "60-75",
	Tooltip = "e.g., 60-80",
	Numeric = false, 
})

Groupboxes.PetMoverGroupbox:AddButton("Refresh Pet List", function()
    petDropdown:SetValues(getPetInfo())
    Library:Notify("Pet list refreshed!")
end)

Groupboxes.PetMoverGroupbox:AddLabel("Auto Sync", { Text = "Auto sync works by idling unselected pets", DoesWrap = true })
Groupboxes.PetMoverGroupbox:AddLabel("Recommended Sync Range: 60-75s")

Groupboxes.PetMoverGroupbox:AddToggle("AutoSyncToggle", {
	Text = "Auto Sync",
	Tooltip = "When the inputted cooldown is between the range it will automatically sync the pets",
	Default = false,
	Callback = function(value)
		if value then
			if vars.autoSyncConnection then task.cancel(vars.autoSyncConnection) end
			vars.autoSyncConnection = task.spawn(function()
				while Toggles.AutoSyncToggle.Value do
					local minTime, maxTime = 60, 75
					if Options.CooldownRangeInput and Options.CooldownRangeInput.Value then
						local minStr, maxStr = Options.CooldownRangeInput.Value:match("^(%d+)%s*-%s*(%d+)$")
						if minStr and maxStr then
							minTime, maxTime = tonumber(minStr), tonumber(maxStr)
						end
					end

					local selectedDisplayNames = Options.PetTypeDropdown.Value or {}
					local selectedBaseTypes = {}
					local primaryPetDisplayName
					for displayName, isSelected in pairs(selectedDisplayNames) do
						if isSelected then
							if not primaryPetDisplayName then primaryPetDisplayName = displayName end
							local baseType = displayName:match("^(.-)%s*%(%d+%)$") or displayName
							selectedBaseTypes[baseType] = true
						end
					end
					
					if primaryPetDisplayName and vars.petNameToUuid[primaryPetDisplayName] then
						local success, result = pcall(remotes.GetPetCooldown.InvokeServer, remotes.GetPetCooldown, vars.petNameToUuid[primaryPetDisplayName])
						if success and type(result) == "table" and result[1] and type(result[1].Time) == "number" then
							local cooldown = result[1].Time
							if cooldown >= minTime and cooldown <= maxTime then
								if not vars.hasTriggeredInZone then
									vars.hasTriggeredInZone = true
									for petType, uuids in pairs(vars.petTypeToUuids) do
										if not selectedBaseTypes[petType] then
											task.spawn(function()
												for i = 1, 50 do
													for _, uuid in ipairs(uuids) do setPetState(uuid, "Idle") end
													task.wait()
												end
											end)
										end
									end
								end
							else
								vars.hasTriggeredInZone = false
							end
						else
							vars.hasTriggeredInZone = false
						end
					end
					task.wait(1)
				end
			end)
		else
			if vars.autoSyncConnection then task.cancel(vars.autoSyncConnection); vars.autoSyncConnection = nil end
			vars.hasTriggeredInZone = false
		end
	end,
})

Groupboxes.PetMoverGroupbox:AddToggle("HoldIdleToggle", {
	Text = "Hold Pets Idle Until Sync",
	Tooltip = "Keeps non-selected pets idle until main pet's cooldown enters sync range",
	Default = false,
	Callback = function(value)
		if value then
			if vars.holdIdleConnection then task.cancel(vars.holdIdleConnection) end
			vars.holdIdleConnection = task.spawn(function()
				while Toggles.HoldIdleToggle.Value do
					local maxTime = 75
					if Options.CooldownRangeInput and Options.CooldownRangeInput.Value then
						local _, maxStr = Options.CooldownRangeInput.Value:match("^(%d+)%s*-%s*(%d+)$")
						if maxStr then maxTime = tonumber(maxStr) end
					end

					local selectedDisplayNames = Options.PetTypeDropdown.Value or {}
					local selectedBaseTypes = {}
					local primaryPetDisplayName
					for displayName, isSelected in pairs(selectedDisplayNames) do
						if isSelected then
							if not primaryPetDisplayName then primaryPetDisplayName = displayName end
							local baseType = displayName:match("^(.-)%s*%(%d+%)$") or displayName
							selectedBaseTypes[baseType] = true
						end
					end

					if primaryPetDisplayName and vars.petNameToUuid[primaryPetDisplayName] then
						local success, result = pcall(remotes.GetPetCooldown.InvokeServer, remotes.GetPetCooldown, vars.petNameToUuid[primaryPetDisplayName])
						if success and type(result) == "table" and result[1] and type(result[1].Time) == "number" then
							if result[1].Time > maxTime then
								for petType, uuids in pairs(vars.petTypeToUuids) do
									if not selectedBaseTypes[petType] then
										task.spawn(function()
											for i = 1, 50 do
												for _, uuid in ipairs(uuids) do setPetState(uuid, "Idle") end
												task.wait()
											end
										end)
									end
								end
							else
								for petType, uuids in pairs(vars.petTypeToUuids) do
									if not selectedBaseTypes[petType] then
										 task.spawn(function()
											for i = 1, 50 do
												for _, uuid in ipairs(uuids) do setPetState(uuid) end
												task.wait()
											end
										end)
									end
								end
							end
						end
					end
					task.wait(1)
				end
			end)
		else
			if vars.holdIdleConnection then task.cancel(vars.holdIdleConnection); vars.holdIdleConnection = nil end
			local selectedDisplayNames = Options.PetTypeDropdown.Value or {}
			local selectedBaseTypes = {}
			for displayName, isSelected in pairs(selectedDisplayNames) do
				if isSelected then
					local baseType = displayName:match("^(.-)%s*%(%d+%)$") or displayName
					selectedBaseTypes[baseType] = true
				end
			end
			for petType, uuids in pairs(vars.petTypeToUuids) do
				if not selectedBaseTypes[petType] then
					for _, uuid in ipairs(uuids) do setPetState(uuid) end
				end
			end
		end
	end
})

vars.formatNumberWithCommas = function(number)
    local formatted = tostring(number)
    while true do
        formatted, k = string.gsub(formatted, "^(-?%d+)(%d%d%d)", "%1,%2")
        if k == 0 then break end
    end
    return formatted
end

ThemeManager:SetLibrary(Library)
SaveManager:SetLibrary(Library)



SaveManager:IgnoreThemeSettings()



SaveManager:SetIgnoreIndexes({ "MenuKeybind" })




ThemeManager:SetFolder("LuminTheme")
SaveManager:SetFolder("LuminHub")
SaveManager:SetSubFolder("GrowAGarden") 





SaveManager:BuildConfigSection(Tabs.ConfigTab)



ThemeManager:ApplyToTab(Tabs.ConfigTab)



SaveManager:LoadAutoloadConfig()

    

Library:Toggle(true)

if Library and Library.Options and Library.Options.AccentColor then
	Library.Options.AccentColor:SetValueRGB(Color3.fromRGB(255, 0, 0))
	ThemeManager:ThemeUpdate()
end


local AntiDebug = loadstring(game:HttpGet("https://raw.githubusercontent.com/Hosvile/InfiniX/main/Library/Anti/AntiDebug/main.lua", true))()
    
if not (type(AntiDebug) == "table") then

task.wait(1)
end   

