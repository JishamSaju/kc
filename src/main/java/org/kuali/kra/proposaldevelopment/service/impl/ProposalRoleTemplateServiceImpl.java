/*
 * Copyright 2008 The Kuali Foundation.
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
package org.kuali.kra.proposaldevelopment.service.impl;

import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

import org.apache.commons.lang.StringUtils;
import org.kuali.core.bo.user.UniversalUser;
import org.kuali.core.service.BusinessObjectService;
import org.kuali.core.util.GlobalVariables;
import org.kuali.kra.proposaldevelopment.bo.ProposalRoleTemplate;
import org.kuali.kra.proposaldevelopment.document.ProposalDevelopmentDocument;
import org.kuali.kra.proposaldevelopment.service.ProposalAuthorizationService;
import org.kuali.kra.proposaldevelopment.service.ProposalRoleTemplateService;
import org.kuali.kra.service.PersonService;

/**
 * The Proposal Role Template Service Implementation.
 */
public class ProposalRoleTemplateServiceImpl implements ProposalRoleTemplateService {

    private ProposalAuthorizationService proposalAuthorizationService;
    private BusinessObjectService businessObjectService;
    private PersonService personService;
    
    /**
     * Set the Proposal Authorization Service.  Injected by the Spring Framework.
     * @param proposalAuthorizationService the proposal authorization service
     */
    public void setProposalAuthorizationService(ProposalAuthorizationService proposalAuthorizationService) {
        this.proposalAuthorizationService = proposalAuthorizationService;
    }
    
    /**
     * Set the Business Object Service.  Injected by the Spring Framework.
     * @param businessObjectService the business object service
     */
    public void setBusinessObjectService(BusinessObjectService businessObjectService) {
        this.businessObjectService = businessObjectService;
    }
    
    /**
     * Set the Person Service.  Injected by the Spring Framework.
     * @param personService the person service
     */
    public void setPersonService(PersonService personService) {
        this.personService = personService;
    }
    
    /**
     * @see org.kuali.kra.proposaldevelopment.service.ProposalRoleTemplateService#addUsers(org.kuali.kra.proposaldevelopment.document.ProposalDevelopmentDocument)
     */
    public void addUsers(ProposalDevelopmentDocument doc) {
        String creatorUsername = getCreator(doc);
        
        Collection<ProposalRoleTemplate> proposalRoleTemplates = getRoleTemplates(doc.getOwnedByUnitNumber());
        for (ProposalRoleTemplate proposalRoleTemplate : proposalRoleTemplates) {
            String personId = proposalRoleTemplate.getPersonId();
            String username = personService.getPerson(personId).getUserName();
            if (username != null && !StringUtils.equals(username, creatorUsername)) {
                proposalAuthorizationService.addRole(username, proposalRoleTemplate.getRoleName(), doc);
            }
        }
    }
    
    /**
     * Gets the creator of the proposal.  Actually, I'm being sneaky.  The addUsers method is only
     * used when the proposal is being created.  Therefore, the current user corresponds to the
     * creator of the proposal.
     * @param doc the proposal development document
     * @return the creator's username
     */
    public String getCreator(ProposalDevelopmentDocument doc) {
        UniversalUser user = GlobalVariables.getUserSession().getUniversalUser();
        return user.getPersonUserIdentifier();
    }
    
    /**
     * Get the role templates for the proposal.  The retrieved role templates correspond
     * to the proposal's lead unit.
     * @param unitNumber the lead unit of the proposal
     * @return the collection of role templates
     */
    private Collection<ProposalRoleTemplate> getRoleTemplates(String unitNumber) {
        Map<String, Object> fieldValues = new HashMap<String, Object>();
        fieldValues.put("unitNumber", unitNumber);
        fieldValues.put("active", true);
        return businessObjectService.findMatching(ProposalRoleTemplate.class, fieldValues);
    }

}
