/**
 * ESUP-Portail PStageData - Copyright (c) 2006 ESUP-Portail consortium
 * http://sourcesup.cru.fr/projects/esup-pstagedata
 */
package org.esupportail.pstage.domain;

import java.util.List;

import org.esupportail.pstagedata.domain.dto.FicheEvaluationDTO;
import org.esupportail.pstagedata.domain.dto.QuestionSupplementaireDTO;
import org.esupportail.pstagedata.domain.dto.ReponseEvaluationDTO;
import org.esupportail.pstagedata.domain.dto.ReponseSupplementaireDTO;
import org.esupportail.pstagedata.exceptions.DataAddException;
import org.esupportail.pstagedata.exceptions.DataDeleteException;
import org.esupportail.pstagedata.exceptions.DataUpdateException;
import org.esupportail.pstagedata.exceptions.WebServiceDataBaseException;
import org.esupportail.pstagedata.remote.RemoteServices;


/**
 * FicheEvaluation Domain service impl.
 */
/**
 * @author Florian Garot : florian.garot@univ-artois.fr
 *
 */
public class FicheEvaluationDomainServiceImpl implements FicheEvaluationDomainService {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * RemoteServices
	 */
	private RemoteServices remoteServices;

	/* ***************************************************************
	 * FICHE EVALUATION
	 ****************************************************************/
	/**
	 * @see org.esupportail.pstage.domain.FicheEvaluationDomainService#getFicheEvaluationFromIdCentre(int)
	 */
	public FicheEvaluationDTO getFicheEvaluationFromIdCentre(int idCentreGestion) {
		FicheEvaluationDTO fiche = this.remoteServices.getFicheEvaluationFromIdCentre(idCentreGestion);
		return fiche;
	}

	/**
	 * @see org.esupportail.pstage.domain.FicheEvaluationDomainService#addFicheEvaluation(org.esupportail.pstagedata.domain.dto.FicheEvaluationDTO)
	 */
	public int addFicheEvaluation(FicheEvaluationDTO f) throws DataAddException,WebServiceDataBaseException {
		return this.remoteServices.addFicheEvaluation(f);
	}
	/**
	 * @see org.esupportail.pstage.domain.FicheEvaluationDomainService#updateFicheEvaluationEtudiant(org.esupportail.pstagedata.domain.dto.FicheEvaluationDTO)
	 */
	public boolean updateFicheEvaluationEtudiant(FicheEvaluationDTO f) throws DataUpdateException,WebServiceDataBaseException{
		return this.remoteServices.updateFicheEvaluationEtudiant(f);
	}
	/**
	 * @see org.esupportail.pstage.domain.FicheEvaluationDomainService#updateFicheEvaluationEntreprise(org.esupportail.pstagedata.domain.dto.FicheEvaluationDTO)
	 */
	public boolean updateFicheEvaluationEntreprise(FicheEvaluationDTO f) throws DataUpdateException,WebServiceDataBaseException{
		return this.remoteServices.updateFicheEvaluationEntreprise(f);
	}
	/**
	 * @see org.esupportail.pstage.domain.FicheEvaluationDomainService#updateFicheEvaluationEnseignant(org.esupportail.pstagedata.domain.dto.FicheEvaluationDTO)
	 */
	public boolean updateFicheEvaluationEnseignant(FicheEvaluationDTO f) throws DataUpdateException,WebServiceDataBaseException{
		return this.remoteServices.updateFicheEvaluationEnseignant(f);
	}

	/**
	 * @see org.esupportail.pstage.domain.FicheEvaluationDomainService#deleteFicheEvaluation(int)
	 */
	public boolean deleteFicheEvaluation(int idFicheEvaluation) throws DataDeleteException,WebServiceDataBaseException{
		return this.remoteServices.deleteFicheEvaluation(idFicheEvaluation);
	}

