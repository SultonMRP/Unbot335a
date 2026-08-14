
function NPCCommand_OnEnter(self,tipType,title,text,command)
	GameTooltip:SetOwner(self, "ANCHOR_TOPRIGHT");
	GameTooltip:AddLine(title,0,0.7,0.7,1);
	if (tipType == 1) then
		GameTooltip:AddLine("Summon a bot, this bot is a " .. text, 0,1,0,1);
		-- GameTooltip:AddLine("When out of combat, you can right-click this bot to open its action menu and configure its combat role and equipment.", 0,1,0,1);
		-- GameTooltip:AddLine("You must select yourself before using this command.", 1,0,0,1);
	elseif (tipType == 2) then
		GameTooltip:AddLine(text,0,1,0,1);
		GameTooltip:AddLine("You must select yourself or an NPC bot before using this command.", 1,0,0,1);
	end
	-- GameTooltip:AddLine("This command cannot be used while in combat.", 1,1,1,1);
	-- GameTooltip:AddLine(" ",1,1,1,1);
	if (command ~= nil) then
		GameTooltip:AddDoubleLine("Execute Command:", command, 0,0.85,0.85, 0,0.85,0.85);
	end
	GameTooltip:Show();
end

