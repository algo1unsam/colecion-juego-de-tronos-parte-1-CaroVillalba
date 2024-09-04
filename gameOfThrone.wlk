 object daenerys{
    const property artefactos = []
    const property historiaArtef = []

    method agregarArtefacto(artefac){
        historiaArtef.add(artefac)
        if(artefactos.size()<=1){
            artefactos.add(artefac)
        }
    }
    method dejarCosas(){
        artefactos.clear()
    }

    method posesiones(){
        return rocaDragon.inventarioInf() + self.artefactos()
    }
    
    method historia(){
        return self.historiaArtef()
    }
    method encontrarArtefacto(artefactoBuscado) {
        return self.posesiones().find { artefacto => artefacto == artefactoBuscado }
    }

}
object rocaDragon{
    const property inventarioInf = []

    method liberarEspacio(persona){
        persona.artefactos().forEach ({artefactos => inventarioInf.add(artefactos)})
        persona.dejarCosas()
    }
}