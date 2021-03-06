/**
 * ESUP-PStage - Copyright (c) 2006 ESUP-Portail consortium
 * http://sourcesup.cru.fr/projects/esup-pstage
 */
package org.esupportail.pstage.domain;

import java.util.List;

import org.esupportail.pstagedata.domain.dto.CritereGestionDTO;
import org.esupportail.pstagedata.exceptions.DataAddException;
import org.esupportail.pstagedata.exceptions.DataDeleteException;
import org.esupportail.pstagedata.exceptions.WebServiceDataBaseException;
import org.esupportail.pstagedata.remote.RemoteServices;

/**
 * @author Matthieu Manginot : matthieu.manginot@univ-nancy2.fr
 *
 */
public class CritereGestionDomainServiceImpl implements CritereGestionDomainService{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	/**
	 * RemoteServices
	 */
	private RemoteServices remoteServices;
	
	/**
	 * @return the remoteServices
	 */
	public RemoteServices getRemoteServices() {
		return remoteServices;
	}

	/**
	 * @param remoteServices the remoteServices to set
	 */
	public void setRemoteServices(RemoteServices remoteServices) {
		this.remoteServices = remoteServices;
	}
	public List<CritereGestionDTO> getCritereGestion() {
		return this.remoteServices.getCritereGestion();
	}
	public List<CritereGestionDTO> getCritereGestionFromIdCentre(int idCentreGestion) {
		return this.remoteServices.getCritereGestionFromIdCentre(idCentreGestion);
	}
	public List<CritereGestionDTO> getCritereGestionFromIdCentreAndAnnee(int idCentreGestion,String anneeUniv) {
		return this.remoteServices.getCritereGestionFromIdCentreAndAnnee(idCentreGestion, anneeUniv);
	}
	public int getNombreCritereGestion(int idCentreGestion){
		return this.remoteServices.getNombreCritereGestion(idCentreGestion);
	}
	
	/**
	 * @see org.esupportail.pstage.domain.CritereGestionDomainService#addCritere(org.esupportail.pstagedata.domain.dto.CritereGestionDTO)
	 */
	public int addCritere(CritereGestionDTO critere) throws DataAddException,WebServiceDataBaseException{
		return this.remoteServices.addCritere(critere);
	}
	/**
	 * @see org.esupportail.pstage.domain.CritereGestionDomainService#deleteCritere(String)
	 */
	public boolean deleteCritere(String codeCritere) throws DataDeleteException,WebServiceDataBaseException{
		return this.remoteServices.deleteCritere(codeCritere);
	}
	/**
	 * @see org.esupportail.pstage.domain.CritereGestionDomainService#getCritereGestionSansVetFromCodeEtape(String)
	 */
	public CritereGestionDTO getCritereGestionSansVetFromCodeEtape(String codeEtape) {
		return this.remoteServices.getCritereGestionSansVetFromCodeEtape(codeEtape);
	}
}