	/* ***************************************************************
	 * REPONSE EVALUATION
	 ****************************************************************/
	/**
	 * @see org.esupportail.pstage.domain.FicheEvaluationDomainService#getReponseEvaluation(int, int)
	 */
	public ReponseEvaluationDTO getReponseEvaluation(int idFicheEvaluation, int idConvention) {
		return this.remoteServices.getReponseEvaluation(idFicheEvaluation, idConvention);
	}
	/**
	 * @see org.esupportail.pstage.domain.FicheEvaluationDomainService#getReponsesEvaluation(int)
	 */
	public List<ReponseEvaluationDTO> getReponsesEvaluation(int idFicheEvaluation) {
		return this.remoteServices.getReponsesEvaluation(idFicheEvaluation);
	}
	/**
	 * @see org.esupportail.pstage.domain.FicheEvaluationDomainService#addReponseEvaluation(org.esupportail.pstagedata.domain.dto.ReponseEvaluationDTO)
	 */
	public int addReponseEvaluation(ReponseEvaluationDTO f) throws DataAddException,WebServiceDataBaseException {
		return this.remoteServices.addReponseEvaluation(f);
	}
	/**
	 * @see org.esupportail.pstage.domain.FicheEvaluationDomainService#updateReponseEvaluationEtudiant(org.esupportail.pstagedata.domain.dto.ReponseEvaluationDTO)
	 */
	public boolean updateReponseEvaluationEtudiant(ReponseEvaluationDTO f) throws DataUpdateException,WebServiceDataBaseException{
		return this.remoteServices.updateReponseEvaluationEtudiant(f);
	}
	/**
	 * @see org.esupportail.pstage.domain.FicheEvaluationDomainService#updateReponseEvaluationEntreprise(org.esupportail.pstagedata.domain.dto.ReponseEvaluationDTO)
	 */
	public boolean updateReponseEvaluationEntreprise(ReponseEvaluationDTO f) throws DataUpdateException,WebServiceDataBaseException{
		return this.remoteServices.updateReponseEvaluationEntreprise(f);
	}
	/**
	 * @see org.esupportail.pstage.domain.FicheEvaluationDomainService#updateReponseEvaluationEnseignant(org.esupportail.pstagedata.domain.dto.ReponseEvaluationDTO)
	 */
	public boolean updateReponseEvaluationEnseignant(ReponseEvaluationDTO f) throws DataUpdateException,WebServiceDataBaseException{
		return this.remoteServices.updateReponseEvaluationEnseignant(f);
	}

	/**
	 * @see org.esupportail.pstage.domain.FicheEvaluationDomainService#deleteReponseEvaluation(int)
	 */
	public boolean deleteReponseEvaluation(int idFicheEvaluation, int idConvention) throws DataDeleteException,WebServiceDataBaseException{
		return this.remoteServices.deleteReponseEvaluation(idFicheEvaluation, idConvention);
	}

	public boolean setImpressionEtudiant(int idFicheEvaluation, int idConvention) throws DataUpdateException,
	WebServiceDataBaseException {
		return remoteServices.setImpressionEtudiant(idFicheEvaluation,idConvention);
	}
	public boolean setImpressionEnseignant(int idFicheEvaluation, int idConvention) throws DataUpdateException,
	WebServiceDataBaseException {
		return remoteServices.setImpressionEnseignant(idFicheEvaluation,idConvention);
	}
	public boolean setImpressionEntreprise(int idFicheEvaluation, int idConvention) throws DataUpdateException,
	WebServiceDataBaseException {
		return remoteServices.setImpressionEntreprise(idFicheEvaluation,idConvention);
	}

	public boolean setEnvoiMailEtudiant(int idConvention) throws DataUpdateException,
	WebServiceDataBaseException {
		return remoteServices.setEnvoiMailEtudiant(idConvention);
	}

	public boolean setEnvoiMailEnseignant(int idConvention) throws DataUpdateException,
	WebServiceDataBaseException {
		return remoteServices.setEnvoiMailEnseignant(idConvention);
	}

