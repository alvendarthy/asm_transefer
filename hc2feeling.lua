local function func_movwf(cmd, var)
	if("OPTION" == var) then
		return "OPTION"
	elseif("IOC" == var)then
		return "IOST"
	else
		return "MOVAR"
	end
end


return {
["BCF"] = "BCR",
["BSF"] = "BSR",
["BTFSC"] = "BTRSC",
["BTFSS"] = "BTRSS",
["NOP"] = "NOP",
["CLRWDT"] = "CLRWDT",
["MOVWF"] = func_movwf,
["SLEEP"] = "SLEEP",
["DAW"] = "DAA",
["DSW"] = "DAS",
["CALL"] = "INT",
["RETURN"] = "RETURN",
["RETFIE"] = "RETFIE",
["CLRW"] = "CLRA",
["CLRF"] = "CLRR",
["MOVF"] = "MOVR",
["DECF"] = "DECR",
["DECFSZ"] = "DECRSZ",
["INCF"] = "INCR",
["INCFSZ"] = "INCRSZ",
["ADDWF"] = "ADDAR",
["SUBWF"] = "SUBAR",
["ADCWF"] = "ADCAR",
["SBCWF"] = "SBCAR",
["ANDWF"] = "ANDAR",
["IORWF"] = "IORAR",
["XORWF"] = "XORAR",
["COMF"] = "COMR",
["RLF"] = "RLR",
["RRF"] = "RRR",
["SWAPF"] = "SWAPR",
["MOVLW"] = "MOVIA",
["ADDLW"] = "ADDIA",
["SUBLW"] = "SUBIA",
["ANDLW"] = "ANDIA",
["IORLW"] = "IORIA",
["XORLW"] = "XORIA",
["RETLW"] = "RETIA",
["CALL"] = "CALL",
["GOTO"] = "GOTO"
}
