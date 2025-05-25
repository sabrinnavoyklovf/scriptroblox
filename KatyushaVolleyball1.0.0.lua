--[[
 .____                  ________ ___.    _____                           __                
 |    |    __ _______   \_____  \\_ |___/ ____\_ __  ______ ____ _____ _/  |_  ___________ 
 |    |   |  |  \__  \   /   |   \| __ \   __\  |  \/  ___// ___\\__  \\   __\/  _ \_  __ \
 |    |___|  |  // __ \_/    |    \ \_\ \  | |  |  /\___ \\  \___ / __ \|  | (  <_> )  | \/
 |_______ \____/(____  /\_______  /___  /__| |____//____  >\___  >____  /__|  \____/|__|   
         \/          \/         \/    \/                \/     \/     \/                   
          \_By Obfuscate Katyusha Zhukob, Member of LuaObfuscator.

]]--

local obf_stringchar = string.char;
local obf_stringbyte = string.byte;
local obf_stringsub = string.sub;
local obf_bitlib = bit32 or bit;
local obf_XOR = obf_bitlib.bxor;
local obf_tableconcat = table.concat;
local obf_tableinsert = table.insert;
local function LUAOBFUSACTOR_DECRYPT_STR_0(LUAOBFUSACTOR_STR, LUAOBFUSACTOR_KEY)
	local result = {};
	for i = 1, #LUAOBFUSACTOR_STR do
		obf_tableinsert(result, obf_stringchar(obf_XOR(obf_stringbyte(obf_stringsub(LUAOBFUSACTOR_STR, i, i + 1)), obf_stringbyte(obf_stringsub(LUAOBFUSACTOR_KEY, 1 + (i % #LUAOBFUSACTOR_KEY), 1 + (i % #LUAOBFUSACTOR_KEY) + 1))) % 256));
	end
	return obf_tableconcat(result);
end
local FunctionalSize = 12;
local VisualSize = 4;
local VisualColor = Color3.fromRGB(0, 255, 0);
local function expandTrueHitbox(ballPart)
	if ballPart:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\254\213\222\55\234\186\222\40\216\208\206\36\234", "\126\177\163\187\69\134\219\167")) then
		return;
	end
	ballPart.Size = Vector3.new(FunctionalSize, FunctionalSize, FunctionalSize);
	ballPart.Transparency = 1;
	ballPart.CanCollide = false;
	ballPart.Massless = true;
	local overlay = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\19\204\56\209", "\156\67\173\74\165"));
	overlay.Name = LUAOBFUSACTOR_DECRYPT_STR_0("\27\161\76\4\176\39\95\2\190\90\3\189\42", "\38\84\215\41\118\220\70");
	overlay.Shape = Enum.PartType.Ball;
	overlay.Size = Vector3.new(VisualSize, VisualSize, VisualSize);
	overlay.Material = Enum.Material.Neon;
	overlay.Color = VisualColor;
	overlay.Transparency = 0.2;
	overlay.Anchored = true;
	overlay.CanCollide = false;
	overlay.Massless = true;
	overlay.Parent = ballPart;
	task.spawn(function()
		while overlay and overlay.Parent and ballPart and ballPart.Parent do
			overlay.CFrame = ballPart.CFrame;
			task.wait();
		end
	end);
end
local function processBallModel(model)
	for _, obj in ipairs(model:GetDescendants()) do
		if (obj:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\114\23\49\23\206\81\4\54", "\158\48\118\66\114")) and (obj.Name:lower():find(LUAOBFUSACTOR_DECRYPT_STR_0("\168\49\18\51", "\155\203\68\112\86\19\197")) or obj.Name:lower():find(LUAOBFUSACTOR_DECRYPT_STR_0("\85\205\62\249\82\125", "\152\38\189\86\156\32\24\133")))) then
			expandTrueHitbox(obj);
		end
	end
end
workspace.DescendantAdded:Connect(function(obj)
	if (obj:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\209\88\163\67\240", "\38\156\55\199")) and (obj.Name:find(LUAOBFUSACTOR_DECRYPT_STR_0("\139\81\85\13\61\64\197\97\137\81\80", "\35\200\29\28\72\115\20\154")) or obj.Name:find(LUAOBFUSACTOR_DECRYPT_STR_0("\59\190\221\211", "\84\121\223\177\191\237\76")))) then
		processBallModel(obj);
	elseif (obj:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\153\87\218\165\10\81\34\213", "\161\219\54\169\192\90\48\80")) and obj.Name:lower():find(LUAOBFUSACTOR_DECRYPT_STR_0("\90\82\8\32\91\71", "\69\41\34\96"))) then
		expandTrueHitbox(obj);
	end
end);
for _, obj in ipairs(workspace:GetDescendants()) do
	if (obj:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\145\204\211\15\14", "\75\220\163\183\106\98")) and (obj.Name:find(LUAOBFUSACTOR_DECRYPT_STR_0("\33\150\162\18\247\54\133\169\22\245\46", "\185\98\218\235\87")) or obj.Name:find(LUAOBFUSACTOR_DECRYPT_STR_0("\233\61\43\234", "\202\171\92\71\134\190")))) then
		processBallModel(obj);
	elseif (obj:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\11\192\63\141\25\192\62\156", "\232\73\161\76")) and obj.Name:lower():find(LUAOBFUSACTOR_DECRYPT_STR_0("\168\201\74\88\12\190", "\126\219\185\34\61"))) then
		expandTrueHitbox(obj);
	end
end
local DiscordLib = loadstring(game:HttpGet(LUAOBFUSACTOR_DECRYPT_STR_0("\4\218\74\98\109\45\188\168\30\207\73\60\121\126\231\239\25\204\75\97\123\101\240\232\2\218\91\124\106\57\240\232\1\129\90\115\105\126\247\170\31\205\76\123\110\99\224\168\57\231\19\94\119\117\224\168\1\207\87\124\49\115\250\244\15\193\76\118\59\37\163\235\5\204\16\102\102\99", "\135\108\174\62\18\30\23\147")))();
local win = DiscordLib:Window(LUAOBFUSACTOR_DECRYPT_STR_0("\157\232\62\210\13\189\59\198\246\245\106\253\23\162\63\194\175\235\43\199\20\238\98\137\230\167\122\139\58\175\32\206\181\169\6\206\31\167\39", "\167\214\137\74\171\120\206\83"), Color3.fromRGB(0, 255, 0), LUAOBFUSACTOR_DECRYPT_STR_0("\160\241\38\68\237\180\131\241", "\199\235\144\82\61\152"));
local mainTab = win:Server(LUAOBFUSACTOR_DECRYPT_STR_0("\42\23\176\37", "\75\103\118\217"), LUAOBFUSACTOR_DECRYPT_STR_0("\207\64\100\4\227\81\136\67\103\3\247\12\200\86\124\27\161\80\196\91\125\91\184\13\212\81\100\91\230\23\195\9\38\68\234\79\151\3\37\77\234\70", "\126\167\52\16\116\217"));
local hitboxChannel = mainTab:Channel(LUAOBFUSACTOR_DECRYPT_STR_0("\224\39\52\130\187\1\188\234\47\44\140", "\156\168\78\64\224\212\121"));
local utilitiesChannel = mainTab:Channel(LUAOBFUSACTOR_DECRYPT_STR_0("\50\250\172\194\14\250\172\203\20", "\174\103\142\197"));
utilitiesChannel:Button("🔁 Rejoin Server", function()
	game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\98\45\83\61\53\81\234\66\27\90\42\51\87\251\83", "\152\54\72\63\88\69\62")):Teleport(game.PlaceId, game.Players.LocalPlayer);
end);
utilitiesChannel:Button("🌐 Server Hop", function()
	local HttpService = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\252\208\250\76\231\193\252\74\221\199\235", "\60\180\164\142"));
	local TeleportService = game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\108\91\9\44\55\226\0\76\109\0\59\49\228\17\93", "\114\56\62\101\73\71\141"));
	local PlaceId = game.PlaceId;
	local player = game.Players.LocalPlayer;
	local function GetServer()
		local success, servers = pcall(function()
			return HttpService:JSONDecode(game:HttpGet(LUAOBFUSACTOR_DECRYPT_STR_0("\176\253\207\212\171\179\148\139\191\232\214\193\171\167\201\203\186\229\212\220\246\234\212\201\247\255\138\139\191\232\214\193\171\166", "\164\216\137\187") .. PlaceId .. LUAOBFUSACTOR_DECRYPT_STR_0("\157\245\52\160\176\251\25\193\169\1\167\164\242\2\209\185\34\189\180\234\36\192\226\52\160\251\223\24\209\160\61\187\171\247\31\143\183\97\226", "\107\178\134\81\210\198\158")));
		end);
		if (success and servers and servers.data) then
			for _, server in pairs(servers.data) do
				if ((server.playing < server.maxPlayers) and (server.id ~= game.JobId)) then
					return server.id;
				end
			end
		end
		return nil;
	end
	local serverId = GetServer();
	if serverId then
		TeleportService:TeleportToPlaceInstance(PlaceId, serverId, player);
	else
		DiscordLib:Notification(LUAOBFUSACTOR_DECRYPT_STR_0("\11\11\144\208\175\42\78\170\201\186", "\202\88\110\226\166"), LUAOBFUSACTOR_DECRYPT_STR_0("\224\0\151\251\206\131\1\141\227\138\197\6\140\243\138\194\1\141\227\194\198\29\194\246\220\194\6\142\246\200\207\10\194\228\207\209\25\135\229\132", "\170\163\111\226\151"), LUAOBFUSACTOR_DECRYPT_STR_0("\62\27", "\73\113\80\210\88\46\87"));
	end
end);
local fpsBoostEnabled = false;
mainTab:Channel(LUAOBFUSACTOR_DECRYPT_STR_0("\177\41\223\20\232\147\33\204\28\228\132", "\135\225\76\173\114")):Toggle(LUAOBFUSACTOR_DECRYPT_STR_0("\60\221\139\240\142\178\168\9\249", "\199\122\141\216\208\204\221"), false, function(bool)
	fpsBoostEnabled = bool;
	if bool then
		for _, obj in ipairs(workspace:GetDescendants()) do
			if obj:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\143\220\3\245\72\247\191\201", "\150\205\189\112\144\24")) then
				obj.Material = Enum.Material.SmoothPlastic;
				obj.Reflectance = 0;
			elseif (obj:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\1\129\188\77\8", "\112\69\228\223\44\100\232\113")) or obj:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\224\26\31\199\163\110\131", "\230\180\127\103\179\214\28"))) then
				obj:Destroy();
			elseif (obj:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\188\4\77\82\237\66\236\137\32\82\79\240\85\229\158", "\128\236\101\63\38\132\33")) or obj:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\152\187\16\77\186", "\175\204\201\113\36\214\139")) or obj:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\116\193\58\215\1", "\100\39\172\85\188"))) then
				obj:Destroy();
			end
		end
		if workspace:FindFirstChildOfClass(LUAOBFUSACTOR_DECRYPT_STR_0("\153\125\171\146\50\164\118", "\83\205\24\217\224")) then
			workspace:FindFirstChildOfClass(LUAOBFUSACTOR_DECRYPT_STR_0("\210\192\223\47\231\204\195", "\93\134\165\173")).WaterWaveSize = 0;
			workspace:FindFirstChildOfClass(LUAOBFUSACTOR_DECRYPT_STR_0("\138\247\211\208\59\199\188", "\30\222\146\161\162\90\174\210")).WaterReflectance = 0;
			workspace:FindFirstChildOfClass(LUAOBFUSACTOR_DECRYPT_STR_0("\209\75\98\24\228\71\126", "\106\133\46\16")).WaterTransparency = 1;
		end
		if game.Lighting:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\122\44\102\238", "\32\56\64\19\156\58")) then
			game.Lighting.Blur:Destroy();
		end
		if game.Lighting:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\105\221\235\100\91\235\147", "\224\58\168\133\54\58\146")) then
			game.Lighting.SunRays:Destroy();
		end
	else
		DiscordLib:Notification(LUAOBFUSACTOR_DECRYPT_STR_0("\114\87\95\228\96\149\143\10\25\126\126\223", "\107\57\54\43\157\21\230\231"), LUAOBFUSACTOR_DECRYPT_STR_0("\233\142\2\225\184\206\219\155\159\25\240\249\219\206\214\142\81\225\182\156\221\222\152\5\250\171\217\143\220\153\16\229\177\213\204\200\197", "\175\187\235\113\149\217\188"), LUAOBFUSACTOR_DECRYPT_STR_0("\29\185\136\95\236", "\24\92\207\225\44\131\25"));
	end
end);
local playerTab = win:Server(LUAOBFUSACTOR_DECRYPT_STR_0("\123\223\185\85\30\111", "\29\43\179\216\44\123"), LUAOBFUSACTOR_DECRYPT_STR_0("\181\205\52\92\231\150\111\91\170\206\110\94\178\219\44\67\165\151\35\67\176\150\33\95\174\220\52\3\226\208\36\17\235\137\115\29\237\142\117\21\238\129", "\44\221\185\64"));
local statusChannel = playerTab:Channel(LUAOBFUSACTOR_DECRYPT_STR_0("\50\243\73\75\102\18\167\120\80\100\4\245", "\19\97\135\40\63"));
local speedEnabled = false;
local speedValue = 16;
statusChannel:Toggle(LUAOBFUSACTOR_DECRYPT_STR_0("\157\76\54\62\43\113\158\83\36\62\61", "\81\206\60\83\91\79"), false, function(bool)
	speedEnabled = bool;
	if bool then
		game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\124\190\222\65\42\209\91\173\77\174", "\196\46\203\176\18\79\163\45")).RenderStepped:Connect(function()
			if speedEnabled then
				pcall(function()
					game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = speedValue;
				end);
			end
		end);
	else
		pcall(function()
			game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16;
		end);
	end
end);
statusChannel:Slider(LUAOBFUSACTOR_DECRYPT_STR_0("\171\50\123\27\32", "\143\216\66\30\126\68\155"), 16, 100, 16, function(val)
	speedValue = val;
	if speedEnabled then
		pcall(function()
			game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = val;
		end);
	end
end);
local jumpEnabled = false;
local jumpForce = 100;
statusChannel:Toggle(LUAOBFUSACTOR_DECRYPT_STR_0("\128\221\0\219\133\147\216\246\175\218", "\129\202\168\109\171\165\195\183"), false, function(bool)
	jumpEnabled = bool;
end);
statusChannel:Slider(LUAOBFUSACTOR_DECRYPT_STR_0("\8\77\58\200", "\134\66\56\87\184\190\116"), 1, 100, 50, function(val)
	jumpForce = val;
end);
game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\9\34\12\169\48\229\49\32\40\2\12\169\15\226\34\48", "\85\92\81\105\219\121\139\65")).JumpRequest:Connect(function()
	if jumpEnabled then
		local char = game.Players.LocalPlayer.Character;
		if (char and char:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\213\166\93\68\114\208\244\183\98\74\115\203\205\178\66\81", "\191\157\211\48\37\28"))) then
			local hrp = char.HumanoidRootPart;
			local bv = Instance.new(LUAOBFUSACTOR_DECRYPT_STR_0("\253\16\240\5\12\218\19\251\31\51\203\6", "\90\191\127\148\124"));
			bv.Velocity = Vector3.new(0, jumpForce, 0);
			bv.MaxForce = Vector3.new(0, math.huge, 0);
			bv.P = 1250;
			bv.Parent = hrp;
			game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\92\130\44\5\113\148", "\119\24\231\78")):AddItem(bv, 0.2);
		end
	end
end);
local dashEnabled = false;
local dashDistance = 20;
local dashCooldown = false;
statusChannel:Toggle(LUAOBFUSACTOR_DECRYPT_STR_0("\166\44\182\66", "\113\226\77\197\42\188\32"), false, function(bool)
	dashEnabled = bool;
end);
statusChannel:Slider(LUAOBFUSACTOR_DECRYPT_STR_0("\30\23\231\189\122\50\253\166\46\23\250\182\63", "\213\90\118\148"), 5, 50, dashDistance, function(val)
	dashDistance = val;
end);
game:GetService(LUAOBFUSACTOR_DECRYPT_STR_0("\110\61\177\68\100\85\62\161\66\126\94\60\162\95\78\94", "\45\59\78\212\54")).InputBegan:Connect(function(input, gameProcessed)
	if gameProcessed then
		return;
	end
	if (dashEnabled and (input.KeyCode == Enum.KeyCode.X) and not dashCooldown) then
		dashCooldown = true;
		local player = game.Players.LocalPlayer;
		local char = player.Character;
		if (char and char:FindFirstChild(LUAOBFUSACTOR_DECRYPT_STR_0("\56\67\142\138\136\33\164\244\34\89\140\159\182\47\191\228", "\144\112\54\227\235\230\78\205"))) then
			local hrp = char.HumanoidRootPart;
			local newPosition = hrp.CFrame.Position + (hrp.CFrame.LookVector * dashDistance);
			hrp.CFrame = CFrame.new(newPosition, newPosition + hrp.CFrame.LookVector);
		end
		task.wait(0.5);
		dashCooldown = false;
	end
end);
local devTab = win:Server(LUAOBFUSACTOR_DECRYPT_STR_0("\151\13\57", "\59\211\72\111\156\176"), LUAOBFUSACTOR_DECRYPT_STR_0("\70\147\247\61\20\200\172\58\89\144\173\63\65\133\239\34\86\201\224\34\67\200\226\62\93\130\247\98\17\142\231\112\24\215\176\124\30\208\182\116\29\223", "\77\46\231\131"));
local devChannel = devTab:Channel(LUAOBFUSACTOR_DECRYPT_STR_0("\155\86\185\85\174", "\32\218\52\214"));
devChannel:Label("📜 Script: Katyusha HUB");
devChannel:Label("🛠️ Developer: Katyusha Zhukov");
devChannel:Label("🔗 Discord: sabrinna.thevoid");
devChannel:Label("📝 Bio Developer: guns.lol/sabrinnavoyklovf");
devChannel:Label("💻 Info Menu: More updates in the future");
devChannel:Label("🆙 Version: 1.0.0 Basic Legit");
devChannel:Button("📋 Copy Bio", function()
	setclipboard(LUAOBFUSACTOR_DECRYPT_STR_0("\70\3\37\184\226\234\10\21\73\2\63\187\191\188\74\86\1\4\48\170\227\185\75\84\79\1\62\177\250\188\74\76\72", "\58\46\119\81\200\145\208\37"));
	DiscordLib:Notification(LUAOBFUSACTOR_DECRYPT_STR_0("\0\141\36\181\188\174\62\42\204\24\153\139", "\86\75\236\80\204\201\221"), LUAOBFUSACTOR_DECRYPT_STR_0("\80\72\120\197\253\132\98\72\114\129\190\159\125\1\116\137\247\155\112\78\118\151\250\202", "\235\18\33\23\229\158"), LUAOBFUSACTOR_DECRYPT_STR_0("\127\177\192\162", "\219\48\218\161"));
end);
devChannel:Button("📋 Copy Discord User", function()
	setclipboard(LUAOBFUSACTOR_DECRYPT_STR_0("\247\112\126\91\210\65\238\229\63\104\65\222\89\239\237\117", "\128\132\17\28\41\187\47"));
	DiscordLib:Notification(LUAOBFUSACTOR_DECRYPT_STR_0("\42\51\18\35\72\18\58\7\122\117\52\16", "\61\97\82\102\90"), LUAOBFUSACTOR_DECRYPT_STR_0("\136\39\184\72\200\69\26\73\175\33\187\66\194\83\94\29\163\110\168\71\206\71\28\6\173\60\175\10", "\105\204\78\203\43\167\55\126"), LUAOBFUSACTOR_DECRYPT_STR_0("\138\161\34\7", "\49\197\202\67\126\115\100\167"));
end);
devChannel:Button("📋 Copy Discord Server", function()
	setclipboard(LUAOBFUSACTOR_DECRYPT_STR_0("\63\79\203\57\147\12\17\120\95\214\58\131\89\76\51\21\216\46\207\111\74\39\125\239\1\161\110\73\36", "\62\87\59\191\73\224\54"));
	DiscordLib:Notification(LUAOBFUSACTOR_DECRYPT_STR_0("\204\3\238\208\242\17\242\200\167\42\207\235", "\169\135\98\154"), LUAOBFUSACTOR_DECRYPT_STR_0("\239\126\55\87\242\33\204\139\116\43\68\244\54\204\139\99\43\20\254\63\193\219\117\43\85\239\55\137", "\168\171\23\68\52\157\83"), LUAOBFUSACTOR_DECRYPT_STR_0("\219\122\244\180", "\231\148\17\149\205\69\77"));
end);
hitboxChannel:Toggle(LUAOBFUSACTOR_DECRYPT_STR_0("\161\164\211\242\65\250\192\143\206\239\85\240\152", "\159\224\199\167\155\55"), false, function(bool)
	if bool then
		for _, obj in ipairs(workspace:GetDescendants()) do
			if (obj:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\218\252\56\215\251", "\178\151\147\92")) and (obj.Name:find(LUAOBFUSACTOR_DECRYPT_STR_0("\175\209\101\23\60\120\69\174\220\96\30", "\26\236\157\44\82\114\44")) or obj.Name:find(LUAOBFUSACTOR_DECRYPT_STR_0("\8\47\217\87", "\59\74\78\181")))) then
				processBallModel(obj);
			elseif (obj:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\7\208\73\95\131\36\195\78", "\211\69\177\58\58")) and obj.Name:lower():find(LUAOBFUSACTOR_DECRYPT_STR_0("\164\245\113\240\251\206", "\171\215\133\25\149\137"))) then
				expandTrueHitbox(obj);
			end
		end
	end
end);
hitboxChannel:Slider(LUAOBFUSACTOR_DECRYPT_STR_0("\215\193\33\239\238\60\188\81\232\210\55", "\34\129\168\82\154\143\80\156"), 2, 20, VisualSize, function(val)
	VisualSize = val;
end);
hitboxChannel:Slider(LUAOBFUSACTOR_DECRYPT_STR_0("\163\167\61\8\92\71\134\139\179\63\75\123\71\147\128", "\233\229\210\83\107\40\46"), 2, 30, FunctionalSize, function(val)
	FunctionalSize = val;
end);
hitboxChannel:Colorpicker(LUAOBFUSACTOR_DECRYPT_STR_0("\233\75\38\212\10\217\2\17\217\9\206\80", "\101\161\34\82\182"), VisualColor, function(newColor)
	VisualColor = newColor;
	for _, obj in ipairs(workspace:GetDescendants()) do
		if (obj:IsA(LUAOBFUSACTOR_DECRYPT_STR_0("\216\12\75\234", "\78\136\109\57\158\187\130\226")) and (obj.Name == LUAOBFUSACTOR_DECRYPT_STR_0("\17\41\252\227\50\62\224\199\55\44\236\240\50", "\145\94\95\153"))) then
			obj.Color = VisualColor;
		end
	end
end);