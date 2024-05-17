object registroAbatidos {
	const registro = [[43,18,49,62,33,39],[20221231,20230101,20230105,20230106,20230107,20230108]]
	
	method cantidadDeDiasRegistrados(){
		return registro.get(1).size()
	}
	method estaVacioElRegistro(){
		return registro.get(0).isEmpty()
	}
	method algunDiaAbatio(cantidad){
		return registro.get(0).any({reg => reg == cantidad})
	}
	method primerValorDeAbatidos(){
		return registro.get(0).first()
	}
	method ultimoValorDeAbatidos(){
		return registro.get(0).last()
	}
	method maximoValorDeAbatidos(){
		return registro.get(0).max()
	}
	method totalAbatidos(){
		return registro.get(0).sum()
	}
	method cantidadDeAbatidosElDia(dia){
		return registro.get(0).get(dia)
	}
	method ultimoValorDeAbatidosConSize(){
		return registro.get(0).get(registro.get(0).size() -1  )
	}
	method diasConAbatidosSuperioresA(cuanto){
		return registro.get(0).filter({reg => reg > cuanto})
	}
	method valoresDeAbatidosPares(){
		return registro.get(0).filter({reg => reg.even()})
	}
	method abatidosSumando(cantidad){
		return registro.get(0).map({reg => reg + cantidad})
	}
	method abatidosEsAcotada(n1,n2){
		return registro.get(0).all({reg => reg.between(n1,n2)})
	}
	method algunDiaAbatioMasDe(cantidad){
		return registro.get(0).any({reg => reg > cantidad})
	}
	method todosLosDiasAbatioMasDe(cantidad){
		return registro.get(0).all({reg => reg > cantidad}) 
	}
	method cantidadAbatidosMayorALaPrimera(){
		return registro.get(0).count({reg => reg > registro.get(0).get(0) })
	}
	method esCrack(){	
		return registro.get(0).get(0) < registro.get(0).get(1)
	}
}