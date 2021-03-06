package org.esupportail.pstage.web.servlet;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.esupportail.pstage.web.beans.StatisticCriteria;
import org.esupportail.pstagedata.domain.dto.StatisticItemDTO;



/** edition des infos des etablissements d'accueil sous format de fichier au format excel
 * @author houdet-joly
 *
 */
public class EditStatisticsXls {

	public EditStatisticsXls(){
		super();
	}
	Logger logger = Logger.getLogger(EditStatisticsXls.class);


	public ByteArrayOutputStream writeStatisticsXls (String statType, String critere1, String critere2, Map<String, List<StatisticItemDTO>> map)
			throws  IOException {
		HSSFWorkbook classeur = new HSSFWorkbook();
		HSSFSheet sheet= classeur.createSheet("statistiques");

		StatisticCriteria criteria = new StatisticCriteria();

		if(logger.isDebugEnabled()){
			logger.debug("EditStatisticsXls :map ="+map );
		}

		//insertion des titres de colonnes sur la 1ere ligne 
		HSSFRow row;
		row= sheet.createRow(1);

		if ("stage".equals(statType)){

			row.createCell(0).setCellValue("Ann\u00E9e universitaire");
			row.createCell(1).setCellValue(criteria.getFirstLevelStatCriteriumLibForConvention(critere1));
			row.createCell(2).setCellValue(criteria.getSecondLevelStatCriteriumLibForConvention(critere2));
			row.createCell(3).setCellValue("Nombre de stages");


			int total=0;
			//					insertion des donnees a partir de la ligne 3
			int j =2;
			Iterator<String> iter = map.keySet().iterator();
			while (iter.hasNext())
			{
				String annee = (String)iter.next();
				List<StatisticItemDTO> listeItem = map.get(annee);
				if(logger.isDebugEnabled()){
					logger.debug("EditStatisticsXls :listeItem ="+listeItem );
				}


				for (StatisticItemDTO unItem : listeItem){
					if(logger.isDebugEnabled()){
						logger.debug("EditStatisticsXls :unItem ="+unItem);
					}
					row= sheet.createRow(j);
					row.createCell(0).setCellValue(annee);
					//row.createCell(1).setCellValue(unItem.getIdPriorCriteria());
					row.createCell(1).setCellValue(unItem.getLibPriorCriteria());
					row.createCell(2).setCellValue(unItem.getLib());
					row.createCell(3).setCellValue(unItem.getNumber());

					j++;
					total=total+unItem.getNumber();
				}


			}
			row= sheet.createRow(j);
			row.createCell(2).setCellValue("total");
			row.createCell(3).setCellValue(total);




		}//fin statType=stage
		else{
			if ("offre".equals(statType)){
				row.createCell(0).setCellValue("Ann\u00E9e universitaire");						
				row.createCell(1).setCellValue(criteria.getFirstLevelStatCriteriaForOffer().get(critere1));
				row.createCell(2).setCellValue(criteria.getSecondLevelStatCriteriaForOffer().get(critere2));
				row.createCell(3).setCellValue("Nombre d'offres");



				int total=0;
				//insertion des donnees a partir de la ligne 3
				int j =2;
				Iterator<String> iter = map.keySet().iterator();
				while (iter.hasNext())
				{
					String annee = (String)iter.next();
					List<StatisticItemDTO> listeItem = map.get(annee);



					for (StatisticItemDTO unItem : listeItem){
						row= sheet.createRow(j);
						row.createCell(0).setCellValue(annee);
						row.createCell(1).setCellValue(unItem.getLibPriorCriteria());
						row.createCell(2).setCellValue(unItem.getLib());
						row.createCell(3).setCellValue(unItem.getNumber());

						j++;
						total=total+unItem.getNumber();
					}


				}//fin while
					row= sheet.createRow(j);
				row.createCell(2).setCellValue("total");
				row.createCell(3).setCellValue(total);


			}//finstatType=offer
		}//fin statType != stage


		if(logger.isDebugEnabled()){
			logger.debug("EditstatXls :statWb="+classeur );
		}	
		ByteArrayOutputStream baosXLS = new ByteArrayOutputStream();
		// on relie le classeur Excel au flux de donnees a envoyer a la servlet
		classeur.write(baosXLS);
		return baosXLS;
	}
}

