@echo Set vb = CreateObject("WScript.Shell") > sendKey.vbs
@echo vb.Sendkeys %1 >> sendKey.vbs
@call sendKey.vbs
@del sendKey.vbs