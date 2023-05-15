Config = Config or {}

-- Start Message
Config.StartMSGT = true -- Toggles the console message.
Config.StartMSG = "SG-Tyres:ON" -- A console message when the script starts.

-- Command Toggles (true/false):
Config.TFtoggle = true -- Toggle the fix wheels command.
Config.ABPtoggle = true -- Toggle the add bulletproof tyres command.
Config.RBPtoggle = true -- Toggle the remove bulletproof tyres command.

-- Commands ("Command"):
Config.Tyrefixcommand = "fixwheels" -- Fixes the tyres of the car you are in.
Config.ABPtyrescommand = "addbulletprooftyres" -- Fixes and adds Bulletproofing to the Tyres of the car you are in.
Config.RBPtyrescommand = "removebulletprooftyres" -- Removes the bulletproofing from Tyres of the car you are in.

-- Bulletproof Commands (true/false):
Config.ABPFW = true -- If add bulletproof tyres command will also fix the tyres.
Config.RBPFW = false -- If remove bulletproof tyres command will also fix the tyres.

-- Item Toggles (true/false):
Config.TStoggle = true -- Toggle the tyre swap with item.
Config.BPStoggle = true -- Toggle the bulletproof tyre swap with item.

-- Items ("Item"):
Config.TyreSwap = "ntyre" -- Item for normal tyre swap.
Config.BpTyreSwap = "bptyre" -- Item for bulletproof tyre swap.

-- Use Duration Toggle (true/false) false = instant use:
Config.TSUDT = true -- Toggle the progressbar for tyre swap.
Config.BPTSUDT = true -- Toggle the progressbar for bulletproof tyre swap.

--Use Duration (INT) (1000 = 1 second):
Config.TSUD = 10000 -- How much time in miliseconds will it take to replace the tyres with normal tyres.
Config.BPTSUD = 10000 -- How much time in miliseconds will it take to replace the tyres with bulletproofs tyres.

-- Command Notifications Toggle (true/false):
Config.FWCTT = true -- Toggles the fix tyres command notification.
Config.ABPTCT = true -- Toggles the add bulletproof tyres command notification.
Config.RBPTCT = true -- Toggles the remove bulletproof tyres command notification.
Config.NRTIUST = true -- Toggles the normal replace tyres item use Start notification.
Config.NRTIUDT = true -- Toggles the normal replace tyres item use Done notification.
Config.BPRTIUST = true -- Toggles the bulletproof replace tyres item use Start notification.
Config.BPRTIUDT = true -- Toggles the bulletproof replace tyres item use Done notification.

-- Command Notifications ("Text"):
Config.FWCT = "Tyres Fixed!" -- Fix tyres command notification text.
Config.ABPTC = "Added Bulletproof Tyres!" -- Add bulletproof tyres command notification.
Config.RBPTC = "Removed Bulletproof Tyres!" -- Remove bulletproof tyres command notification
Config.NRTIUS = "Replacing Tyres!" -- Normal replace tyres item use Start notification
Config.NRTIUD = "Tyres Have Been Replaced!" -- Normal replace tyres item use Done notification.
Config.BPRTIUS = "Replacing Tyres!" -- Bulletproof replace tyres item use Start notification.
Config.BPRTIUD = "Tyres Have Been Replaced!" -- Bulletproof replace tyres item use Done notification.

-- Bulletproof Toggles:
Config.NRTIBP = true -- If the standard tyre swap will REMOVE bulletproofing (true = remove bulletproof)
Config.BPRTIBP = true -- If the bulletproof tyre swap will ADD bulletproofing (true = add bulletproof)







-- SG-tyres Version 1.1
-- Made by Shamgamer & BR2BOY