	public boolean setEnvoiMailEntreprise(int idConvention) throws DataUpdateException,
	WebServiceDataBaseException {
		return remoteServices.setEnvoiMailEntreprise(idConvention);
	}
	/* ***************************************************************
	 * Question Supplementaire
	 ****************************************************************/
	/**
	 * @see org.esupportail.pstage.domain.FicheEvaluationDomainService#getQuestionsSupplementaires(int)
	 */
	public List<QuestionSupplementaireDTO> getQuestionsSupplementaires(int idFicheEvaluation) {
		return this.remoteServices.getQuestionsSupplementaires(idFicheEvaluation);
	}
	/**
	 * @see org.esupportail.pstage.domain.FicheEvaluationDomainService#getQuestionsSupplementairesFromIdPlacement(int, int)
	 */
	public List<QuestionSupplementaireDTO> getQuestionsSupplementairesFromIdPlacement(int idFicheEvaluation, int idPlacement) {
		return this.remoteServices.getQuestionsSupplementairesFromIdPlacement(idFicheEvaluation, idPlacement);
	}
	/**
	 * @see org.esupportail.pstage.domain.FicheEvaluationDomainService#addQuestionSupplementaire(org.esupportail.pstagedata.domain.dto.QuestionSupplementaireDTO)
	 */
	public int addQuestionSupplementaire(QuestionSupplementaireDTO qs) throws DataAddException,WebServiceDataBaseException {
		return this.remoteServices.addQuestionSupplementaire(qs);
	}
	/**
	 * @see org.esupportail.pstage.domain.FicheEvaluationDomainService#updateQuestionSupplementaire(org.esupportail.pstagedata.domain.dto.QuestionSupplementaireDTO)
	 */
	public boolean updateQuestionSupplementaire(QuestionSupplementaireDTO qs) throws DataUpdateException,WebServiceDataBaseException{
		return this.remoteServices.updateQuestionSupplementaire(qs);
	}
	/**
	 * @see org.esupportail.pstage.domain.FicheEvaluationDomainService#deleteQuestionSupplementaire(int)
	 */
	public boolean deleteQuestionSupplementaire(int idQuestionSupplementaire) throws DataDeleteException,WebServiceDataBaseException {
		return this.remoteServices.deleteQuestionSupplementaire(idQuestionSupplementaire);
	}

	/* ***************************************************************
	 * Reponse Supplementaire
	 ****************************************************************/
	/**
	 * @see org.esupportail.pstage.domain.FicheEvaluationDomainService#getReponseSupplementaire(int)
	 */
	public ReponseSupplementaireDTO getReponseSupplementaire(int idQuestionSupplementaire, int idConvention) {
		return this.remoteServices.getReponseSupplementaire(idQuestionSupplementaire,idConvention);
	}
	/**
	 * @see org.esupportail.pstage.domain.FicheEvaluationDomainService#addReponseSupplementaire(org.esupportail.pstagedata.domain.dto.ReponseSupplementaireDTO)
	 */
	public int addReponseSupplementaire(ReponseSupplementaireDTO rs) throws DataAddException,WebServiceDataBaseException {
		return this.remoteServices.addReponseSupplementaire(rs);
	}
	/**
	 * @see org.esupportail.pstage.domain.FicheEvaluationDomainService#addReponseSupplementaire(java.util.List)
	 */
	public int addReponsesSupplementaires(List<ReponseSupplementaireDTO> lr) throws DataAddException,WebServiceDataBaseException {
		return this.remoteServices.addReponsesSupplementaires(lr);
	}
	/**
	 * @see org.esupportail.pstage.domain.FicheEvaluationDomainService#updateReponseSupplementaire(org.esupportail.pstagedata.domain.dto.ReponseSupplementaireDTO)
	 */
	public boolean updateReponseSupplementaire(ReponseSupplementaireDTO rs) throws DataUpdateException,WebServiceDataBaseException{
		return this.remoteServices.updateReponseSupplementaire(rs);
	}
	/**
	 * @see org.esupportail.pstage.domain.FicheEvaluationDomainService#updateReponsesSupplementaires(java.util.List)
	 */
	public boolean updateReponsesSupplementaires(List<ReponseSupplementaireDTO> lr) throws DataUpdateException,WebServiceDataBaseException{
		return this.remoteServices.updateReponsesSupplementaires(lr);
	}
	/**
	 * @see org.esupportail.pstage.domain.FicheEvaluationDomainService#deleteReponseSupplementaire(int, int)
	 */
	public boolean deleteReponseSupplementaire(int idQuestionSupplementaire, int idConvention) throws DataDeleteException,WebServiceDataBaseException {
		return this.remoteServices.deleteReponseSupplementaire(idQuestionSupplementaire,idConvention);
	}

	/**
	 * @return the RemoteServices
	 */
	public RemoteServices getRemoteServices() {
		return remoteServices;
	}

	/**
	 * @param remoteServices
	 */
	public void setRemoteServices(RemoteServices remoteServices) {
		this.remoteServices = remoteServices;
	}
}
