package partidos

import groovy.time.TimeCategory

class Partido {
	Integer nFecha
	Date fechaPartido
	equipos.Equipo local
	equipos.Equipo visitante
	Collection goleadoresLocal
	Collection amonestadosLocal
	Collection expulsadosLocal
	Collection goleadoresVisitante
	Collection amonestadosVisitante
	Collection expulsadosVisitante
	
	static belongsTo = [torneo:torneos.Torneo]
	static hasMany = [goleadoresLocal: equipos.Jugador, amonestadosLocal: equipos.Jugador, expulsadosLocal:equipos.Jugador,goleadoresVisitante: equipos.Jugador, amonestadosVisitante: equipos.Jugador, expulsadosVisitante:equipos.Jugador]
	
	public String toString(){
		"$local vs. $visitante"
	}
	
    static constraints = {
		fechaPartido(max:use(TimeCategory) {(new Date()) + 6.hours}, nullable:true)
		nFecha()
		local()
		visitante()
		goleadoresLocal()
		goleadoresVisitante()
		
    }
}
