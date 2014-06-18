package sporttickets

class RankingController {
	def scaffold = true
	static allowedMethods = [save: "POST",update:"POST",delete:"POST"]
    def index() { 
		redirect(action: "list", params:params)
	}
}
