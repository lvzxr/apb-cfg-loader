# Modified kill feed
When putting the modified kill feed in you will need to change ```<ENEMY COLOUR>, <TEAM COLOUR>, <MISC COLOUR1> and <MISC COLOUR2>``` to a colour of your liking using the list provided on the 'APB Localization Resources' listed at the bottom of the Readme, once you've changed those you can just overwrite lines 104-149 if using my localization and lines 107-152 if using Flaws localization.

## Stock kill feed layout (P1 Weapon P2)
```
HUDMessages_AM_CombatArrestOpp_DisplayText=<ENEMY COLOUR><ArrestingCharacterName></col> <hudtexture:KillIcon_Arrest> <TEAM COLOUR><ArrestedCharacterName></col>
HUDMessages_AM_CombatArrestOpp_ChatText=
HUDMessages_AM_CombatArrestTeam_DisplayText=<TEAM COLOUR><CharacterNameA></col> <hudtexture:KillIcon_Arrest> <ENEMY COLOUR><CharacterNameB></col>
HUDMessages_AM_CombatArrestTeam_ChatText=
HUDMessages_AM_CombatKillOpp_DisplayText=<ENEMY COLOUR><KillerCharacterName></col> <MISC COLOUR2><KillerAssistName></col><WeaponIcon> <TEAM COLOUR><KilledCharacterName></col>
HUDMessages_AM_CombatKillOpp_ChatText=
HUDMessages_AM_CombatKillTeam_DisplayText=<TEAM COLOUR><KillerCharacterName></col> <MISC COLOUR1><KillerAssistName></col><WeaponIcon> <ENEMY COLOUR><KilledCharacterName></col>
HUDMessages_AM_CombatKillTeam_ChatText=
HUDMessages_AM_CombatKillTeamOther_DisplayText=<TEAM COLOUR><KillerCharacterName></col> <hudtexture:KillIcon_Generic> <ENEMY COLOUR><KilledCharacterName></col>
HUDMessages_AM_CombatKillTeamOther_ChatText=
HUDMessages_AM_CombatKillWithOwn_DisplayText=You killed <CharacterNameA> with his own weapon!
HUDMessages_AM_CombatKillWithOwn_ChatText=
HUDMessages_AM_CombatKillWithOwn_Combat_DisplayText=
HUDMessages_AM_CombatKillWithOwn_Combat_ChatText=
HUDMessages_AM_CombatMuggedOpp_DisplayText=<ENEMY COLOUR><KillerCharacterName></col> <hudtexture:KillIcon_Generic> <TEAM COLOUR><KilledCharacterName></col>
HUDMessages_AM_CombatMuggedOpp_ChatText=
HUDMessages_AM_CombatMuggedTeam_DisplayText=<TEAM COLOUR><KillerCharacterName></col> <hudtexture:KillIcon_Generic> <ENEMY COLOUR><KilledCharacterName></col>
HUDMessages_AM_CombatMuggedTeam_ChatText=
HUDMessages_AM_CombatRescueOpp_DisplayText=<ENEMY COLOUR><CharacterNameA></col> <hudtexture:KillIcon_Rescue> <ENEMY COLOUR><CharacterNameB></col>
HUDMessages_AM_CombatRescueOpp_ChatText=
HUDMessages_AM_CombatRescueTeam_DisplayText=<TEAM COLOUR><CharacterNameA></col> <hudtexture:KillIcon_Rescue> <TEAM COLOUR><CharacterNameB></col>
HUDMessages_AM_CombatRescueTeam_ChatText=
HUDMessages_AM_CombatStunOpp_DisplayText=<ENEMY COLOUR><CharacterNameA></col> <WeaponIcon><hudtexture:KillIcon_Stun> <TEAM COLOUR><CharacterNameB></col>
HUDMessages_AM_CombatStunOpp_ChatText=
HUDMessages_AM_CombatStunSelfOpp_DisplayText=<WeaponIcon><hudtexture:KillIcon_Stun> <ENEMY COLOUR><CharacterNameA></col>
HUDMessages_AM_CombatStunSelfOpp_ChatText=
HUDMessages_AM_CombatStunSelfTeam_DisplayText=<WeaponIcon><hudtexture:KillIcon_Stun> <TEAM COLOUR><CharacterNameA></col>
HUDMessages_AM_CombatStunSelfTeam_ChatText=
HUDMessages_AM_CombatStunTMOpp_DisplayText=<ENEMY COLOUR><CharacterNameB></col> <WeaponIcon><hudtexture:KillIcon_Stun> <ENEMY COLOUR><CharacterNameA></col>
HUDMessages_AM_CombatStunTMOpp_ChatText=
HUDMessages_AM_CombatStunTMTeam_DisplayText=<TEAM COLOUR><CharacterNameB></col> <WeaponIcon><hudtexture:KillIcon_Stun> <TEAM COLOUR><CharacterNameA></col>
HUDMessages_AM_CombatStunTMTeam_ChatText=
HUDMessages_AM_CombatStunTeam_DisplayText=<TEAM COLOUR><CharacterNameA></col> <WeaponIcon><hudtexture:KillIcon_Stun> <ENEMY COLOUR><CharacterNameB></col>
HUDMessages_AM_CombatStunTeam_ChatText=
HUDMessages_AM_CombatSuicideOpp_DisplayText=<hudtexture:KillIcon_Generic> <ENEMY COLOUR><CharacterNameA></col>
HUDMessages_AM_CombatSuicideOpp_ChatText=
HUDMessages_AM_CombatSuicideTeam_DisplayText=<hudtexture:KillIcon_Generic> <TEAM COLOUR><CharacterNameA></col>
HUDMessages_AM_CombatSuicideTeam_ChatText=
HUDMessages_AM_CombatTKOpp_DisplayText=<ENEMY COLOUR><KillerCharacterName></col> <MISC COLOUR2><KillerAssistName></col><WeaponIcon> <ENEMY COLOUR><KilledCharacterName></col>
HUDMessages_AM_CombatTKOpp_ChatText=
HUDMessages_AM_CombatTKOppOther_DisplayText=<ENEMY COLOUR><KillerCharacterName></col> <hudtexture:KillIcon_Generic> <ENEMY COLOUR><KilledCharacterName></col>
HUDMessages_AM_CombatTKOppOther_ChatText=
HUDMessages_AM_CombatTKTeam_DisplayText=<TEAM COLOUR><KillerCharacterName></col> <MISC COLOUR1><KillerAssistName></col><WeaponIcon><TEAM COLOUR><KilledCharacterName></col>
HUDMessages_AM_CombatTKTeam_ChatText=
HUDMessages_AM_CombatTKTeamOther_DisplayText=<TEAM COLOUR><KillerCharacterName></col> <hudtexture:KillIcon_Generic> <TEAM COLOUR><KilledCharacterName></col>
HUDMessages_AM_CombatTKTeamOther_ChatText=
```

