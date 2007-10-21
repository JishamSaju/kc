/*
 * Copyright 2007 The Kuali Foundation.
 *
 * Licensed under the Educational Community License, Version 1.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.opensource.org/licenses/ecl1.php
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package org.kuali.kra.proposaldevelopment.web.struts.action;


import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.StringUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.kuali.core.bo.PersistableBusinessObject;
import org.kuali.core.util.GlobalVariables;
import org.kuali.kra.bo.Rolodex;
import org.kuali.kra.infrastructure.Constants;
import org.kuali.kra.infrastructure.KraServiceLocator;
import org.kuali.kra.proposaldevelopment.bo.ProposalLocation;
import org.kuali.kra.proposaldevelopment.bo.PropScienceKeyword;
import org.kuali.kra.proposaldevelopment.bo.ScienceKeyword;
import org.kuali.kra.proposaldevelopment.document.ProposalDevelopmentDocument;
import org.kuali.kra.proposaldevelopment.web.struts.form.ProposalDevelopmentForm;
import org.kuali.kra.service.SponsorService;
import org.kuali.rice.KNSServiceLocator;

public class ProposalDevelopmentProposalAction extends ProposalDevelopmentAction {
    private static final Log LOG = LogFactory.getLog(ProposalDevelopmentProposalAction.class);

    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        /* get parameter for keyword display panel - display keyword panel if parameter is set to true */
        String keywordPanelDisplay = KNSServiceLocator.getKualiConfigurationService().getParameterValue(
                Constants.PARAMETER_MODULE_PROPOSAL_DEVELOPMENT, Constants.PARAMETER_COMPONENT_DOCUMENT, Constants.KEYWORD_PANEL_DISPLAY);
        request.setAttribute(Constants.KEYWORD_PANEL_DISPLAY, keywordPanelDisplay);

        ProposalDevelopmentDocument proposalDevelopmentDocument=((ProposalDevelopmentForm)form).getProposalDevelopmentDocument();
        if (proposalDevelopmentDocument.getOrganizationId()!=null && proposalDevelopmentDocument.getPropLocations().size()==0) {
            // populate 1st location.  Not sure yet
            ProposalLocation propLocation=new ProposalLocation();
            propLocation.setLocation(proposalDevelopmentDocument.getOrganization().getOrganizationName());
            proposalDevelopmentDocument.getPropLocations().add(propLocation);
        }

        // populate the Prime Sponsor Name if we have the code
        // this is necessary since the name is only on the form not the document
        // and it is only populated by a lookup or through AJAX/DWR
        String primeSponsorCode = proposalDevelopmentDocument.getPrimeSponsorCode();
        if (StringUtils.isNotEmpty(primeSponsorCode)) {
            String primeSponsorName = (KraServiceLocator.getService(SponsorService.class).getSponsorName(primeSponsorCode));
            if (StringUtils.isEmpty(primeSponsorName)) {
                primeSponsorName = "not found";
            }
            ((ProposalDevelopmentForm)form).setPrimeSponsorName(primeSponsorName);
        } else {
            // TODO: why do we have to do this?
            ((ProposalDevelopmentForm)form).setPrimeSponsorName(null);
        }

        return super.execute(mapping, form, request, response);
    }

    public ActionForward addLocation(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) throws Exception {
        ProposalDevelopmentForm proposalDevelopmentForm = (ProposalDevelopmentForm) form;
        proposalDevelopmentForm.getProposalDevelopmentDocument().getPropLocations().add(proposalDevelopmentForm.getNewPropLocation());
        proposalDevelopmentForm.setNewPropLocation(new ProposalLocation());
        return mapping.findForward("basic");
    }
    public ActionForward deleteLocation(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) throws Exception {
        // TODO : do we want to put logic to check whether this is the only one
        // or we'll let the business rule handle 'at least one location' rule?
        ProposalDevelopmentForm proposalDevelopmentForm = (ProposalDevelopmentForm) form;
        proposalDevelopmentForm.getProposalDevelopmentDocument().getPropLocations().remove(getLineToDelete(request));
        return mapping.findForward("basic");
    }
    public ActionForward clearAddress(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) throws Exception {
        ProposalDevelopmentForm proposalDevelopmentForm = (ProposalDevelopmentForm) form;
        int index= getSelectedLine(request);

        proposalDevelopmentForm.getProposalDevelopmentDocument().getPropLocations().get(index).setRolodexId(new Integer(0));
        proposalDevelopmentForm.getProposalDevelopmentDocument().getPropLocations().get(index).setRolodex(new Rolodex());

        return mapping.findForward("basic");
    }

    private boolean isDuplicateKeyword(String newScienceKeywordCode, List<PropScienceKeyword> keywords) {
        for(Iterator iter = keywords.iterator(); iter.hasNext(); ) {
            PropScienceKeyword propScienceKeyword = (PropScienceKeyword)iter.next();
            String scienceKeywordCode = propScienceKeyword.getScienceKeywordCode();
            if(scienceKeywordCode.equalsIgnoreCase(newScienceKeywordCode)) {
                // duplicate keyword
                return true;
            }
        }
        return false;
    }

    public ActionForward selectAllScienceKeyword(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) throws Exception {

        ProposalDevelopmentForm proposalDevelopmentForm = (ProposalDevelopmentForm)form;
        ProposalDevelopmentDocument proposalDevelopmentDocument = proposalDevelopmentForm.getProposalDevelopmentDocument();
        List<PropScienceKeyword> keywords = proposalDevelopmentDocument.getPropScienceKeywords();
        for(Iterator iter = keywords.iterator(); iter.hasNext(); ) {
            PropScienceKeyword propScienceKeyword = (PropScienceKeyword)iter.next();
            propScienceKeyword.setSelectKeyword(true);
        }

        return mapping.findForward("basic");
    }

    public ActionForward deleteSelectedScienceKeyword(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) throws Exception {

        ProposalDevelopmentForm proposalDevelopmentForm = (ProposalDevelopmentForm)form;
        ProposalDevelopmentDocument proposalDevelopmentDocument = proposalDevelopmentForm.getProposalDevelopmentDocument();
        List<PropScienceKeyword> keywords = proposalDevelopmentDocument.getPropScienceKeywords();
        List<PropScienceKeyword> newKeywords = new ArrayList();
        for(Iterator iter = keywords.iterator(); iter.hasNext(); ) {
            PropScienceKeyword propScienceKeyword = (PropScienceKeyword)iter.next();
            if(!propScienceKeyword.getSelectKeyword()) {
                newKeywords.add(propScienceKeyword);
            }
        }
        proposalDevelopmentDocument.setPropScienceKeywords(newKeywords);

        return mapping.findForward("basic");
    }

    @Override
    public ActionForward refresh(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) throws Exception {
        super.refresh(mapping, form, request, response);
        ProposalDevelopmentForm proposalDevelopmentForm = (ProposalDevelopmentForm) form;
        ProposalDevelopmentDocument proposalDevelopmentDocument = proposalDevelopmentForm.getProposalDevelopmentDocument();

        // check to see if we are coming back from a lookup
        if (Constants.MULTIPLE_VALUE.equals(proposalDevelopmentForm.getRefreshCaller())) {
            // Multivalue lookup. Note that the multivalue keyword lookup results are returned persisted to avoid using session.
            // Since URLs have a max length of 2000 chars, field conversions can not be done.
            String lookupResultsSequenceNumber = proposalDevelopmentForm.getLookupResultsSequenceNumber();
            if (StringUtils.isNotBlank(lookupResultsSequenceNumber)) {
                Class lookupResultsBOClass = Class.forName(proposalDevelopmentForm.getLookupResultsBOClassName());
                Collection<PersistableBusinessObject> rawValues = KNSServiceLocator.getLookupResultsService().retrieveSelectedResultBOs(lookupResultsSequenceNumber, lookupResultsBOClass, GlobalVariables.getUserSession().getUniversalUser().getPersonUniversalIdentifier());
                if(lookupResultsBOClass.isAssignableFrom(ScienceKeyword.class)) {
                    for(Iterator iter = rawValues.iterator(); iter.hasNext(); ) {
                        ScienceKeyword scienceKeyword = (ScienceKeyword) iter.next();
                        PropScienceKeyword propScienceKeyword = new PropScienceKeyword(proposalDevelopmentDocument.getProposalNumber(), scienceKeyword);
                        // ignore / drop duplicates
                        if(!isDuplicateKeyword(propScienceKeyword.getScienceKeywordCode(), proposalDevelopmentDocument.getPropScienceKeywords())) {
                            proposalDevelopmentDocument.addPropScienceKeyword(propScienceKeyword);
                        }
                    }
                }
            }
        }
        return mapping.findForward("basic");
    }

}

