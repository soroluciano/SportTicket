package sporttickets

class Estadio {

	List<Sector> listaSectores = new ArrayList<Sector>() 
	
	static hasMany =[sectores:Sector,partidos:Partido]
    static constraints = {
    }
}