## Alternative kill feed layout (P1 > P2 Weapon)
```
HUDMessages_AM_CombatArrestOpp_DisplayText=<ENEMY COLOUR><ArrestingCharacterName></col> > <TEAM COLOUR><ArrestedCharacterName></col> <hudtexture:KillIcon_Arrest></col>
HUDMessages_AM_CombatArrestOpp_ChatText=
HUDMessages_AM_CombatArrestTeam_DisplayText=<TEAM COLOUR><CharacterNameA></col> > <ENEMY COLOUR><CharacterNameB></col> <hudtexture:KillIcon_Arrest></col>
HUDMessages_AM_CombatArrestTeam_ChatText=
HUDMessages_AM_CombatKillOpp_DisplayText=<ENEMY COLOUR><KillerCharacterName></col> <MISC COLOUR2><KillerAssistName></col> > <TEAM COLOUR><KilledCharacterName></col> <WeaponIcon></col>
HUDMessages_AM_CombatKillOpp_ChatText=
HUDMessages_AM_CombatKillTeam_DisplayText=<TEAM COLOUR><KillerCharacterName></col> <MISC COLOUR1><KillerAssistName></col> > <ENEMY COLOUR><KilledCharacterName></col> <WeaponIcon></col>
HUDMessages_AM_CombatKillTeam_ChatText=
HUDMessages_AM_CombatKillTeamOther_DisplayText=<TEAM COLOUR><KillerCharacterName></col> > <ENEMY COLOUR><KilledCharacterName></col> <hudtexture:KillIcon_Generic></col>
HUDMessages_AM_CombatKillTeamOther_ChatText=
HUDMessages_AM_CombatKillWithOwn_DisplayText=<col:White>Killed <ENEMY COLOUR><CharacterNameA> <col:White>with their own weapon!</col>
HUDMessages_AM_CombatKillWithOwn_ChatText=
HUDMessages_AM_CombatKillWithOwn_Combat_DisplayText=
HUDMessages_AM_CombatKillWithOwn_Combat_ChatText=
HUDMessages_AM_CombatMuggedOpp_DisplayText=<ENEMY COLOUR><KillerCharacterName></col> > <TEAM COLOUR><KilledCharacterName></col> <hudtexture:KillIcon_Generic></col>
HUDMessages_AM_CombatMuggedOpp_ChatText=
HUDMessages_AM_CombatMuggedTeam_DisplayText=<TEAM COLOUR><KillerCharacterName></col> > <ENEMY COLOUR><KilledCharacterName></col> <hudtexture:KillIcon_Generic></col>
HUDMessages_AM_CombatMuggedTeam_ChatText=
HUDMessages_AM_CombatRescueOpp_DisplayText=<ENEMY COLOUR><CharacterNameA></col> + <ENEMY COLOUR><CharacterNameB></col> <hudtexture:KillIcon_Rescue></col>
HUDMessages_AM_CombatRescueOpp_ChatText=
HUDMessages_AM_CombatRescueTeam_DisplayText=<TEAM COLOUR><CharacterNameA></col> + <TEAM COLOUR><CharacterNameB></col> <hudtexture:KillIcon_Rescue></col>
HUDMessages_AM_CombatRescueTeam_ChatText=
HUDMessages_AM_CombatStunOpp_DisplayText=<ENEMY COLOUR><CharacterNameA></col> > <TEAM COLOUR><CharacterNameB></col> <WeaponIcon><hudtexture:KillIcon_Stun></col>
HUDMessages_AM_CombatStunOpp_ChatText=
HUDMessages_AM_CombatStunSelfOpp_DisplayText=<ENEMY COLOUR><CharacterNameA></col> <WeaponIcon><hudtexture:KillIcon_Stun></col>
HUDMessages_AM_CombatStunSelfOpp_ChatText=
HUDMessages_AM_CombatStunSelfTeam_DisplayText=<TEAM COLOUR><CharacterNameA></col> <WeaponIcon><hudtexture:KillIcon_Stun></col>
HUDMessages_AM_CombatStunSelfTeam_ChatText=
HUDMessages_AM_CombatStunTMOpp_DisplayText=<ENEMY COLOUR><CharacterNameB></col> > <ENEMY COLOUR><CharacterNameA></col> <WeaponIcon><hudtexture:KillIcon_Stun></col>
HUDMessages_AM_CombatStunTMOpp_ChatText=
HUDMessages_AM_CombatStunTMTeam_DisplayText=<TEAM COLOUR><CharacterNameB></col> > <TEAM COLOUR><CharacterNameA></col> <WeaponIcon><hudtexture:KillIcon_Stun></col>
HUDMessages_AM_CombatStunTMTeam_ChatText=
HUDMessages_AM_CombatStunTeam_DisplayText=<TEAM COLOUR><CharacterNameA></col> > <ENEMY COLOUR><CharacterNameB></col> <WeaponIcon><hudtexture:KillIcon_Stun></col>
HUDMessages_AM_CombatStunTeam_ChatText=
HUDMessages_AM_CombatSuicideOpp_DisplayText=<ENEMY COLOUR><CharacterNameA></col> <hudtexture:KillIcon_Generic></col>
HUDMessages_AM_CombatSuicideOpp_ChatText=
HUDMessages_AM_CombatSuicideTeam_DisplayText=<TEAM COLOUR><CharacterNameA></col> <hudtexture:KillIcon_Generic></col>
HUDMessages_AM_CombatSuicideTeam_ChatText=
HUDMessages_AM_CombatTKOpp_DisplayText=<ENEMY COLOUR><KillerCharacterName></col> <MISC COLOUR2><KillerAssistName></col> > <ENEMY COLOUR><KilledCharacterName></col> <WeaponIcon></col>
HUDMessages_AM_CombatTKOpp_ChatText=
HUDMessages_AM_CombatTKOppOther_DisplayText=<ENEMY COLOUR><KillerCharacterName></col> > <ENEMY COLOUR><KilledCharacterName></col> <hudtexture:KillIcon_Generic></col>
HUDMessages_AM_CombatTKOppOther_ChatText=
HUDMessages_AM_CombatTKTeam_DisplayText=<TEAM COLOUR><KillerCharacterName></col> <MISC COLOUR1><KillerAssistName></col> > <TEAM COLOUR><KilledCharacterName></col> <WeaponIcon></col>
HUDMessages_AM_CombatTKTeam_ChatText=
HUDMessages_AM_CombatTKTeamOther_DisplayText=<TEAM COLOUR><KillerCharacterName></col> > <TEAM COLOUR><KilledCharacterName></col> <hudtexture:KillIcon_Generic></col>
HUDMessages_AM_CombatTKTeamOther_ChatText=
```

