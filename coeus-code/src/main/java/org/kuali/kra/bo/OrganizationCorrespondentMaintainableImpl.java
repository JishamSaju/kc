/*
 * Copyright 2005-2014 The Kuali Foundation
 * 
 * Licensed under the Educational Community License, Version 2.0 (the "License");
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
package org.kuali.kra.bo;

import org.apache.commons.lang3.StringUtils;
import org.kuali.coeus.common.framework.org.Organization;
import org.kuali.coeus.common.framework.person.KcPerson;
import org.kuali.coeus.common.framework.person.KcPersonService;
import org.kuali.coeus.sys.framework.service.KcServiceLocator;
import org.kuali.coeus.sys.framework.validation.ErrorReporter;
import org.kuali.kra.irb.correspondence.CorrespondentType;
import org.kuali.kra.maintenance.KraMaintainableImpl;
import org.kuali.rice.kim.api.KimConstants;
import org.kuali.rice.kns.document.MaintenanceDocument;
import org.kuali.rice.kns.maintenance.Maintainable;
import org.kuali.rice.krad.service.BusinessObjectService;

import java.util.HashMap;
import java.util.Map;

/**
 * This class...
 */
public class OrganizationCorrespondentMaintainableImpl extends KraMaintainableImpl implements Maintainable {

    /**
     * Comment for <code>serialVersionUID</code>
     */
    private static final long serialVersionUID = 7781035495216633332L;
    private static final String KIM_PERSON_LOOKUPABLE_REFRESH_CALLER = "kimPersonLookupable";
    private static final String ORGANIZATION_ID_INVALID_ERROR_KEY = "error.protocolLocation.organizationId.invalid";
    private static final String PRINCIPAL_ID_INVALID_ERROR_KEY = "error.invalid.unitAdministrator.principalId";
    private static final String CORRESPONDENT_TYPE_CODE_INVALID_ERROR_KEY = "error.invalid.organizationCorrespondent.correspondentType";
    
    /**
     * @see org.kuali.rice.kns.maintenance.Maintainable#refresh(String refreshCaller, Map fieldValues, MaintenanceDocument document)
     */
    @Override
    @SuppressWarnings("unchecked")
    public void refresh(String refreshCaller, Map fieldValues, MaintenanceDocument document) {
        super.refresh(refreshCaller, fieldValues, document);
        if (KIM_PERSON_LOOKUPABLE_REFRESH_CALLER.equals(refreshCaller)) {
            OrganizationCorrespondent organizationCorrespondent = (OrganizationCorrespondent) this.getBusinessObject();
            String principalId = (String) fieldValues.get(KimConstants.PrimaryKeyConstants.PRINCIPAL_ID);
            organizationCorrespondent.setPersonId(principalId);
        }
    }
    @Override
    public void prepareForSave() {
        OrganizationCorrespondent organizationCorrespondent = (OrganizationCorrespondent)this.businessObject;
        
        if(!isOrganizationIdValid( organizationCorrespondent.getOrganizationId() )){
            reportInvalidOrganizationId(organizationCorrespondent);
        }
        
        if(!isCorrespondentTypeCodeValid( organizationCorrespondent.getCorrespondentTypeCode() )){
            reportInvalidCorrespondentTypeCode(organizationCorrespondent);
        }
        
        if( !isValidPrincipalId( organizationCorrespondent.getPersonId() )) {
            reportInvalidPrincipalId( organizationCorrespondent );
        }
        
        super.prepareForSave();
    }
    
    private void reportInvalidOrganizationId(OrganizationCorrespondent organizationCorrespondent) {
        ErrorReporter errorReporter = new ErrorReporter();
        errorReporter.reportError("document.newMaintainableObject.organizationId", 
                        ORGANIZATION_ID_INVALID_ERROR_KEY,
                        new String[]{});
      
    }
    
    private void reportInvalidPrincipalId(OrganizationCorrespondent organizationCorrespondent) {
        ErrorReporter errorReporter = new ErrorReporter();
        errorReporter.reportError("document.newMaintainableObject.person.userName", 
                        PRINCIPAL_ID_INVALID_ERROR_KEY,
                        new String[]{});
      
    }

    
    private void reportInvalidCorrespondentTypeCode(OrganizationCorrespondent organizationCorrespondent) {
        ErrorReporter errorReporter = new ErrorReporter();
        errorReporter.reportError("document.newMaintainableObject.correspondentTypeCode", 
                        CORRESPONDENT_TYPE_CODE_INVALID_ERROR_KEY,
                        new String[]{});
      
    }

    private boolean isValidPrincipalId(String principalId) {
        boolean valid = true;
        KcPersonService personService = KcServiceLocator.getService(KcPersonService.class);
        if ( StringUtils.isEmpty(principalId) ) {
            valid = false;
        } else {
            KcPerson person = personService.getKcPersonByPersonId(principalId);
            if( person == null )  valid=false;
        }
        
        return valid;
    }

    
    private boolean isOrganizationIdValid(String organizationId) {
        BusinessObjectService businessObjectService = KcServiceLocator.getService(BusinessObjectService.class);
        Map<String, String> validParams = new HashMap<String, String>();
        validParams.put("organizationId", organizationId);
        return !businessObjectService.findMatching(Organization.class, validParams).isEmpty();
    }

    private boolean isCorrespondentTypeCodeValid(Integer correspondentTypeCode) {
        BusinessObjectService businessObjectService = KcServiceLocator.getService(BusinessObjectService.class);
        Map<String, String> validParams = new HashMap<String, String>();
        validParams.put("correspondentTypeCode", correspondentTypeCode.toString());
        return !businessObjectService.findMatching(CorrespondentType.class, validParams).isEmpty();
    }

  
    
}
