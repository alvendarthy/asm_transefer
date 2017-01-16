local function func_movwf(vars)
	if("OPTION" == string.upper(vars[2])) then
		vars[1] = "OPTION"
		vars[2] = nil
		return
	elseif("IOC" == string.upper(vars[2]))then
		vars[1] = "IOST"
		vars[2] = nil
	else
		vars[1] = "MOVWR"
	end
end


return {
["END"] = "END",
["ORG"] = "ORG",
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
