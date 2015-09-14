package torneos

class Torneo {
	String nombre
	Date fechaInicio
	Date fechaLimite
	Integer nMaxEquipos
	List partidos
	List equipos
	Integer nMinJugadorXEquipo
	Integer nMaxJugadorXEquipo
	String clave
	String reglamento
	
	static hasMany = [equipos: equipos.Equipo, partidos: partidos.Partido]
	
	public String toString(){
		return nombre
	}		

    static constraints = {
		nombre(size:2..20, unique:true)
		fechaInicio(min: new Date())
		fechaLimite(min: new Date())
		nMaxEquipos(min:2)
		nMinJugadorXEquipo(min:5)
		nMaxJugadorXEquipo(max:99)
		//equipos.length <= nMaxEquipos
		clave(size:6..16, nullable:true)
		reglamento(maxSize:2000, nullable:true)
		equipos()
		partidos()
    }
}
