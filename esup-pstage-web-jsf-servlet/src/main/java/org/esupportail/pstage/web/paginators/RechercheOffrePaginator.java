package org.esupportail.pstage.web.paginators;

import java.util.ArrayList;
import java.util.List;

import org.esupportail.commons.services.paginator.ListPaginator;
import org.esupportail.pstagedata.domain.dto.OffreDTO;

/**
 * @author Matthieu Manginot : matthieu.manginot@univ-nancy2.fr
 */
public class RechercheOffrePaginator extends ListPaginator<OffreDTO> {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	/**
	 * Liste
	 */
	private List<OffreDTO> liste;
	
	/**
	 * Constructeur
	 */
	public RechercheOffrePaginator(){
		super();
	}
	
	/**
	 * Constructeur
	 * @param l
	 */
	public RechercheOffrePaginator(final List<OffreDTO> l){
		super();
	}

	@Override
	protected ArrayList<OffreDTO> getData() {
		if(this.liste!=null && !this.liste.isEmpty()){
			return (ArrayList<OffreDTO>) this.liste;
		}
		return null;
	}

	/**
	 * @return the liste
	 */
	public List<OffreDTO> getListe() {
		return liste;
	}

	/**
	 * @param liste the liste to set
	 */
	public void setListe(List<OffreDTO> liste) {
		this.liste = liste;
	}
}
